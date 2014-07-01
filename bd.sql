-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.38-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных Articles
CREATE DATABASE IF NOT EXISTS `articles` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Articles`;


-- Дамп структуры для таблица Articles.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` mediumtext NOT NULL,
  `picts` varchar(500) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы Articles.articles: ~10 rows (приблизительно)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `url`, `title`, `text`, `picts`) VALUES
	(34, 'http://www.vesti.ru/fifaworldcup/news.html?id=6781&amp;cid=138', 'Сборная Алжира разобралась с корейцами', '\n\nВ Порту-Аллегри играли соперники россиян \nпо группе Н сборные Южной Кореи и Алжира. \nСборная Алжира победила с результатом 4:2. \n\nФаворитами в этой встрече считались \nкорейцы, однако вскоре после начала матча \nна поле стали доминировать алжирцы. \nКоманда из Северной Африки заперла \nсборную Южной Кореи на её половине поля. \nАлжирцы играли с удовольствием, - \nразыгрывали изящные атаки, комбинировали \nи угрожали ворота. В одном из эпизодов \nколумбийский судья Вильян Рондан не \nрешился назначить пенальти за снос \nплеймейкера алжирской сборной Софьяна \nФегули. \n\nГде-то начиная с 15-й минуты алжирские \nфутболисты взяли паузу, позволив \nсоперникам выровнять игру. Передохнув, \nкоманда Алжира снова взялась за дело. \nОчень активен был нападающий Ислам \nСлимани. Не случайно, именно он и открыл \nсчёт. На 26-й минуте Слимани продавил центр \nкорейской обороны и перебросил вратаря \nЧжун Сун Рёна. \n\nПрошла минута, и уже рикошет спас корейцев \nот второго гола после удара Яссина Браими. \nНо это была лишь отсрочка. Подача \nуглового, и высокий защитник Рафик Аллиш с \nлинии вратарской головой отправил мяч в \nсетку. Но двух голов алжирцам оказалось \nмало, они забили и третий. На 37-й минуте \nСлимани получил мяч из глубины поля, после \nчего сделал передачу свободному \nАбдульмумину Джабу, который и забил \nтретий гол. \n\nВторой тайм начался с атак южнокорейской \nсборной, и на 50-й минуте Сон Хюн Мин с \nблизкого расстояния отправил мяч в ворота \n– 1:3. Тут же Сон едва не оформил дубль. \nВратарь Раис Мболи уже не мог спасти \nалжирцев, но его выручил Аисса Манди. А \nзатем сборная Алжира провела голевую \nатаку, точку в которой поставил Ясин \nБраими. \n\nНа какое-то время игра успокоилась. А потом \nснова последовала вспышка активности со \nстороны корейцев. Их атака увенчалась \nуспехом. Ку Чжа Чхоль коленом переправил \nмяч в ворота Мболи. А затем вратарь спас \nсевероафриканцев после удара Сан Хюн \nМина. \n\nВ оставшееся время счёт не изменился. \nСборная Алжира победила 4:2 и вышла на \nвторое место. Сборная России перед \nзаключительным туром занимает третье \nместо, опережая благодаря разнице мячей \nкоманду Южной Кореи 1:2 против 3:5. Таким \nобразом, для того, чтоб занять второе \nместо и выйти из группы россиянам нужно \nобыгрывать сборную Алжира. \n\n  \n\n', ''),
	(35, 'http://lenta.ru/news/2014/06/16/oboronservis2', 'Дело Васильевой передали в Пресненский суд Москвы', '\n\nУголовное дело в отношении бывшего \nруководителя Департамента имущественных \nотношений Минобороны Евгении Васильевой \nнаправят в Пресненский районный суд, \nсообщает 16 июня пресс-служба Главной \nвоенной прокуратуры (ГВП). \n\nГВП утвердила обвинение по уголовному \nделу в отношении бывших руководителя \nДепартамента имущественных отношений \nМинобороны России Евгении Васильевой, \nгенеральных директоров акционерных \nобществ «Управление торговли Московского \nвоенного округа» Максима Закутайло, \n«Оборонстрой» и «Главное управление \nобустройства войск» Ларисы Егориной, \nбывшего генерального директора ООО \n«Компания &quot;Хорс&quot;» и ООО «Роникс Плюс» \nИрины Егоровой. Их обвиняют в продаже по \nзаниженной цене дорогостоящих объектов \nнедвижимости акционерных обществ и \nсубхолдингов, подчиненных военному \nведомству. \n\nПосле того как копии обвинительного \nзаключения будут вручены обвиняемым, дело \nнаправят в Пресненский районный суд \nМосквы. \n\nВ то же время официальный представитель \nСледственного комитета РФ Владимир \nМаркин сообщил ИТАР-ТАСС, что в рамках \nрасследования уголовного дела в \nотношении Васильевой арестовано ее \nимущество на сумму более 450 млн рублей в \nсчет погашения возможных исков. В \nчастности, обнаружены и изъяты коллекция \nкартин, 3,5 миллиона рублей наличными, а \nтакже более тысячи ювелирных изделий из \nдрагоценных камней и металлов, наручные \nчасы известных мировых торговых марок \nобщей стоимостью более 127 миллионов \nрублей. \n\n«При этом наложен арест на недвижимое \nимущество, ювелирные украшения и \nантиквариат, принадлежащие фигурантам \nуголовного дела. Так, только у Васильевой \nарестованы шесть объектов недвижимого \nимущества, расположенные в городах Москве \nи Санкт-Петербурге, банковский счет на \nсумму 25 миллионов рублей, счета \nподконтрольных ей коммерческих \nорганизаций на сумму более 300 миллионов \nрублей», — сообщил представитель СК. \n\nПо версии следствия, Васильева, используя \nсвое служебное положение, выбирала \nнаиболее ликвидные объекты недвижимости, \nакции и другое имущество, принадлежащие \nОАО «Оборонсервис», после чего \nорганизовывала их продажу по заведомо \nзаниженной цене. Как полагает следствие, \nпохищенными активами Васильева лично \nраспоряжалась через подконтрольные ей \nфирмы и получала деньги от доверенных лиц, \nотвечавших за легализацию незаконных \nдоходов. \n\nУщерб от действий Васильевой оценен в три \nмиллиарда рублей. Все действия с \nнедвижимостью осуществлялись в составе \nорганизованной группы, участниками \nкоторой являлись Ирина Егорова, Лариса \nЕгорина, Юрий Грехнев, Максим Закутайло, \nДинара Билялова и Екатерина Сметанова. \n\n', ''),
	(36, 'http://www.gazeta.ru/brazil2014/news/2014/06/19/n_6243441.shtml', 'Виктор Гусев будет комментировать финал ЧМ-2014', '\n\nКомментатор Первого канала Виктор Гусев \nсказал, что будет комментировать \nфинальный матч чемпионата мира — 2014. \n\n«Я буду комментировать финал. Это будет \nмой четвертый финал, первый был в 1994 году в \nПасадине (Калифорния), Бразилия — Италия, \nкогда Баджо в серии пенальти пробил выше \nворот. \n\nНемыслимая вещь, тогда каналы показывали \nглавные матчи по тайму — первый был на \nвтором канале, его комментировали \nГеннадий Орлов и Олег Жолобов. Отработав, \nони сказали: «Дорогие друзья, теперь \nпереключайтесь на Первый», — передает \nслова Гусева «Советский спорт». \n\nФинал чемпионата мира состоится 13 июля в \n23.00 мск. \n\nДругие новости, материалы и статистику \nможно посмотреть на странице чемпионата \nмира — 2014. \n\n', ''),
	(37, 'http://www.gazeta.ru/social/news/2014/06/23/n_6252257.shtml', 'Сноуден подаст документы на продление срока пребывания в России', '\n\nБывший сотрудник ЦРУ Эдвард Сноуден \nпланирует подать документы на продление \nсрока пребывания на территории России, \nсообщает «Интерфакс» со ссылкой на \nадвоката Анатолия Кучерену. \n\n«В настоящее время в соответствии с \nдействующим законодательством России \nидет сбор необходимых документов, которые \nбудут поданы в ФМС России, для продления \nпребывания на территории России», — \nзаявил Кучерена. \n\nАдвокат затруднился ответить на вопрос, \nзаявление будет подано о предоставлении \nубежища или вида на жительство. По его \nсловам, окончательное решение примет сам \nСноуден. \n\nСрок временного убежища Эдварда Сноудена \nистекает 1 августа. Ранее экс-сотрудник \nЦРУ заявлял о том, что надеется на \nпродление срока временного пребывания в \nРоссии. \n\n', ''),
	(38, 'http://www.gazeta.ru/culture/news/2014/06/23/n_6252281.shtml', 'В России готовят ответ «Игре престолов» и «Властелину колец»', '\n\nРоссийская компания «Дирекция кино» \nготовит свой ответ на зарубежные фильмы \nпро Средневековье — исторический фильм \n«Викинг». \n\nКак передает ИТАР-ТАСС, эта лента была \nпредставлена в понедельник на очной \nзащите проектов кинокомпаний-лидеров, \nпретендующих на финансовую поддержку \nФедерального фонда социальной и \nэкономической поддержки отечественной \nкинематографии. \n\nПо словам продюсера фильма Анатолия \nМаксимова, действие будет \nразворачиваться в раннем Средневековье. \n«Такие фильмы, как «Игра престолов», \n«Властелин колец», поддерживают интерес к \nэтому времени во всем мире», — рассказал \nон. \n\nПо убеждению Максимова, эта лента позволит \nнырнуть в глубины российского прошлого и \nпреодолеть стереотип о том, что Россия \nначиналась с империи в XVIII веке, «а до \nэтого были только былины». \n\n«Мы хотели снять интересную картину, \nживую, практически документальную, мы \nбазируемся на «Повести временных лет», — \nуточнил продюсер. \n\nОн также уточнил, что работа над фильмом \nдлится несколько лет, уже завершен \nкастинг, выбраны все места съемок, сшита \nбольшая часть костюмов. Ожидается, что \nглавные роли в фильме исполнят Максим \nСуханов и Данила Козловский. \n\nОбщая стоимость проекта достигает 1 млрд 225 \nмлн руб. Ранее создатели «Викинга» уже \nполучили от Фонда кино 232 млн руб., сейчас \nони просят еще 190 млн руб. Над лентой \n«Дирекция кино» работает совместно с \nПервым каналом. \n\n', ''),
	(39, 'http://www.gazeta.ru/lifestyle/style/2014/06/a_6078749.shtml', 'И почему алкоголь, танцы и ночь без родителей — главные атрибуты выпускного бала во всем мире ', '\n\n«Газета.Ru» выяснила, как школьники \nпразднуют выпускной в самых разных \nстранах мира перед тем, как бесповоротно \nстать взрослыми. \n\nВыпускной – прекрасный день, после \nкоторого человеку больше никогда в жизни \nне нужно будет ходить в школу. Но перед \nэтим обязательно нужно красиво одеться, \nвыслушать невыносимую приветственную \nречь женщины из управы про «Дорогие наши \nвыпускники!», потом сфотографироваться с \nучителями, половину из которых ненавидел, \nа вторую половину странным образом любил \nи даже, как теперь понимаешь, будешь по ним \nскучать. \n\nПотом чаепитие, которое вовсе и не \nчаепитие, учитывая, что по всех школах \nспрятан заранее купленный втайне от \nродителей алкоголь. Потом танцы – к этому \nмоменту родители как раз удаляются, и \nнужно не забыть отдать им диплом, а то \nпотеряешь. Потом прогулки по городу, \nвстреча рассвета, слезы счастья и, \nнаконец, взрослая жизнь, о которой так \nмечталось все эти годы. Вот, собственно, \nкраткий пересказ стандартного выпускного \nвечера по-русски. И у всех нас есть очень \nнежные воспоминания о собственном \nвыпускном, причем примерно одинаковые. \n«Газета.Ru» узнала, как отмечают выпускные \nв других странах мира, и поняла, что люди \nвезде одинаковые и, где бы вы ни жили, \nглавные атрибуты выпускного – алкоголь, \nтанцы и ночь без родителей. \n\nВеликобритания \n\nКакой-то глубокой древней традиции \nвыпускных балов в этой стране нет. До 2000-х \nв большинстве школ празднование \nограничивалось торжественной \nофициальной частью с вручением диплома и \nчаем с учителями и родителями. Иногда \nустраивались дискотеки. Дальше школьники \nразвлекали себя сами, без родителей и в \nузких компаниях – целыми классами никто \nне праздновал. Правда, в последние 15 лет, \nнасмотревшись американских фильмов, \nшкольники все чаще требуют от школ \nнастоящего выпускного бала — и школы все \nчаще соглашаются его устроить. \n\nЛиван \n\nЧем шикарнее, тем лучше. Семья пойдет на \nлюбые финансовые жертвы, чтобы наряд \nвыпускника и машина, на которой его \nпривезут на вечеринку, были максимально \nроскошными. Фактически это первая ночь, \nкоторую подростку разрешается провести \nвне дома и без присмотра. \n\nЮАР \n\nНи родители, ни учителя на выпускной не \nприходят вообще, чтобы не мешать детям \nразвлекаться. Еще одна интересная \nособенность – выпускники (12-й класс) сами \nсебе ничего не устраивают: это \nобязанность учеников 11-го класса. И \nникаких ночных прогулок не предусмотрено. \nВсе проходит как обычная подростковая \nвечеринка – к 11 все уже дома. \n\nНепал \n\nВыпускной для детей организуют учителя с \nпомощью родительского комитета. Все \nпроходит очень чинно. Главное событие \nвечера – вручение наград за отличную \nучебу и несколько поощрительных призов \nсамым шустрым школьникам. Танцы не \nпредусмотрены, но дорогие частные школы, \nкак правило, устраивают и небольшие \nвечеринки после официальной части. \n\nАфганистан \n\nВсе большие мероприятия — свадьбы, дни \nрождения и выпускные – в Афганистане \nпринято отмечать в специально \nарендованных залах. Школьники все \nорганизуют сами, приглашают учителей, \nродителей и других близких родственников \nи никуда от них весь вечер не отходят. \nОдежду тоже принято брать напрокат: \nпокупают выпускные наряды только очень \nобеспеченные семьи. \n\nИзраиль \n\nКроме официальной части и большой ночной \nвечеринки (свежая традиция, американское \nвлияние) обязательной частью праздника \nявляется спектакль, которые выпускники \nставят для родителей и учителей. \n\nДания \n\nВ этой странной стране выпускной проводят \nдо экзаменов, а не после, как у всех \nнормальных людей. В основном для того, \nчтобы на празднике не было расстроенных \nлиц, а были одни взволнованные. \n\nГонконг \n\nТак как большинство приличных школ здесь с \nраздельным обучением, выпускные балы по \nтрадиции проводят объединенные. Школа для \nмальчиков приглашает к себе в гости \nближайшую школу для девочек такого же \nобразовательного и социального уровня. \nМальчики берут организацию праздника на \nсебя. Девочек сопровождают учителя и \nродители, но чем ближе к ночи, тем меньше \nостается и родителей, и учителей. \n\nФинляндия \n\nГлавная традиция – одеваться в старинную \nили хотя бы «взрослую» одежду, чтобы \nвыглядеть максимально старыми. \n\nСША \n\nЭта страна, собственно, школьный бал в его \nсовременном обличье и придумала, а точнее, \nтрансформировала в него традиционный бал \nдебютантов – первое социальное \nмероприятие, в котором разрешалось \nучаствовать тинейджерам (основная цель – \nпоказать девушку на выданье). Возможно, \nименно поэтому до сих пор главный принцип \nамериканского выпускного такой: на него \nне ходят (как минимум стараются не ходить) \nв одиночку. Это равносильно социальному \nсамоубийству, и пойти на такое могут \nтолько самые непопулярные школьники \n(которые просто не смогли найти себе пару) \nили самые большие нонконформисты (из \nкоторых потом вырастают деятели \nкаких-нибудь современных искусств). \n\nМолодой человек заезжает за девушкой на \nсвоей или отцовской машине (в США \nводительские права получают в 16 лет). Еще \nодин современный вариант – арендовать \nбольшой компанией лимузин с водителем и \nявиться в школу с шиком. Потом танцы, \nподпольно купленная выпивка — детям до 21 \nгода официально алкоголь не продадут, но \nтрезвые выпускные бывают только у \nвыпускников школ с религиозным уклоном, и \nто, как говорят, не всегда. А затем \nначинается самое интересное: ботаны идут \nдомой, а крутые компании отправляются в \nзагородный дом одного из школьников и \nпроводят там ночь без присмотра взрослых. \nЧасто между балом и загородным домом \nвнедряется организованный родителями \nужин в ресторане. Семья американского \nшкольника в среднем тратит $2000 на \nподготовку к этому празднику со слезами \nна глазах. \n\n', ''),
	(40, 'http://ria.ru/world/20140623/1013217494.html', 'Царев назвал условия переговоров по урегулированию ситуации на Украине', '\n\nФакт регистрации пользователя в сервисе \nРИА Клуб на сайтах РИА Новости и \nавторизации на сайтах группы компаний \n«РИА Новости» при помощи аккаунта или \nаккаунтов пользователя в социальных \nсетях обозначает согласие с данными \nправилами. \n\nПользователь обязуется своими действиями \nне нарушать действующее законодательство \nРоссийской Федерации. \n\nПользователь обязуется высказываться \nуважительно по отношению к другим \nучастникам дискуссии, читателям и лицам, \nфигурирующим в материалах. \n\nПубликуются комментарии только на тех \nязыках, на которых представлено основное \nсодержание материала, под которым \nпользователь размещает комментарий. \n\nНа сайтах группы компаний «РИА Новости» \nможет осуществляться редактирование \nкомментариев, в том числе и \nпредварительное. Это означает, что \nмодератор проверяет соответствие \nкомментариев данным правилам после того, \nкак комментарий был опубликован автором и \nстал доступен другим пользователям, а \nтакже до того, как комментарий стал \nдоступен другим пользователям. \n\nКомментарий пользователя будет удален, \nесли он: \n\nне соответствует тематике страницы; \n\nпропагандирует ненависть, дискриминацию \nпо расовому, этническому, половому, \nрелигиозному, социальному признакам, \nущемляет права меньшинств; \n\nнарушает права несовершеннолетних, \nпричиняет им вред в любой форме; \n\nсодержит идеи экстремистского и \nтеррористического характера, призывает к \nнасильственному изменению \nконституционного строя Российской \nФедерации; \n\nсодержит оскорбления, угрозы в адрес \nдругих пользователей, конкретных лиц или \nорганизаций, порочит честь и достоинство \nили подрывает их деловую репутацию; \n\nсодержит оскорбления или сообщения, \nвыражающие неуважение в адрес РИА Новости \nили его сотрудников; \n\nнарушает неприкосновенность частной \nжизни, распространяет персональные \nданные третьих лиц без их согласия, \nраскрывает тайну переписки; \n\nсодержит ссылки на сцены насилия, \nжестокого обращения с животными; \n\nсодержит информацию о способах суицида, \nподстрекает к самоубийству; \n\nпреследует коммерческие цели, содержит \nненадлежащую рекламу, незаконную \nполитическую рекламу или ссылки на другие \nсетевые ресурсы, содержащие такую \nинформацию; \n\nимеет непристойное содержание, содержит \nнецензурную лексику и её производные, а \nтакже намёки на употребление лексических \nединиц, подпадающих под это определение; \n\nсодержит спам, рекламирует \nраспространение спама, сервисы массовой \nрассылки сообщений и ресурсы для \nзаработка в интернете; \n\nрекламирует употребление \nнаркотических/психотропных препаратов, \nсодержит информацию об их изготовлении и \nупотреблении; \n\nсодержит ссылки на вирусы и вредоносное \nпрограммное обеспечение; \n\nявляется частью акции, при которой \nпоступает большое количество \nкомментариев с идентичным или схожим \nсодержанием («флешмоб»); \n\nавтор злоупотребляет написанием большого \nколичества малосодержательных сообщений, \nили смысл текста трудно либо невозможно \nуловить («флуд»); \n\nавтор нарушает сетевой этикет, проявляя \nформы агрессивного, издевательского и \nоскорбительного поведения («троллинг»); \n\nавтор проявляет неуважение к русскому \nязыку, текст написан по-русски с \nиспользованием латиницы, целиком или \nпреимущественно набран заглавными \nбуквами или не разбит на предложения. \n\nПожалуйста, пишите грамотно — \nкомментарии, в которых проявляется \nпренебрежение правилами и нормами \nрусского языка, могут блокироваться вне \nзависимости от содержания. \n\nАдминистрация имеет право без \nпредупреждения заблокировать \nпользователю доступ к странице в случае \nсистематического нарушения или \nоднократного грубого нарушения \nучастником правил комментирования. \n\nПользователь может инициировать \nвосстановление своего доступа, написав \nписьмо на адрес электронной почты \nmoderator@rian.ru \n\nВ письме должны быть указаны: \n\nТема – восстановление доступа \n\nЛогин пользователя \n\nОбъяснения причин действий, которые были \nнарушением вышеперечисленных правил и \nповлекли за собой блокировку. \n\nЕсли модераторы сочтут возможным \nвосстановление доступа, то это будет \nсделано. \n\nВ случае повторного нарушения правил и \nповторной блокировки доступ пользователю \nне может быть восстановлен, блокировка в \nтаком случае является полной. \n\nЧтобы связаться с командой модераторов, \nиспользуйте адрес электронной почты \nmoderator@rian.ru или Skype: moderatorria. \n\n', ''),
	(41, 'http://www.bk55.ru/news/article/34582/', 'Юрий Ратько осужден на 4,5 года общего режима ', '\n\nКапитан «Полесья-8» получил наказание, \nтребуемое прокурором в полном размере. \nПод стражу Ратько взяли прямо в зале суда. \n\n  \n\nЛенинский районный суд Омска только что \nвынес приговор по громкому уголовному \nделу о крушении теплохода «Полесье-8», \nкоторое произошло в августе 2013 года. \nКапитан, по чьей вине состоялась авария, \nполучил 4,5 года лишения свободы в колонии \nобщего режима. \n\n  \n\nВо время сегодняшнего судебного \nразбирательства прокуратура запросила \nдля капитана теплохода именно этот срок \nнаказания – 4,5 года лишения свободы, а \nпредставители потерпевших просили для \nнего 7 лет колонии. Пока остается неясным, \nзахотят ли они обжаловать приговор. \nОбращаясь с последним словом, капитан \nзаявил, что полностью признает свою вину и \nпопросил у людей прощения, сообщает \n«Омск-Информ». \n\n  \n\nОтметим, что второе уголовное дело по \nстатье «Халатность», возбужденное в \nотношении должностных лиц ОАО «Омский \nречной порт» все еще находится на стадии \nрасследования. Представители \nправоохранительных органов выясняют, кто \nдопустил факт наличия пьяного капитана в \nрейсе. \n\n  \n\nНапомним, что Юрий Ратько – фигурант и \nглавный подозреваемый громкого дела о \nкрушении теплохода «Полесье-8», в \nрезультате которого 6 человек погибли, еще \nоколо 50 были травмированы, часть из них \nполучили очень серьезные увечья. В ходе \nпроверки выяснилось, что капитан судна \nЮрий Ратько в момент трагедии управлял \nтеплоходом в состоянии алкогольного \nопьянения, в его крови было выявлено 2,5 \nпромилле алкоголя. \n\n  \n\nАлексей Гошкодер \n\n', ''),
	(42, 'http://www.bk55.ru/news/article/34538/', 'Леван Турманидзе: «Я заплатил налог 20 февраля, а 27 марта на меня завели уголовное дело!»', '\n\n«Если дело дойдет до суда и в моей \nбиографии появится судимость, я и дня не \nостанусь в этом городе!» – по-кавказски \nгорячится Леван Турманидзе. Известный \nомский предприниматель, руководитель \nкомпании «Летур» прокомментировал БК55 \nсообщение СУ СКР по Омской области о \nзавершении расследования уголовного дела \nпротив него по якобы имеющемуся факту \nсокрытия от налогов. \n\n  \n\nНапомним, недавно с заявлением в СМИ \nвыступил следователь 3-го отдела по \nрасследованию особо важных дел СУ СКР по \nОмской области Алексей Жеребилов. \n«Турманидзе, преследуя цель не допустить \nвзыскания налоговыми органами недоимки \nпо налогам, планируя получить \nокончательный расчет за реализованные \nучастки от контрагентов в сумме 140 \nмиллионов рублей, открыл новый счет своей \nорганизации, о котором не было известно \nналоговому органу и на который контрагент \nперечислил денежные средства в счет \nрасчета за участки, – cформулировал суть \nобвинения следователь. – В этот же день \nТурманидзе перечислил всю сумму на \nрасчетный счет другой своей организации, \nв которой он также являлся руководителем \nи израсходовал их впоследствии на \nпогашение кредитных обязательств». \n\n  \n\n– Леван Искендерович, что случилось? Как \nвы попали в такую историю?– Мы не попали в \nисторию, скорее, нас туда втянули. \n\n  \n\n– Кто?– Давайте обо всем по порядку. Мне \nнечего скрывать и нечего стыдиться, я \nготов откровенно рассказать, как было \nдело, и пусть ваши читатели рассудят сами, \nесть ли моя вина в этой истории. \n\n  \n\n– Насколько я понимаю, речь идет о налогах \nпосле продажи участка у гипермаркета METRO \nC&amp;C структуре Юрия Гуринова, \nконтролирующего «ЗСЖБ №6»? – Совершенно \nверно. Этот участок на Королева мы купили \nв 2011 году в Москве у Росимущества, тогда \nтам был Учхоз №1, планировали строить там \nжилой микрорайон. Но, к сожалению, \nвпоследствии не смогли найти достаточно \nсредств для освоения участка. Банки \nдружно заявили, что ждут кризиса. \n\n  \n\n– Сколько вы заплатили Росимуществу?– 88 \nмиллионов, это не секрет, информация эта \nуже озвучивалась. Купили на кредитные \nденьги – помог ИТ-банк. \n\n  \n\n– Кредит нужно было отдавать, поэтому вы \nрешили продать землю Гуринову…– Да, \nлетом прошлого года мы заключили контракт \nо продаже. По условиям договора деньги \nдолжны были отдать нам в течение пяти лет. \n\n  \n\n– Не самые выгодные условия.– Это же \nбизнес: иногда у тебя что-то получается, \nиногда – нет, это нормально. \n\n  \n\n– Так как же возникла эта злополучная \nситуация с неуплатой налогов? – \nРассказываю, в октябре мы должны были по \nзакону заплатить налог по этой сделке. \nВыполнить это мы не смогли, не потому что я \nтакой безответственный предприниматель, \nа потому что покупатель с нами еще не \nрассчитался. Спасибо Юрию Гуринову, он \nвник в ситуацию и пообещал нам выплатить \nнужную для погашения налогов сумму \nраньше, чем было прописано в договоре, но \nэто тоже были кредитные деньги, которые \nему должны были перечислить в ближайшее \nвремя. Кредит в ИТ-банке мы с его помощью \nзакрыли, на очереди была оплата налога. \nПричем обращаю внимание читателей и еще \nраз следственных органов: я все делал \nчестно, ни от кого не прятался, не \nскрывался. Я, как добросовестный \nналогоплательщик, подал декларацию, в \nкоторой указал проведенную сделку. Но так \nкак в необходимый срок у меня не было \nденег, я обратился с письмом в областную \nналоговую с просьбой об отсрочке. Закон \nэто позволяет. \n\n  \n\n– Вам пошли на встречу?– К сожалению, нет. \nДело в том, что там были и федеральные \nналоги, поэтому мне рекомендовали \nобратиться в Москву, что мы и сделали. 31 \nянваря мы получили отказное письмо из \nфедеральной налоговой. Потом я уехал в \nкомандировку, за время моего отсутствия \nко мне никто не предъявлял претензий, был \nтолько один звонок из налоговой с \nнапоминанием о неуплаченном налоге. Когда \nя вернулся – 20 февраля – то сразу же \nзаплатил налог. С учетом всем штрафов и \nпеней где-то более 43 миллионов рублей. \n\n  \n\n– Если вы заплатили налог, то в чем вас \nобвиняют, да простит мою наивность \nследователь Жеребилов?– Меня обвиняют в \nтом, что якобы пытался спрятать деньги и \nне платить налоги. Причем это абсурдное \nобвинение мне предъявили 27 марта, больше \nчем через месяц после уплаты налога! \n\n  \n\n– За что «зацепились» силовики?– После \nпокупки учхоза мы реорганизовали \nкомпанию и создали три фирмы \n«Комфорт-строй», «Коммерц – строй» и \nсобственно учхоз. Налог должен был \nплатить «Комфорт-строй». Так как мы были \nдолжниками у налоговой, его счета были \nарестованы, поэтому когда под Новый год \nСбербанк выдал кредит Гуринову, я открыл \nновый счет в ИТ-банке на фирму «Летур», \nкоторая является учредителем всех \nвышеупомянутых фирм. Об открытии счета, \nкстати, в тот же день сообщил в налоговый \nорган, хотя по закону допускается \nвозможность сделать это в течение семи \nдней, у меня есть соответствующие \nдокументы по этому поводу. Поэтому и здесь \nобвинения следователя Жеребилова \nбезосновательны. Да, налоговики \nутверждают теперь, что они увидели эти \nдокументы через две недели, но это уже \nособенности их документооборота. \n\n  \n\n– А зачем вы действительно открыли новый \nсчет?– Дело в том, что Гуринов перечислил \nмне 140 миллионов рублей, а налоговикам я \nдолжен был 40, если бы всю сумму «кинули» в \n«Комфорт-строй», где счета были \nарестованы, то сто миллионов – для меня, \nкак для бизнесмена, у которого много \nпроектов, а следовательно и обязательств, \nэто очень существенная сумма – там \nнадолго «зависли» бы. На самом деле мы \nдаже писали письмо Гуринову, чтобы он \nсразу разделил эту сумму на два счета, но \nего специалисты в предновогодней запарке \nотправили все по счету в ИТ-банке. \n\n  \n\n– Следователь Жеребилов обвиняет вас в \nтом, что вы «увели» деньги и \n«израсходовали их впоследствии на \nпогашение кредитных обязательств».– И \nэто ложь! Из 140 миллионов на погашение \nпроцентов по еще одному имеющемуся у нас \nкредиту в МДМ-банке мы истратили только 23 \nмиллиона, остальные 117 миллионов положили \nна депозит в этом банке. На тот момент я \nеще не знал, как мне ответит федеральная \nналоговая: я просил отсрочки на год. А мне, \nкак и любому бизнесмену, всегда нужны \nсредства, поэтому я ждал: разрешат \nотсрочку – хорошо, не разрешат – сразу \nзаплачу налог, деньги у меня были. \nПовторяю, я ничего ни от кого не скрывал с \nсамого начала, я не подавал липовых \nнулевых деклараций, не пользовался \nфирмами-однодневками, не просил Гуринова \nперечислить деньги на какое-нибудь третье \nлицо. Я даже специально в «Комфорт-строе» \nлично стал директором, чтобы нести полную \nответственность. Да, я задолжал по срокам, \nно я же заплатил все штрафы и пени, которые \nполагаются по закону в такой ситуации. \n\n  \n\n– Я так пониманию, следствие не хочет \nрассматривать всю ситуацию в целом, а \nберет только один фрагмент и делает свои \nвыводы.– Более того, они не хотят даже \nбрать во внимание то, что я заплатил налог \nдо возбуждения дела! Например, когда \nпроводилась экономическая экспертиза по \nнашей ситуации, следователь, на мой \nвзгляд, специально ставил вопросы таким \nобразом: «Было ли перечисление налога на \nдату до 25 декабря?». А на ходатайство моего \nадвоката заменить этот вопрос на другой: \n«Было ли добровольное погашение налога?» \n– мы получаем отказ. В итоге из \nрезультатов экспертизы вообще не видно, \nчто мы уже давно все заплатили. Где \nнепредвзятость и объективность? \n\n  \n\n– Так, может, это, что называется, \n«заказ»?– Может быть и так, но меня больше \nвсего возмущает, что какой-то старший \nлейтенант из-за очередных «звездочек», \nблагодарности или еще не знаю чего топчет \nмою репутацию бизнесмена! Я 35 лет создавал \nв Омске свое имя, мой бизнес прозрачен, я \nрегистрирую все на себя. Почему я должен \nкраснеть перед своими детьми, своими \nпартнерами по бизнесу? Вы только \nпредставьте, меня же в тот период, когда я \nне мог заплатить налог по причинам, \nкоторые я объяснил выше, и о которых я \nоповестил налоговую, никто ни разу ни о \nчем не предупреждал, от меня никто не \nтребовал никаких дополнительных \nобъяснений, и уже через месяц, как я \nзаплатил налог, на меня завели уголовное \nдело! Я это так не оставлю: продам все, что \nу меня есть до последних носков, дойду до \nпрезидента, но накажу тех, кто кошмарит \nбизнес в Омске! \n\n  \n\n– Кстати, а какова судьба людей, которые \nработали в учхозе до того, как вы его \nкупили?– Все пятьдесят человек работают у \nменя, я никого не сократил. У меня есть 2 \nтысячи гектаров земли, на которых мы сеем \nпшеницу и другие культуры, в этом \nхозяйстве они и работают, никого не \nвыставил за дверь. Просто удивительно, что \nя сейчас вынужден буквально во всем \nоправдываться только потому, что кто-то \nоднобоко ведет следствие! \n\n  \n\n– Вы не пытались жаловаться на \nследователя Жеребилова?– Да уже сотни \nжалоб написали! Пишешь Кондину – тебе \nотвечает замначальника отдела, где \nработает Жеребилов. И ответ один: у нас все \nпо закону. \n\n  \n\nНаталья Николаева \n\n  \n\n', '');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;