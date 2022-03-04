CREATE DATABASE my_db;
USE my_db;

CREATE TABLE post_management_posts (
id bigint auto_increment not null,
title varchar(35),
body varchar(900),
PRIMARY KEY(id)
);

CREATE TABLE post_management_commentaries (
id bigint auto_increment not null,
email varchar(40),
body varchar(200),
PRIMARY KEY(id)
);

CREATE TABLE post_management_posts_commentaries (
post_id bigint not null,
commentary_id bigint not null,
FOREIGN KEY(post_id) REFERENCES post_management_posts(id),
FOREIGN KEY(commentary_id) REFERENCES post_management_commentaries(id),
PRIMARY KEY(post_id, commentary_id)
);

INSERT INTO post_management_posts (id, title, body)
VALUES 
(1,'Java','Строго типизированный объектно-ориентированный язык программирования общего назначения, разработанный компанией Sun Microsystems. Разработка ведётся сообществом, организованным через Java Community Process; язык и основные реализующие его технологии распространяются по лицензии GPL. Права на торговую марку принадлежат корпорации Oracle.' ),
(2,'JavaScript', 'Мультипарадигменный язык программирования. Поддерживает объектно-ориентированный, императивный и функциональный стили. Является реализацией спецификации ECMAScript.'),
(3,'HTML', 'Стандартизированный язык разметки документов для просмотра веб-страниц в браузере. Веб-браузеры получают HTML документ от сервера по протоколам HTTP/HTTPS или открывают с локального диска, далее интерпретируют код в интерфейс, который будет отображаться на экране монитора.'),
(4,'CSS', 'Формальный язык описания внешнего вида документа, написанного с использованием языка разметки. Также может применяться к любым XML-документам, например, к SVG или XUL.'),
(5,'SQL', 'Декларативный язык программирования, применяемый для создания, модификации и управления данными в реляционной базе данных, управляемой соответствующей системой управления базами данных.'),
(6,'Ruby', 'Динамический, рефлективный, интерпретируемый высокоуровневый язык программирования. Язык обладает независимой от операционной системы реализацией многопоточности, сильной динамической типизацией, сборщиком мусора и многими другими возможностями. По особенностям синтаксиса он близок к языкам Perl и Eiffel, по объектно-ориентированному подходу - к Smalltalk. Также некоторые черты языка взяты из Python, Lisp, Dylan и Клу.'),
(7,'Pascal', 'Один из наиболее известных языков программирования, используется для обучения программированию в старших классах и на первых курсах вузов, является основой для ряда других языков.'),
(8,'C++', 'Широко используется для разработки программного обеспечения, являясь одним из самых популярных языков программирования. Область его применения включает создание операционных систем, разнообразных прикладных программ, драйверов устройств, приложений для встраиваемых систем, высокопроизводительных серверов, а также игр. '),
(9,'C', 'компилируемый статически типизированный язык программирования общего назначения, разработанный в 1969—1973 годах сотрудником Bell Labs Деннисом Ритчи как развитие языка Би. Первоначально был разработан для реализации операционной системы UNIX, но впоследствии был перенесён на множество других платформ. Согласно дизайну языка, его конструкции близко сопоставляются типичным машинным инструкциям, благодаря чему он нашёл применение в проектах, для которых был свойственен язык ассемблера, в том числе как в операционных системах, так и в различном прикладном программном обеспечении для множества устройств — от суперкомпьютеров до встраиваемых систем.'),
(10,'PHP', 'Скриптовый язык общего назначения, интенсивно применяемый для разработки веб-приложений. В настоящее время поддерживается подавляющим большинством хостинг-провайдеров и является одним из лидеров среди языков, применяющихся для создания динамических веб-сайтов.'),
(11,'Ассемблер', 'Машинно-ориентированный язык программирования низкого уровня. Представляет собой систему обозначений, используемую для представления в удобно читаемой форме программ, записанных в машинном коде. Его команды прямо соответствуют отдельным командам машины или их последовательностям.'),
(12,'Kotlin', 'Статически типизированный, объектно-ориентированный язык программирования, работающий поверх Java Virtual Machine и разрабатываемый компанией JetBrains. Также компилируется в JavaScript и в исполняемый код ряда платформ через инфраструктуру LLVM. Язык назван в честь острова Котлин в Финском заливе, на котором расположен город Кронштадт.'),
(13,'Rust', 'Мультипарадигмальный компилируемый язык программирования общего назначения, сочетает парадигмы функционального и процедурного программирования с объектной системой, основанной на типажах. Управление памятью осуществляется через механизм «владения» с использованием аффинных типов, что позволяет обходиться без системы сборки мусора во время исполнения программы. Rust гарантирует безопасную работу с памятью благодаря встроенной в компилятор системе статической валидации ссылок. Имеются средства, позволяющие использовать приёмы объектно-ориентированного программирования.'),
(14,'TypeScript', 'Язык программирования, представленный Microsoft в 2012 году и позиционируемый как средство разработки веб-приложений, расширяющее возможности JavaScript. Разработчиком языка TypeScript является Андерс Хейлсберг, создавший ранее Turbo Pascal, Delphi и C#.'),
(15,'Scala', 'Мультипарадигмальный язык программирования, спроектированный кратким и типобезопасным для простого и быстрого создания компонентного программного обеспечения, сочетающий возможности функционального и объектно-ориентированного программирования.'),
(16,'R', 'Язык программирования для статистической обработки данных и работы с графикой, а также свободная программная среда вычислений с открытым исходным кодом в рамках проекта GNU. Язык создавался как аналогичный языку S, разработанному в Bell Labs, и является его альтернативной реализацией, хотя между языками есть существенные отличия, но в большинстве своём код на языке S работает в среде R. Изначально R был разработан сотрудниками статистического факультета Оклендского университета Россом Айхэкой и Робертом Джентлменом; язык и среда поддерживаются и развиваются организацией R Foundation.'),
(17,'D', 'Мультипарадигмальный статически типизированный компилируемый язык программирования, созданный Уолтером Брайтом из компании Digital Mars. Начиная с 2006 года соавтором также является Андрей Александреску. D является потомком языка C++, но существенно доработан по сравнению с ним. Также он заимствует ряд концепций из языков программирования Python, Ruby, C#, Java, Eiffel.'),
(18,'Go', 'Компилируемый многопоточный язык программирования, разработанный внутри компании Google. Разработка Go началась в сентябре 2007 года, его непосредственным проектированием занимались Роберт Гризмер, Роб Пайк и Кен Томпсон, занимавшиеся до этого проектом разработки операционной системы Inferno. Официально язык был представлен в ноябре 2009 года. На данный момент поддержка официального компилятора, разрабатываемого создателями языка, осуществляется для операционных систем FreeBSD, OpenBSD, Linux, macOS, Windows, DragonFly BSD, Plan 9, Solaris, Android, AIX.. Также Go поддерживается набором компиляторов gcc, существует несколько независимых реализаций. Ведётся разработка второй версии языка.'),
(19,'C Sharp', 'Объектно-ориентированный язык программирования. Разработан в 1998-2001 годах группой инженеров компании Microsoft под руководством Андерса Хейлсберга и Скотта Вильтаумота как язык разработки приложений для платформы Microsoft .NET Framework. Впоследствии был стандартизирован как ECMA-334 и ISO/IEC 23270.'),
(20,'Visual Basic', 'Язык программирования, а также интегрированная среда разработки программного обеспечения, разрабатываемые корпорацией Microsoft. Язык Visual Basic унаследовал дух, стиль и отчасти синтаксис своего предка - языка BASIC, у которого есть немало диалектов. В то же время Visual Basic сочетает в себе процедуры и элементы объектно-ориентированных и компонентно-ориентированных языков программирования. Интегрированная среда разработки VB включает инструменты для визуального проектирования пользовательского интерфейса, редактор кода с возможностью IntelliSense и подсветкой синтаксиса, а также инструменты для отладки приложений.'),
(21,'Delphy', 'Императивный, структурированный, объектно-ориентированный, высокоуровневый язык программирования со строгой статической типизацией переменных. Основная область использования - написание прикладного программного обеспечения.'),
(22,'Lua', 'Скриптовый язык программирования, разработанный в подразделении Tecgraf Католического университета Рио-де-Жанейро. Интерпретатор языка является свободно распространяемым, с открытыми исходными текстами на языке Си.'),
(23,'Бейсик', 'Семейство высокоуровневых языков программирования. Был разработан в 1964 году профессорами Дартмутского колледжа Томасом Курцем и Джоном Кемени.'),
(24,'Euphoria', 'Интерпретируемый императивный язык высокого уровня общего назначения. C помощью транслятора из исходного кода на Euphoria может быть сгенерирован исходный код на языке Си, который в свою очередь может быть скомпилирован в исполнияемый файл или динамическую библиотеку при помощи таких компиляторов, как GCC, OpenWatcom и др. Программа Euphoria также может быть «связана»[8] с интерпретатором для получения самостоятельного исполняемого файла. Поддерживается несколько GUI-библиотек, включая Win32lib[9] и оберток для wxWidgets[10], GTK+[11] и IUP[12]. Euphoria имеет встроенную простую систему баз данных[13] и обертки для работы с другими типам баз данных[14].'),
(25,'Object Pascal', 'Язык программирования, разработанный в фирме Apple Computer в 1986 году группой Ларри Теслера, который консультировался с Никлаусом Виртом. Произошёл от более ранней объектно-ориентированной версии Паскаль, называвшейся Clascal, который был доступен на компьютере Apple Lisa.');

