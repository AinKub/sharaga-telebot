create table lecturer (
  id integer primary key,
  name text,
  e_mail text
);

create table subject (
  id integer primary key,
  name text,
  lecturer_id integer,
  foreign key(lecturer_id) references lecturer(id)
);

create table day (
  id integer primary key,
  my_date date not null unique,
  l_s text,
  cab text,
  lecturer_id integer,
  subject_id integer,
  foreign key(lecturer_id) references lecturer(id),
  foreign key(subject_id) references subject(id)
);

create table users (
  id integer primary key,
  user_id text unique
);

create table month (
  id integer primary key,
  my_date date not null unique,
  user integer,
  foreign key(user) references users(id)
);

create table user_phrases (
  id integer primary key,
  phrase text
);

create table phrases (
  id integer primary key,
  key_phrase text,
  phrase text
);

insert into lecturer (name, e_mail) values 
  ('Миловзоров Д.Е.', 'milovzorovde@stud.rosnou.ru'),
  ('Кокорина Е.А.', 'kokorinaea@stud.rosnou.ru'),
  ('Лихачева Э.В.', 'lihachevaev@stud.rosnou.ru'),
  ('Толмачев А.И.', 'tolmachevai@stud.rosnou.ru'),
  ('Батманова О.В.', 'batmanovaolv@stud.rosnou.ru'),
  ('Былова Н.В.', 'bilovanv@stud.rosnou.ru');

insert into subject (name, lecturer_id) values 
  ('Физика', 1),
  ('Иностранный язык', 2),
  ('Жизненная навигация', 3),
  ('Вероятность и статистика', 4),
  ('Информационные технологии', 5),
  ('Управление информ ресурсами и проектами', 6),
  ('Архитектура информационных систем', 6);

insert into day (my_date, l_s, cab, lecturer_id, subject_id) values
  ('2023-02-16', 'ВЛ', 'ОНЛАЙН', 3, 3),
  ('2023-02-20', 'ПЗ', '', 1, 1),
  ('2023-02-21', 'ПЗ', '', 1, 1),
  ('2023-02-27', 'ПЗ', '', 2, 2),
  ('2023-02-28', 'С', '', 4, 4),
  ('2023-03-01', 'ПЗ', '', 5, 5),
  ('2023-03-02', 'ПЗ', '', 6, 6),
  ('2023-03-03', 'С', '', 6, 7),
  ('2023-03-06', 'ПЗ', '', 2, 2),
  ('2023-03-10', 'Л', '', 6, 7),
  ('2023-03-13', 'Л', '', 1, 1),
  ('2023-03-14', 'С', '', 4, 4),
  ('2023-03-15', 'Л', '', 5, 5),
  ('2023-03-16', 'С', '', 3, 3),
  ('2023-03-17', 'Л', '', 6, 6),
  ('2023-03-20', 'ПЗ', '', 1, 1),
  ('2023-03-21', 'Л', '', 1, 1),
  ('2023-03-22', 'ПЗ', '', 2, 2),
  ('2023-03-23', 'Л', '', 6, 6),
  ('2023-03-24', 'Л', '', 6, 7);

insert into users (user_id) values
  ('447558263'),
  ('589766009'),
  ('400238356'),
  ('1099752474'),
  ('1750929046'),
  ('1352913657'),
  ('369759835'),
  ('1736745783'),
  ('1385454868');

insert into month (my_date, user) values
  ('2023-02-14', 5),
  ('2023-02-15', 5),
  ('2023-02-16', 7);

insert into user_phrases (phrase) values 
  ("Woop-woop! That's the sound of da pidor-police!;Выезжаю на место..."),
  ("Тысяча чертей!;Кто бы мог подумать, но"),
  ("Выберем счастливчика"),
  ("### RUNNING 'TYРIDOR.SH'..."),
  ("Зачем вы меня разбудили...;Выезжаю на место...;Не может быть!"),
  ("Опять в эти ваши игрульки играете?;Ну ладно..."),
  ("Так, так;Что у нас по пидорам?"),
  ("Булулулулулуллу"),
  ("Рубрика, которая нам всем сейчас так нужна"),
  ("Сканирую...;КЕК"),
  ("FUCKING SLAVE"),
  ("300 bucks;и");

insert into phrases (key_phrase, phrase) values 
  ("РОССИЯ", "РА СИ Я!"),
  ("Russia", "РА СИ Я!"),
  ("Россия", "РА СИ Я!"),
  ("РА СИ Я", "РА СИ Я!"),
  ("мгу", "МГУ СОСАТБ!"),
  ("МГУ", "МГУ СОСАТБ!"),
  ("МГУ СОСАТЬ", "МГУ СОСАТБ!"),
  ("мгу сосать", "МГУ СОСАТБ!"),
  ("нужен гол", "НУЖНО ДВА;НУЖЕН КУБОК УЕФА!"),
  ("8", "800;555;3535;лучше позвонить, чем у кого-то занимать"),
  ("что делать", "Муравью хуй приделать"),
  ("опоздаю", "Если никуда не ходить, то и не опоздаешь"),
  ("кто где", "Всегда мысленно с тобой"),
  ("расия", "Россия пишется с большой буквы;неуч..."),
  ("россия", "Россия пишется с большой буквы;неуч..."),
  ("бот, ты жив?", "Живее всех живых"),
  ("бот ты жив?", "Живее всех живых"),
  ("пинг", "понг"),
  ("динг", "донг"),
  ("и чо", "хуй в оче"),
  ("и че", "хуй в оче"),
  ("а как", "Гугл украли?"),
  ("обижаешь", "Хорошего человека и обидеть приятно"),
  ("заело", "Гав-гав"),
  ("рецепт", "CAACAgIAAxkBAAIEb2PsnAk73h_fWcMDBRhNaMyONVIyAAIPJgACLLcgS3pH8IACDH8-LgQ"),
  ("сижу", "CAACAgIAAxkBAAIEWGPsjBKjYVTBvcuYLuwG_lRuSgJpAAJQKwACrhkQSzfd4v8zMHNjLgQ"),
  ("хач", "CAACAgIAAxkBAAIEbGPsmjrvbsLhpNSBlmOhVj97d03YAAJRKgACNSYhSwdD9VCnilA3LgQ"),
  ("чурка", "CAACAgIAAxkBAAIEbGPsmjrvbsLhpNSBlmOhVj97d03YAAJRKgACNSYhSwdD9VCnilA3LgQ");
