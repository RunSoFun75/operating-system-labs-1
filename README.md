## answer without entering a new line
Напишите программу, которая печатает вопрос и требует односимвольного ответа.Измените атрибуты вашего терминала так, чтобы пользователю не нужно было вводить новую строку после ответа.
## buzzer
Напишите программу, которая входит в бесконечный цикл и издает звуковой сигнал на вашем терминале каждый раз, когда вы вводите символ, на который у вас настроена посылка сигнала **SIGINT** (по умолчанию **CTRL-C**). При получении **SIGQUIT**, она должна вывести сообщение, говорящее, сколько раз прозвучал сигнал, и завершиться.
## command completion code
Напишите программу, которая запускает команду, заданную в качестве первого аргумента, в виде порожденного процесса. Все остальные аргументы программы передаются этой команде. Затем программа должна дождаться завершения порожденного процесса и распечатать его код завершения.
## counting empty lines in a file
Напишите программу, которая подсчитывает пустые строки в файле, используя команду **wc(1)**.
## creating two processes
Напишите программу, которая создает подпроцесс. Этот подпроцесс должен исполнить **cat(1)** длинного файла. Родитель должен вызвать **printf(3)** и распечатать какой-либо текст. После выполнения первой части задания модифицируйте программу так, чтобы последняя строка, распечатанная родителем, выводилась после завершения порожденного процесса. Используйте **wait(2)**, **waitid(2)** или **waitpid(3)**.
## directory listing
Напишите программу - аналог команды **ls -ld**. Для каждого своего аргумента эта команда должна распечатывать:

+ Биты состояния файла в воспринимаемой человеком формы:

    - **d** если файл является каталогом
    - **-** если файл является обычным файлом
    - **?** во всех остальных случаях
+ Три группы символов, соответствующие правам доступа для хозяина, группы и всех остальных:

    - **r** если файл доступен для чтения, иначе **√**
    - **w** если файл доступен для записи, иначе **√**
    - **x** если файл доступен для исполнения, иначе **-**

+ Количество связей файла

    - Имена собственника и группы файла(совет - используйте **getpwuid** и **getgrgid**).
    - Если файл является обычным файлом, его размер. Иначе оставьте это поле пустым.
    - Дату модификации файла(используйте **ctime**).
    - Имя файла(Если было задано имя с путем, нужно распечатать только имя).

Желательно, чтобы поля имели постоянную ширину, т.е чтобы листинг имел вид таблицы.
## function execvpe()
Напишите функцию **execvpe()**, которая работает как **execvp(2)**, но позволяет изменять среду исполнения, как **execve(2)**.
## pipe communication with using standart library functions
Используйте стандартные библиотечные функции **popen(3)** и **pclose(3)** для выполнения тех же операций, что и в предыдущем упражнении.
## pipe communication 
Напишите программу, которая создает два подпроцесса, взаимодействующих через программный канал. Первый процесс выдает в канал текст, состоящий из символов верхнего и нижнего регистров. Второй процесс переводит все символы в верхний регистр, и выводит полученный текст на терминал. Подсказка: см. **toupper(3)**.
## random number generator 
Напишите программу, которая генерирует сортированный список из ста случайных чисел в диапазоне от 0 до 99. Распечатайте числа по десять в строке. Используйте **p2open(3)**, чтобы запустить **sort(1)** и **rand(3)** и **srand(3)** для генерации случайных чисел.
## search table for strings in a text file.
Написать программу, которая анализирует текстовый файл, созданный текстовым редактором, таким как **ed(1)** или **vi(1)**. После запроса, который предлагает ввести номер строки, с использованием **printf(3)** программа печатает соответствующую строку текста. Ввод нулевого номера завершает работу программы. Используйте **open(2)**, **read(2)**, **lseek(2)** и **close(2)** для ввода/вывода.

Измените программу так, чтобы пользователю отводилось 5 секунд на ввод номера строки. Если пользователь не успевает, программа должна распечатать все содержимое файла и завершиться. Если же пользователь успел в течение пяти секунд ввести номер строки, то программа должна работать как в предыдущей задаче.
## Unix domain socket communication
Напишите две программы, взаимодействующих через Unix domain socket. Первый процесс (сервер) создает сокет и слушает на нем.  При присоединении клиента, сервер получает через соединение текст, состоящий из символов верхнего и нижнего регистров, переводит его в верхний регистр и выводит в свой стандартный поток вывода, аналогично задаче **pipe communication**. Второй процесс (клиент) устанавливает соединение с сервером и передает ему текст.  После разрыва соединения клиентом, оба процесса завершаются.
