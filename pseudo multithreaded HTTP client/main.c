#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>
#include <stdlib.h>

#define MAX_STRING 25

typedef struct {
    char *host_name;
    int port;
    char *path;
} infoUrl;

infoUrl *parseURL(char *url) {
    infoUrl *info;
    if ((info = (infoUrl *) malloc(sizeof(infoUrl))) == NULL) {
        perror("malloc returns NULL");
        exit(1);
    }
    int start, end, port_exist = 0;

    info->port = 80;
    info->path = NULL;

    if (strstr(url, "http://")) {
        start = 7;
    } else {
        if (strstr(url, "https://")) {
            start = 8;
        } else {
            free(info);
            return NULL;
        }
    }

    end = start;

    for (; end < strlen(url) && url[end] != '/'; ++end) {
        if (url[end] == ':') {
            port_exist = 1;
            break;
        }
    }

    if ((info->host_name = (char *) malloc(sizeof(char) * (end - start) + 1)) == NULL) {
        perror("malloc return NULL");
        exit(1);
    }

    strncpy(info->host_name, url + start, end - start);

    if (port_exist) {
        int port = 0;
        end += 1;
        for (; url[end] >= '0' && url[end] <= '9' && end < strlen(url); ++end) {
            port = port * 10 + url[end] - '0';
        }
        info->port = port;
    }

    start = end;

    if (start != strlen(url)) {
        if ((info->path = (char *) malloc(sizeof(char) * (strlen(url) - start) + 1)) == NULL) {
            perror("malloc returns NULL");
            exit(1);
        }
        strncpy(info->path, url + start, strlen(url) - start);
    }

    printf("Host: %s\n", info->host_name);
    printf("Port: %d\n", info->port);
    if (info->path != NULL) {
        printf("Path: %s\n\n\n\n", info->path);
    }
    else  {
        printf("There isn't path\n\n\n\n");
    }
    return info;
}

char *makeHeaders(infoUrl *info) {
    char *head;
    int size = strlen(info->host_name) +
            strlen("Accept: */*\r\n") +
            strlen("User-Agent: curl/7.58.0\r\n") +
            strlen("GET  HTTP/1.0\r\nHost: ") + 5;

    if (info->path != NULL) {
        size += strlen(info->path);
    } else {
        size += 1;
    }

    if ((head = (char*) malloc(sizeof(char) * size)) == NULL) {
        perror("malloc returns NULL");
        exit(1);
    }
    memset(head, 0, size);

    strcat(head, "GET ");

    if (info->path != NULL) {
        strcat(head, info->path);
    } else {
        strcat(head, "/");
    }

    strcat(head,  " HTTP/1.0\r\nHost: ");
    strcat(strcat(head, info->host_name), "\r\n");
    strcat(head, "Accept: */*\r\n");
    strcat(head, "User-Agent: curl/7.58.0\r\n\r\n");

    printf("%s\n\n\n", head);

    return head;
}

void cleanUp(struct addrinfo *hints, struct addrinfo *res) {
    free(hints);
    freeaddrinfo(res);
}

void client(char *url) {
    struct addrinfo *hints, *res;
    char str_port[11];

    infoUrl *info = parseURL(url);
    if(info == NULL){
        perror("bad url");
        return;
    }

    hints = calloc(1, sizeof(struct addrinfo));
    hints->ai_family = AF_UNSPEC;
    hints->ai_socktype = SOCK_STREAM;

    snprintf(str_port, 11, "%d", info->port);

    if (getaddrinfo(info->host_name, str_port, hints, &res)) {
        perror("getaddrinfo");
        free(hints);
        return;
    }

    int socket_fd;
    if ((socket_fd = socket(res->ai_family, res->ai_socktype, res->ai_protocol)) == -1) {
        perror("socket");
        close(socket_fd);
        cleanUp(hints, res);
        return;
    }

    if (connect(socket_fd, res->ai_addr, res->ai_addrlen)) {
        perror("connect");
        close(socket_fd);
        cleanUp(hints, res);
        return;
    }

    char *headers;
    headers = makeHeaders(info);

    send(socket_fd, headers, strlen(headers), 0);

    cleanUp(hints, res);

    int count_string = 0, end = 0, top = 0, down = 0;
    char buf[BUFSIZ];
    while (1) {
        fd_set reads, writes;
        FD_ZERO(&reads);
        FD_ZERO(&writes);

        if (count_string >= MAX_STRING) {
            FD_SET(0, &reads);
        }

        if (top != BUFSIZ && !end) {
            FD_SET(socket_fd, &reads);
        }

        int result = select(socket_fd + 1, &reads, &writes, NULL, NULL);

        if (result < 0) {
            perror("select");
            close(socket_fd);
            return;
        }

        if (result > 0) {
            if (top != BUFSIZ && FD_ISSET(socket_fd, &reads)) {
                result = recv(socket_fd, buf + top, BUFSIZ - top, 0);

                if (result == 0) {
                    end = 1;
                }

                if (result == -1) {
                    perror("recv");
                    close(socket_fd);
                    return; 
                }

                top += result;
            }

            if (FD_ISSET(0, &reads) && count_string >= MAX_STRING) {
                char tmp[64];
                read(0, tmp, 64);
                count_string = 0;
            }
        }

        if (count_string < MAX_STRING && top != down) {
            int tmp = 0;
            for (; count_string < MAX_STRING && down + tmp < top; ++tmp) {
                if (buf[down + tmp] == '\n') {
                    count_string++;
                }
            }

            write(1, buf + down, tmp);

            if (count_string == MAX_STRING) {
                write(1, "Press Enter to continue", 23);
            }

            down += tmp;
        }

        if (top == down) {
            top = (down = 0);

            if (end) {
                break;
            }
        }
    }
    close(socket_fd);
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("too few arguments");
        return 0;
    }
    client(argv[1]);
    return 0;
}
