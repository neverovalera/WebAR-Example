## Етапи компіляції С-програм та автоматизація побудови С-програм

2. Налаштування Git-репозиторію та GitHub-репозиторію

Рис. 0 - Фрагмент екрану з рішення завдання 2. "Налаштування Git-репозиторію та GitHub-репозиторію"

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/aee40853-09fe-477f-ba8d-6a6d7e0fa523)
![Знімок екрана 2024-05-28 190955 (2)](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/fd2cc744-8e70-4369-a8d7-4fcc329b7b37)

**2.1 Побудова програми з’єднання з СКБД PostgreSQL на основі монолітної С-програми**

Рис. 1 - Фрагмент екрану з рішення завдання 2.1.1 "Встановити в ОС Linux програмний пакунок libpq-dev."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/30d627ad-dcd2-43a7-ad30-34c9bd21f9a9)

Рис. 2 - Фрагмент екрану з рішення завдання 2.1.2 "Підключитись до ОС від імені користувача postgres, який є адміністратором СКБД PostgreSQL та для якого не буде вимагатися пароль під час підключення до БД.

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/f8441252-48b3-4bde-8f73-db77273e2c58)

Рис. 3 - Фрагмент екрану з рішення завдання 2.1.3 "Створити C-програму з назвою «db_connect.c», яка:
- встановлює з`єднання із СКБД PostgreSQL;
- під час з’єднання використовує назву БД з попередньої лабораторної роботи та ім’я користувача postgres СКБД PostgreSQL, які вбудовані у програмний код;
- обробляє результат з’єднання (успішне та помилкове), виводячи на екран відповідні повідомлення, які враховують назву БД;
- увесь програмний код розміщується лише у функції main."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/48b774a3-7900-4145-af5b-7af9bf3672d0)
![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/28018d56-20e2-44c2-ad80-234d54e05765)

Рис. 4 - Фрагмент екрану з рішення завдання 2.1.4 "Скомпілювати С-програму, враховуючи каталоги з header-файлами та бібліотеками СКБД PostgreSQL. Перевірити роботу executable-файла."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/634b660a-3be9-4e33-9cd5-4ab77867649f)

Рис. 5 - Фрагмент екрану з рішення завдання 2.1.5 "Створити C-програму з назвою «db_connect_param.c», яка повторює всі дії C-програми з назвою «db_connect.c», але назву бази даних та ім’я користувача програма повинна брати як параметри командного рядку."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/a6b34e6e-63f9-44ce-9821-8050f6c0b5a1)

Рис. 6 - Фрагмент екрану з рішення завдання 2.1.6 "Скомпілювати С-програму, враховуючи каталоги з header-файлами та бібліотеками СКБД PostgreSQL. Перевірити роботу executable-файла за двома варіантами назви БД: правильна назва БД та будь-яка неправильна назва БД."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/f50f680a-2ddd-44d5-a71b-5740191610f4)

**2.2 Побудова програми з’єднання з СКБД PostgreSQL за модульним принципом програмування**

Рис. 7 - Фрагмент екрану з рішення завдання 2.2.1 "Змінити код С-програми, враховуючи модульний принцип програмування:
- створити С-файл з назвою «connect_назва таблиці.c», який містить програмний код з’єднання із СКБД PostgreSQL у вигляді функції з назвою «connect_назва таблиці», де «назва таблиці» - назва реляційної таблиці з попередньої лабораторної работи;

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/ad04b5de-e7d6-44db-baa5-64be5a0f2264)

- створити header-файл за шаблоном «назва таблиці.h» та додати до файлу декларацію створеної функції;

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/7cb8e075-b433-45bb-914d-9c001e4d901e)

- створити С-файл з назвою «назва таблиці.c», який містить main-функцію з викликом функції з назвою «connect_назва таблиці»."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/5771c2de-e7e1-46cb-bf21-ee11aac7ff7f)

Рис. 8 - Фрагмент екрану з рішення завдання 2.2.2 "Побудувати executable-файл через кроки:
- створити object-файл з назвою «connect_назва таблиці.o» для «connect_назва таблиці.c», враховуючи каталоги з header-файлами, бібліотеками СКБД PostgreSQL
- створити object-файл з назвою «назва таблиці.o» для файлу «назва таблиці.c», враховуючи каталоги з header-файлами, бібліотеками СКБД PostgreSQL
-  створити executable-файл з назвою «назва таблиці», враховуючи каталоги з header-файлами, бібліотеками СКБД PostgreSQL, а також створені object-файли з назвою «connect_назва таблиці.o» та «назва таблиці.o». Перевірити роботу executable-файла."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/7a3a011b-1b9a-4012-9825-a1d97e52e482)

**2.3 Побудова програми з’єднання з СКБД PostgreSQL через команду make**

Рис. 9 - Фрагмент екрану з рішення завдання 2.3.1 "Створити Makefile, який містить наступний опис мети:
- мета створення object-файлу з назвою «connect_назва таблиці.o»;
- мета створення object-файлу з назвою «назва таблиці.o»;
- мета створення executable-файлу з назвою «назва таблиці»."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/0e5690b6-bd44-4be2-8d5e-9d88c729f232)

Рис. 10 - Фрагмент екрану з рішення завдання 2.3.2 "Викнати команду make для побудови програми."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/2652e096-c472-4d63-81d2-d1720a36e44b)

**2.4 Побудова програми додавання рядку реляційної таблиці**

Рис. 11 - Фрагмент екрану з рішення завдання 2.4.1 "Створити файл як програмний модуль з назвою «add_назва таблиці.с» із описом функції додавання рядку реляційної таблиці, яка повинна містити:
- команди транзакції (START TRANSACTION, LOCK TABLE назва таблиці ..., INSERT INTO назва таблиці ..., COMMIT);
- повідомлення про результат виконання кожної команди. Команду INSERT INTO створити за прикладом з попередньої лабораторної роботи."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/dc956a0c-4c13-4ec0-a7dd-434cc6b77952)

Рис. 12 - Фрагмент екрану з рішення завдання 2.4.2 "Оновити раніше створені файли:
- додати до файлу «назва таблиці.h» декларацію нової функції;

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/5676137c-9c3a-4403-82b5-dc99a44120b7)

- виконати виклик нової функції із main-фукції файлу «назва таблиці.c»

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/15adfc66-f962-4743-babb-e38291a3d6d6)

- додати опис нової мети у файл Makefile"

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/54d869d0-fede-42e2-af2b-d166fb5a807a)
![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/62a8d760-bc6e-43e9-876b-3f447c8ca2af)

Рис. 13 - Фрагмент екрану з рішення завдання 2.4.3 "Скомпілювати С-файли програмних модулів командою make."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/2c0a1079-6d42-4b07-84bd-d27316a959e6)

**2.5 Побудова програми перегляду рядків реляційної таблиці**

Рис. 14 - Фрагмент екрану з рішення завдання 2.5.1 "Створити файл як програмний модуль з назвою «get_назва таблиці».с із описом функції перегляду рядків реляційної таблиці, яка повинна містити:
- команди транзакції (START TRANSACTION, LOCK TABLE назва таблиці ..., SELECT ... FROM назва таблиці ..., COMMIT);
- повідомлення про результат виконання кожної команди. Команду SELECT ... FROM створити за прикладом з попередньої лабораторної роботи."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/1551c493-111f-40d0-8159-684ec8ed6f00)

Рис. 15 - Фрагмент екрану з рішення завдання 2.5.2 "Оновити раніше створені файли:
- додати до файлу «назва таблиці».h декларацію нової функції;

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/9e21cdca-f804-46ec-a7d7-fae11b61bbc6)

- виконати виклик нової функції із main-фукції файлу «назва таблиці».c

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/3b9eb206-0b7b-40d4-9667-40e9f8d0073a)

- додати опис нової мети у файл Makefile"

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/e8e5d975-c392-4d27-8831-f8073231d5de)

Рис. 16 - Фрагмент екрану з рішення завдання 2.5.3 "Скомпілювати С-файли програмних модулів командою make. Перевірити роботу executable-файла."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/cdeec50a-5f25-4283-a8da-35069d6efcf9)
![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/989dedc7-ee5e-45df-90bd-9c72bc6669ab)


**2.6 Додаткове налаштування процесу керування файлами через команду make**

Рис. 17 - Фрагмент екрану з рішення завдання 2.6.1 "Додати до файлу Makefile наступні описи мети: install – копіювання executable-файлу до каталогу bin домашнього каталогу користувача postgres, наприклад, /var/lib/postgresql/bin/ (попередньо створити такий каталог); clean – видалення всіх object-файлів та executable-файлу."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/213e6464-3575-4e0d-aa94-bf8430c77b23)

Рис. 18 - Фрагмент екрану з рішення завдання 2.6.2 "Виконати команду make з метою clean. Перевірити відсутність всіх object-файлів та executable-файлу."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/c187f6f1-5a0a-4780-9472-db4657e12cd6)

Рис. 19 - Фрагмент екрану з рішення завдання 2.6.3 "Скомпілювати С-файли програмних модулів командою make."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/3f49af17-1271-4658-b6ee-bda9745917ee)
![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/7649672a-68f6-41c5-86a0-4578777bf795)

Рис. 20 - Фрагмент екрану з рішення завдання 2.6.4 "Виконати команду make з метою install. Перевірити наявність executable-файлу у відповідному каталозі."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/2a62fb65-6b2e-41da-b292-c2c983749b9e)

Рис. 21 - Фрагмент екрану з рішення завдання 2.6.5 "Повторно скомпілювати С-файли програмних модулів командою make. Надати висновки щодо повідомлення команди."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/17aad9e3-57e7-44e5-8bb3-2565b6c76f5d)

Висновок: Це повідомлення показує, що усі об'єктні файли успішно скомпільовані, а виконуючий файл "file_type" був успішно створений.

**2.7 Огляд етапів побудови С-програми GNU-компілятором GCC**

Рис. 22 - Фрагмент екрану з рішення завдання 2.7.1 "Припустимо, що є файл «назва таблиці.c», створений у розділі 2.2.1. Виконати наступні завдання. Виконати prepocessing-етап для вказаного файлу, зберігши результат у файлі «назва таблиці.i»."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/8c4ab393-dc34-4cff-8e3c-b6ea05af2fa0)

Рис. 23 - Фрагмент екрану з рішення завдання 2.7.2 "Виконати compilation-етап для файлу «назва таблиці.i», зберігши результат у файлі «назва таблиці.s»."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/43a367a0-1f1e-4bba-bea2-6a07d106052e)

Рис. 24 - Фрагмент екрану з рішення завдання 2.7.3 "Повторити compilation-етап для файлу «назва таблиці.i» з оптимізацію програмного коду, зберігши результат у файлі «назва таблиці_opt.s», та визначити відсоток зменшення кількості рядків після оптимізації."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/3d891f54-b843-432d-9a17-4fe331cc4204)

Рис. 25 - Фрагмент екрану з рішення завдання 2.7.4 "Виконати assembly-етап для файлу «назва таблиці.i» та зберегти результат у object-файлі «назва таблиці.o»."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/bdb78236-a8d6-4595-a843-93b8005644c5)

Рис. 26 - Фрагмент екрану з рішення завдання 2.7.5 "Виконати linking-етап для файлу «назва таблиці.o» та зберегти результат у executable-файлі «назва таблиці»."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/50586122-abfe-4328-a6d0-6531d6b3c14f)


Рис. 27 - Фрагмент екрану з рішення завдання 2.7.6 "Переглянути список файлів динамічних бібліотек, пов’язаних зі створеним executable-файлом."

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/f56e30d2-9b27-4c50-8335-f1a091147126)

**2.8 Підготовка процесу Code Review для надання рішень завдань лабораторної роботи на перевірку викладачем**

Рис. 28 - Фрагмент екрану з рішення завдання 2.8.2 "Скопіювати C-файли та Makefile, які було створено у попередніх розділах завдань у домашньому каталозі користувача postgres, в каталог «Laboratory-work-12» Git- репозиторію. Для копіювання можна використати команду scp для попереднього копіювання файлів до домашнього каталогу користувача, наприклад blazhko, в якому розміщено репозиторій (приклад наведено на рисунку ), наприклад, таку команду: scp *.c Makefile blazhko@localhost:~"

![image](https://github.com/neverovalera/WebAR-Optical-telegraph/assets/162915351/70993e9c-7f23-45e8-89a7-1135e2aed7a2)