INSERT INTO post_management_commentaries (id, email, body)
VALUES
(1, 'delluiza@yandex.ru', 'Хороший пост'),
(2, 'Konfetka13-94@mail.ru', 'Хороший пост'),
(3, 'alpotehinj@gmail.com', 'Хороший пост'),
(4, 'cezarikc@mail.ru', 'Хороший пост'),
(5, 'maus19890503@mail.ru', 'Хороший пост'),
(6, 'vovik97_nsk@mail.ru', 'Хороший пост'),
(7, 'ofisov.arenda@list.ru', 'Хороший пост'),
(8, 'labaratoriya.seo@mail.ru', 'Хороший пост'),
(9, 'l.o.r.o.m.ax.@youtube.bxox.info', 'Хороший пост'),
(10, 'remont-parket@bk.ru', 'Хороший пост'),
(11, 'optimizatsiya.seo@mail.ru', 'Хороший пост'),
(12, 'perevozki.kitay@mail.ru', 'Хороший пост'),
(13, 'biznes.ofisy@mail.ru', 'Хороший пост'),
(14, 'bukhgalter.help@mail.ru', 'Хороший пост'),
(15, 'saytov.podderzhka@mail.ru', 'Хороший пост'),
(16, 'seooptimiz017@mail.ru', 'Хороший пост'),
(17, 'seooptimiz019@mail.ru', 'Хороший пост'),
(18, 'matveyandrosyuk@mail.ru', 'Хороший пост'),
(19, 'dima1777@mail.ru', 'Хороший пост'),
(20, 'vikared@mail.ru', 'Хороший пост'),
(21, 'nekoglai@mail.ru', 'Хороший пост'),
(22, 'oxxxymiron@mail.ru', 'Хороший пост'),
(23, 'slavakpss@mail.ru', 'Хороший пост'),
(24, 'skryptonit@mail.ru', 'Хороший пост'),
(25, 'face@mail.ru', 'Хороший пост');

INSERT INTO post_management_posts_commentaries (post_id, commentary_id)
VALUES (1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25);