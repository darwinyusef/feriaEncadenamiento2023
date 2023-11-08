-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para urapanesbosque_bd2023
CREATE DATABASE IF NOT EXISTS `urapanesbosque_bd2023` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `urapanesbosque_bd2023`;

-- Volcando estructura para tabla urapanesbosque_bd2023.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_user_id_foreign` (`user_id`),
  CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.categories: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `slug`, `name`, `subtitle`, `content`, `color`, `views`, `deleted_at`, `created_at`, `updated_at`, `json`, `youtube`, `user_id`) VALUES
	(1, 'programacion', 'Programacion', 'programacion el sisgnificado de esto', '<p>programacion</p>', 'orange', 19, '2018-08-18 18:35:18', '2018-07-03 17:05:21', '2018-08-18 18:35:18', 's:349:"[{"id":"1","title":"programacion","image":"https:\\/\\/www.gettyimages.ie\\/gi-resources\\/images\\/Homepage\\/Hero\\/UK\\/CMS_Creative_164657191_Kingfisher.jpg","text":"contenido"},{"id":"2","title":"programacion2","image":"https:\\/\\/www.gettyimages.ie\\/gi-resources\\/images\\/Homepage\\/Hero\\/UK\\/CMS_Creative_164657191_Kingfisher.jpg","text":"contenido2"}]";', NULL, 3),
	(2, 'diseno-de-productos-web', 'Diseno de Productos Web', 'Aquí creamos se especializa en la maquetación y diseño de sitios web UI, UX y el desarrollo de productos de comunicación con enfoque gráfico,  estrategia digital y producción de contenido, Nuestro objetivo no es solo construir una web es diseñar una web con propósito, y cada modulo que se construya tendrá el propósito de captación de clientes.', '<p>sid grap</p>', 'orange', 281, NULL, '2018-07-13 14:12:44', '2022-11-21 17:08:44', 's:2330:"[{"id":"1","title":"Construcci\\u00f3n de sitios web partiendo de los dispositivos moviles","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32872018232254.jpg","text":"En la actualidad el 73% en promedio de las promociones en ads (Facebook - Instagram - Google) son vistas a trav\\u00e9s de dispositivos m\\u00f3viles, esto quiere decir que los usuarios acceden actualmente a realizar conversiones (Compras - Interacciones - Informaci\\u00f3n - Pagos oline) desde un dispositivo m\\u00f3vil y solo el 27% lo hace a trav\\u00e9s de un PC creemos que la tecnolog\\u00eda m\\u00f3vil es actualmente el auge del desarrollo por eso cuando constuimos sitios web nos encargamos de dise\\u00f1ar el dispositivo movil, luego se dise\\u00f1a el sitio para la web, as\\u00ed implementamos experiencias de usuario que les permite interactuar con los sitios web, dando uso a los gestos y generando aun m\\u00e1s conversiones, y claro tenemos en cuenta que lo gr\\u00e1fico movil es la esencia de un sitio web"},{"id":"2","title":"Dise\\u00f1amos productos web pensado en brindar microsoluciones","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32872018233850.jpg","text":"Dise\\u00f1ar una aplicaci\\u00f3n o un sitio web a la medida implica gestar un prototipo que puede mostrar la ejecuci\\u00f3n de un proyecto. Estas peque\\u00f1as microsoluciones pueden hacer la diferencia en su proyecto."},{"id":"3","title":"Tu dise\\u00f1o esta en nuestras manos","image":"http:\\/\\/aquicreamos.com\\/files\\/ac3287201823567.jpg","text":"\\u00bfentonces quieres un sitio - aplicaci\\u00f3n o soluci\\u00f3n web, y sientes que falta algo? \\u00bfDesea resaltar su marca y darle m\\u00e1s personalidad? \\u00bfY est\\u00e1s pensando en incre\\u00edbles gr\\u00e1ficos personalizadas? \\u00a1Eso es genial! nuestro equipo de trabajo puede ayudarle, con contenido ilustrativo, gr\\u00e1fico, o fotogr\\u00e1fico que pueda ser implementado en estructuras de maquetaci\\u00f3n web \\/ m\\u00f3vil nosotros dise\\u00f1amos para ti tu solo te sientas y apruebas. depende el plan podemos generar proyectos web complejos o manejar estilos, y tendencias de tal manera que nuestros dise\\u00f1adores puedes o generar complejidad o simplicidad, simples en el uso comercial - complejos en entornos publicitarios, los archivos de origen se entregan seg\\u00fan el plan en alta resoluci\\u00f3n al estilo moderno."}]";', NULL, 3),
	(3, 'programacion-web', 'Programacion web', 'Desarrollamos paginas web hechas a la medida de las necesidades de nuestros clientes, Convertimos sus ideas y concepto en un sitio web real para hacer crecer su negocio.', '<p>/pagina/llegada</p>', 'red', 334, NULL, '2018-07-24 22:15:49', '2022-11-30 10:59:33', 's:1602:"[{"id":"1","title":"Desarrollo de sitios web hechos a la medida","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32472018234547.jpg","text":"Desarrollamos cualquier tipo de sitio web desde cero utilizando \\u00a0HTML5, CSS3, SASS BOOTSTRAP 4, Javascript ES7, PHP y Laravel, Wordpress, creamos Tema personalizados y a la medida, tambien desarrollamos complementos modulares con PHP y Laravel, Mysql, y jQuery, tambien corrige cualquier tipo de error en un sitio web o una aplicaci\\u00f3n web\\u00a0"},{"id":"2","title":"Paginas web con estilo, dise\\u00f1o e interactividad","image":"http:\\/\\/aquicreamos.com\\/files\\/ac325720180432.jpg","text":"las web hechas a la medida (Con prop\\u00f3sito, contenido, dise\\u00f1o, tecnolog\\u00eda e Interactividad) permiten mejores resultados con sus clientes"},{"id":"3","title":"Creamos Paginas web con proposito","image":"http:\\/\\/aquicreamos.com\\/files\\/ac3257201802813.png","text":"Creamos paginas con Contenidos que muestren a la comunidad la conformaci\\u00f3n de su negocio y qui\\u00e9nes son como entidad (Misi\\u00f3n visi\\u00f3n)\\r\\nContenidos que muestren cada una de sus servicios que presta a la comunidad\\r\\nEspacios de interacci\\u00f3n para que poco a poco construya comunidades que permitan obtener datos tanto personales que tengan el objetivo de generar interacciones (Chat, Contacto, Whatsapp, Facebook Group)\\r\\nUn sistema que me permita incluir fotograf\\u00edas de los eventos realizados en su empresay mostrarlas en la p\\u00e1gina como una galer\\u00eda de fotos\\r\\nGeoLocalizaci\\u00f3n seg\\u00fan el plan creado.\\r\\nModulos seg\\u00fan sus necesidades"}]";', 'link', 3),
	(4, 'marketing', 'Marketing', 'Creemos que el Marketing es un arte que llevado de la mejor forma puedes dar valor a un producto/servicio/marca así satisfaciendo las necesidades de un mercado objetivo con lucro. En el caso del marketing digital podemos totalizar las herramientas y estrategias digitales que pueden impulsar los negocios publicitandolos hacia un mercado objetivo.', '<p>cotenido</p>', 'green', 317, NULL, '2018-08-18 18:36:52', '2022-10-26 09:41:11', 's:1870:"[{"id":"1","title":"Nuestro enfoque de Marketing","image":"http:\\/\\/aquicreamos.com\\/files\\/ac31882018202350.jpg","text":"Creemos que el marketing debe ser digital, permitiendo luego de finalizadas las estregias se pueda observar un aumento de las ventas, la fidelizaci\\u00f3n de los clientes, que son la base fundamental,  en el proceso mejorar la visibilidad de marcas, productos y servicios, mostr\\u00e1ndonos como empresa y construyendo buenas relaciones con los consumidores y asociados y\\/o clientes, de paso convertirnos en influenciadores de nuestra propia marca educando  el mercado as\\u00ed ampliando nuestra red de contactos, y convirtiendo a un feliz termino en colaboradores"},{"id":"2","title":"La transformaci\\u00f3n digital remarca este siglo","image":"http:\\/\\/aquicreamos.com\\/files\\/ac31882018202944.jpg","text":"Actualmente estamos en un tiempo de transformaci\\u00f3n digital y vemos distintas clases de marketing entre estas:\\r\\nMarketing de b\\u00fasquedas (SEO\\/SEM), Inbound marketing, marketing de relaciones, marketing de contenidos. Influencer, Grow Marketing, Display Marketing."},{"id":"3","title":"Por que la Estrategia y las acciones llevadas a cabo, segmentan a los clientes potenciales","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32082018175526.jpg","text":"Aunque existen varios tipos de Marketing, podemos encontrar que los productos y servicios requieren una estrategia que se acople con el mercado objetivo, con base al crecimiento de la empresa o decline del mercado se requieren establecer acciones que permitan lleva a cabo metas a corto mediano y largo plazo, La estrategia fortalece en primera instancia los clientes internos, clientes activos y luego de esto se impulsan los clientes objetivos hasta obteniendo una segmentaci\\u00f3n mas precisa, en este proceso de debe mejorar en instancia la fidelizaci\\u00f3n de clientes."}]";', 'sdf', 3),
	(5, 'ui-y-ux', 'UI y UX', 'Evaluar cual es la forma de actuar de un usuario es analizar de que manera se puede entregar información acerca de los procesos y herramientas que ofrezco a esto lo denominamos experiencia, es por esto que es importante reconocer los puntos de control y cada uno de los tags que estructuran el contenido; al obtener este análisis puedo obtener una interface que cumpla con los objetivos más relevantes, y así determinar mi diseño al montaje y maquetación de esta estructura, creemos que a mayor información más subcontenidos se deben integrar.', '<p>asd</p>', 'violet', 18, NULL, '2018-08-22 17:05:10', '2019-06-13 09:16:34', 's:2102:"[{"id":"1","title":"Interfaces para Usuarios bien pensadas","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32282018172217.png","text":"Al pensar en la gesti\\u00f3n de contenido podemos enfocar al usuario como eje principal consumidor de nuestro sitio web, en tal caso todo lo que se publica es una decisi\\u00f3n que debe ser evaluada y categorizada, cada decisi\\u00f3n que se toma afecta la experiencia de usuario, pues cada segmento del sitio puede variar seg\\u00fan si el dise\\u00f1o es significativo o no, pensado para moviles o no, en su forma conveniente o no, Sin embargo nos encontramos con que el dise\\u00f1o de UX se preocupa aun por  muchas m\\u00e1s variables no estrictamente vinculadas al aspecto gr\\u00e1fico, entre estas la redacci\\u00f3n de los contenidos, la velocidad de carga, la atenci\\u00f3n al cliente, los procesos de compra en l\\u00ednea, la presentaci\\u00f3n de los productos, un contenido usable, confiable, funcional, por esto enfocar esfuerzos en obtener el equilibrio es la base fundamental de un sitio web bien pensado, no es seguir una tendencia, es construir una base de gesti\\u00f3n de contenidos que se acople a las necesidades de una empresa."},{"id":"2","title":"Maquetacion de Interface de Usuario UI y Experiencia de Usuario UX","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32282018172241.png","text":"Para sitios web que se especializan en la funcionalidad, en la presentaci\\u00f3n de contenidos Hermosos, que su contenido este en constante actualizaci\\u00f3n, con basta cantidad de informaci\\u00f3n"},{"id":"3","title":"Que tecnolog\\u00edas usamos para estas construcciones","image":"http:\\/\\/aquicreamos.com\\/files\\/ac32282018172858.jpeg","text":"La interfaces de usuario se dividen en el dise\\u00f1o web y el en front-end para esto usamos (Adobe Illustrator, adobe photoshop) para el prototipado usamos (Adobe XD) y para animaciones en video \\/ Gif usamos (Adobe After Efects) para mejorar las fotograf\\u00edas usamos Ligth Room para el Front - End Usamos HTML 5 y CSS 3 Tambien usamos gestores de platillas como REACT JS y\\/o Blade, en el Backend usamos Laravel"}]";', '2w', 3);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_plan_id_foreign` (`plan_id`),
  CONSTRAINT `faqs_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.faqs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.fileables
CREATE TABLE IF NOT EXISTS `fileables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `files_id` int(10) unsigned DEFAULT NULL,
  `fileable_id` int(11) NOT NULL,
  `fileable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.fileables: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `fileables` DISABLE KEYS */;
REPLACE INTO `fileables` (`id`, `files_id`, `fileable_id`, `fileable_type`, `created_at`, `updated_at`) VALUES
	(9, 10, 1, 'App\\Entities\\Products', '2018-04-05 04:19:42', '2018-04-05 04:19:42'),
	(11, 12, 2, 'App\\Entities\\Options', '2018-04-11 16:46:26', '2018-04-11 16:46:26'),
	(12, 13, 3, 'App\\Entities\\Options', '2018-04-11 16:55:16', '2018-04-11 16:55:16'),
	(32, 36, 3, 'App\\User', '2018-05-02 15:30:57', '2018-05-02 15:30:57'),
	(35, 39, 14, 'App\\Entities\\Links', '2018-05-02 15:45:48', '2018-05-02 15:45:48'),
	(36, 40, 15, 'App\\Entities\\Links', '2018-05-02 15:51:13', '2018-05-02 15:51:13'),
	(37, 41, 16, 'App\\Entities\\Links', '2018-05-02 15:58:30', '2018-05-02 15:58:30'),
	(38, 42, 17, 'App\\Entities\\Links', '2018-05-02 16:07:12', '2018-05-02 16:07:12'),
	(39, 43, 18, 'App\\Entities\\Links', '2018-05-02 16:09:40', '2018-05-02 16:09:40'),
	(40, 44, 19, 'App\\Entities\\Links', '2018-05-02 16:12:46', '2018-05-02 16:12:46'),
	(41, 45, 11, 'App\\Entities\\Links', '2018-05-17 17:58:16', '2018-05-17 17:58:16'),
	(48, 54, 7, 'App\\Entities\\Post', '2018-07-03 23:42:00', '2018-07-03 23:42:00'),
	(49, 55, 12, 'App\\Entities\\Post', '2018-07-03 23:43:51', '2018-07-03 23:43:51'),
	(50, 58, 15, 'App\\Entities\\Post', '2018-07-07 16:45:54', '2018-07-07 16:45:54'),
	(52, 63, 1, 'App\\Entities\\Plans', '2018-07-10 03:33:56', '2018-07-10 03:33:56'),
	(55, 66, 1, 'App\\Entities\\Products', '2018-07-11 21:02:14', '2018-07-11 21:02:14'),
	(56, 67, 4, 'App\\Entities\\Taxonomies', '2018-07-11 21:20:34', '2018-07-11 21:20:34'),
	(57, 68, 1, 'App\\Entities\\Services', '2018-07-11 22:11:08', '2018-07-11 22:11:08'),
	(58, 69, 2, 'App\\Entities\\Services', '2018-07-11 22:12:06', '2018-07-11 22:12:06'),
	(60, 71, 3, 'App\\Entities\\Taxonomies', '2018-07-11 22:17:44', '2018-07-11 22:17:44'),
	(61, 73, 16, 'App\\Entities\\Post', '2018-07-12 22:18:31', '2018-07-12 22:18:31'),
	(62, 74, 2, 'App\\Entities\\Post', '2018-07-14 21:42:15', '2018-07-14 21:42:15'),
	(65, 77, 18, 'App\\Entities\\Post', '2018-07-16 16:18:44', '2018-07-16 16:18:44'),
	(68, 84, 5, 'App\\Entities\\Options', '2018-07-28 22:46:07', '2018-07-28 22:46:07'),
	(69, 85, 12, 'App\\Entities\\Links', '2018-07-28 23:10:46', '2018-07-28 23:10:46'),
	(70, 86, 13, 'App\\Entities\\Links', '2018-07-28 23:16:18', '2018-07-28 23:16:18'),
	(72, 91, 19, 'App\\Entities\\Post', '2018-07-30 18:56:34', '2018-07-30 18:56:34'),
	(74, 93, 6, 'App\\Entities\\Options', '2018-07-31 16:55:01', '2018-07-31 16:55:01'),
	(75, 94, 20, 'App\\Entities\\Post', '2018-08-01 16:30:57', '2018-08-01 16:30:57'),
	(76, 95, 13, 'App\\Entities\\Post', '2018-08-01 17:57:29', '2018-08-01 17:57:29'),
	(77, 103, 22, 'App\\Entities\\Post', '2020-11-23 23:01:02', '2020-11-23 23:01:02');
/*!40000 ALTER TABLE `fileables` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.gigs
CREATE TABLE IF NOT EXISTS `gigs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gigs_plan_id_foreign` (`plan_id`),
  CONSTRAINT `gigs_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.gigs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gigs` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.links
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` enum('header','footer','services','social','social_footer') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.links: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
REPLACE INTO `links` (`id`, `url`, `name`, `icon`, `location`, `target`, `description`, `visible`, `notes`, `parent_id`, `created_at`, `updated_at`) VALUES
	(8, 'https://www.facebook.com', 'Facebook', 'fa fa-facebook', 'social', '_blank', '<p>Facebook link</p>', '1', NULL, 0, '2018-04-11 16:32:01', '2018-07-03 23:28:48');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.messageable
CREATE TABLE IF NOT EXISTS `messageable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci,
  `messages_id` int(10) unsigned DEFAULT NULL,
  `messageable_id` int(11) NOT NULL,
  `messageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.messageable: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `messageable` DISABLE KEYS */;
REPLACE INTO `messageable` (`id`, `message`, `messages_id`, `messageable_id`, `messageable_type`, `created_at`, `updated_at`) VALUES
	(10, 'fasdf', 78, 2, 'App\\Entities\\Services', '2018-07-16 18:48:50', '2018-07-16 18:48:50');
/*!40000 ALTER TABLE `messageable` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.migrations: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_02_22_155731_create_permission_tables', 1),
	(4, '2018_02_22_162225_column_user_table', 1),
	(5, '2018_02_22_162346_create_user_metas_table', 1),
	(6, '2018_02_22_162425_create_options_table', 1),
	(7, '2018_02_22_162443_create_terms_table', 1),
	(8, '2018_02_22_162524_create_posts_table', 1),
	(9, '2018_02_22_162530_create_post_metas_table', 1),
	(10, '2018_02_22_162554_create_taxonomies_table', 1),
	(11, '2018_02_22_162610_create_multimedia_table', 1),
	(12, '2018_02_22_162803_create_fileable_table', 1),
	(13, '2018_02_22_162826_create_taxonomy_morphs_table', 1),
	(14, '2018_02_22_162847_create_sliders_table', 1),
	(15, '2018_02_22_162958_create_notifications_table', 1),
	(16, '2018_03_09_142315_create_links_table', 1),
	(17, '2018_04_04_180807_create_categories_table', 2),
	(18, '2018_04_04_180929_create_products_table', 2),
	(19, '2018_04_04_181009_create_plans_table', 2),
	(20, '2018_04_04_181037_create_promotions_table', 2),
	(23, '2018_04_05_025719_create_plan_product_table', 3),
	(24, '2018_04_05_164625_edit_product_table', 4),
	(25, '2018_04_13_042506_create_services_table', 5),
	(26, '2018_04_13_042714_edit_post_table', 6),
	(27, '2018_04_13_042813_edit_categories_table', 6),
	(28, '2018_04_13_045113_create_scores_table', 6),
	(29, '2018_04_13_045130_create_scoreable_table', 6),
	(30, '2018_04_13_050957_edit_service_table', 7),
	(31, '2018_04_13_190322_edit_service_table', 8),
	(32, '2018_04_13_190452_edit_service_table', 9),
	(33, '2018_07_03_172841_table_services', 10),
	(34, '2018_07_03_183139_create_plan_service', 11),
	(35, '2018_07_10_140848_create_gigs_table', 12),
	(36, '2018_07_10_140904_create_faqs_table', 12),
	(37, '2018_05_29_005415_create_ratings_table', 13),
	(38, '2018_07_16_164701_create_send_menssages_table', 14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.model_has_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.model_has_roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
REPLACE INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
	(1, 3, 'App\\User'),
	(2, 4, 'App\\User');
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.multimedia
CREATE TABLE IF NOT EXISTS `multimedia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` datetime DEFAULT NULL,
  `type_file` enum('csv','pdf','doc','docx','pps','ppt','xls','xlsx','pptx','jpg','jpeg','gif','png','bmp','tiff','psd','mp3','mp4','3gp','ogg','tar','zip','rar','7z','sql','svg') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.multimedia: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `multimedia` DISABLE KEYS */;
REPLACE INTO `multimedia` (`id`, `name`, `description`, `url`, `expiration`, `type_file`, `file_location`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(10, 'das', 'asdf', 'files/ac354201841942.png', NULL, 'png', 'http://aquicreamos.com/files/ac354201841942.png', NULL, '2018-04-05 04:19:42', '2018-04-05 04:19:42');
/*!40000 ALTER TABLE `multimedia` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.notifications: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
REPLACE INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('94dfbede-9e1f-474c-ae45-4db101b2ff80', 'App\\Notifications\\SendEmail', 89, 'App\\User', '{"message":"asdfasdfdfasdfja\\u00f1slkdf","messageable_id":2,"messageable_type":"App\\\\Entities\\\\Plans","url":"\\/backend\\/notification?notification=27&type=plan","type":"plan","id":27}', NULL, '2018-07-16 19:34:09', '2018-07-16 19:34:09');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `autoload` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.options: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
REPLACE INTO `options` (`id`, `option_key`, `option_value`, `settings`, `time_in`, `time_out`, `autoload`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'social', 'facebook', 'https://www.facebook.com/', '2018-03-01 00:00:00', '2018-03-01 00:00:00', 1, 1, NULL, '2018-03-27 20:09:50', '2018-03-27 20:09:50');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.permissions: ~50 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
REPLACE INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'file.update', 'web', '2018-03-09 12:58:33', '2018-03-09 12:58:33'),
	(2, 'file.create', 'web', '2018-03-09 12:58:40', '2018-03-09 12:58:40'),
	(3, 'file.list', 'web', '2018-03-09 12:58:49', '2018-03-09 12:58:49'),
	(4, 'file.destroy', 'web', '2018-03-09 12:59:09', '2018-03-09 12:59:09'),
	(5, 'user.my.update', 'web', '2018-03-09 13:08:39', '2018-03-09 13:08:39'),
	(6, 'files', 'web', '2018-03-09 13:09:06', '2018-03-09 13:09:06'),
	(7, 'user.my.password', 'web', '2018-03-09 13:12:58', '2018-03-09 13:12:58'),
	(8, 'user.my', 'web', '2018-03-09 13:13:58', '2018-03-09 13:13:58'),
	(9, 'user.create', 'web', '2018-03-09 13:22:52', '2018-03-09 13:22:52'),
	(10, 'user.list', 'web', '2018-03-09 13:23:03', '2018-03-09 13:23:03'),
	(11, 'user.update', 'web', '2018-03-09 13:23:13', '2018-03-09 13:23:13'),
	(12, 'user.destroy', 'web', '2018-03-09 13:23:24', '2018-03-09 13:23:24'),
	(13, 'option.create', 'web', '2018-03-09 14:26:00', '2018-03-09 14:26:00'),
	(14, 'option.update', 'web', '2018-03-09 14:26:12', '2018-03-09 14:26:12'),
	(15, 'option.destroy', 'web', '2018-03-09 14:26:33', '2018-03-09 14:26:33'),
	(16, 'option.list', 'web', '2018-03-09 14:26:41', '2018-03-09 14:26:41'),
	(17, 'post.list', 'web', '2018-03-09 14:44:55', '2018-03-09 14:44:55'),
	(18, 'post.create', 'web', '2018-03-09 14:45:08', '2018-03-09 14:45:08'),
	(19, 'post.update', 'web', '2018-03-09 14:51:06', '2018-03-09 14:51:06'),
	(20, 'post.destroy', 'web', '2018-03-09 14:51:13', '2018-03-09 14:51:13'),
	(21, 'page', 'web', '2018-03-09 15:04:27', '2018-03-09 15:04:27'),
	(22, 'post', 'web', '2018-03-09 15:04:43', '2018-03-09 15:04:43'),
	(23, 'portfolio', 'web', '2018-03-09 15:04:55', '2018-03-09 15:04:55'),
	(24, 'link.update', 'web', '2018-03-10 00:42:59', '2018-03-10 00:42:59'),
	(25, 'link.create', 'web', '2018-03-10 00:43:06', '2018-03-10 00:43:06'),
	(26, 'link.destroy', 'web', '2018-03-10 00:43:16', '2018-03-10 00:43:16'),
	(27, 'link.list', 'web', '2018-03-10 00:43:30', '2018-03-10 00:43:30'),
	(28, 'taxonomy.list', 'web', '2018-03-10 02:23:20', '2018-03-10 02:23:20'),
	(29, 'taxonomy.create', 'web', '2018-03-10 02:23:27', '2018-03-10 02:23:27'),
	(30, 'taxonomy.update', 'web', '2018-03-10 02:23:36', '2018-03-10 02:23:36'),
	(31, 'taxonomy.destroy', 'web', '2018-03-10 02:23:49', '2018-03-10 02:23:49'),
	(32, 'taxonomy', 'web', '2018-03-10 02:24:28', '2018-03-10 02:24:28'),
	(33, 'taxonoable', 'web', '2018-03-10 05:15:26', '2018-03-10 05:15:26'),
	(34, 'statistics', 'web', '2018-03-10 06:36:02', '2018-03-10 06:36:02'),
	(35, 'category.update', 'web', '2018-04-04 23:21:06', '2018-04-04 23:21:06'),
	(36, 'category.destroy', 'web', '2018-04-04 23:21:31', '2018-04-04 23:21:31'),
	(37, 'category.create', 'web', '2018-04-04 23:21:48', '2018-04-04 23:21:48'),
	(38, 'category.list', 'web', '2018-04-04 23:21:59', '2018-04-04 23:21:59'),
	(39, 'product.create', 'web', '2018-04-05 01:59:46', '2018-04-05 01:59:46'),
	(41, 'product.list', 'web', '2018-04-05 02:00:29', '2018-04-05 02:00:29'),
	(42, 'product.update', 'web', '2018-04-05 02:00:39', '2018-04-05 02:00:39'),
	(43, 'product.destroy', 'web', '2018-04-05 02:00:49', '2018-04-05 02:00:49'),
	(44, 'plan.create', 'web', '2018-04-05 02:49:49', '2018-04-05 02:49:49'),
	(45, 'plan.update', 'web', '2018-04-05 02:49:58', '2018-04-05 02:49:58'),
	(47, 'plan.list', 'web', '2018-04-05 02:50:31', '2018-04-05 02:50:31'),
	(48, 'plan.destroy', 'web', '2018-04-05 02:50:40', '2018-04-05 02:50:40'),
	(49, 'service.update', 'web', '2018-04-13 05:26:44', '2018-04-13 05:26:44'),
	(50, 'service.create', 'web', '2018-04-13 05:26:54', '2018-04-13 05:26:54'),
	(51, 'service.list', 'web', '2018-04-13 05:27:04', '2018-04-13 05:27:04'),
	(52, 'service.destroy', 'web', '2018-04-13 05:27:14', '2018-04-13 05:27:14');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.plans
CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_payment` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plans_category_id_foreign` (`category_id`),
  CONSTRAINT `plans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.plans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.plan_product
CREATE TABLE IF NOT EXISTS `plan_product` (
  `plan_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  KEY `plan_product_plan_id_foreign` (`plan_id`),
  KEY `plan_product_product_id_foreign` (`product_id`),
  CONSTRAINT `plan_product_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  CONSTRAINT `plan_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.plan_product: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plan_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_product` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.plan_service
CREATE TABLE IF NOT EXISTS `plan_service` (
  `plan_id` int(10) unsigned DEFAULT NULL,
  `service_id` int(10) unsigned DEFAULT NULL,
  KEY `plan_service_plan_id_foreign` (`plan_id`),
  KEY `plan_service_service_id_foreign` (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.plan_service: 0 rows
/*!40000 ALTER TABLE `plan_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_service` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('attachment','page','post','portfolio','directory','publicity') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` enum('published','draft','pending review') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `mail` tinyint(1) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `service_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_service_id_foreign` (`service_id`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.posts: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id`, `title`, `content`, `slug`, `excerpt`, `password`, `url`, `type`, `state`, `time_in`, `time_out`, `parent`, `views`, `mail`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `json`, `service_id`, `category_id`) VALUES
	(1, 'new data', '<h2><img alt="" src="http://localhost:8000/files/ac31342018182333.png" style="height:500px; width:100%" /></h2>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>&iquest;Qu&eacute; es Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n\r\n<h2>&iquest;Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&iquest;De d&oacute;nde viene?</h2>\r\n\r\n<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32</p>', 'how-to-create-a-card-based-article-with-html5-css3', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo', NULL, 'post_theme', 'post', 'published', '2018-04-14 00:00:00', '2018-04-14 00:00:00', NULL, 169, NULL, 3, NULL, '2018-04-14 00:00:00', '2023-02-04 20:52:54', 's:309:"{"video":null,"facebook_product":null,"add":null,"explain":null,"metatitle":"How to create a card based article with HTML5 & CSS3","metadescription":"How to create a card based article with HTML5 & CSS3 list card","keywords":"html, css, post, days","urlMail":null,"action":null,"btntext":null,"typeMail":null}";', NULL, NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `type` enum('publico','integrado','venta') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.products: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.promotions
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `price_val` double DEFAULT NULL,
  `discount_val` double DEFAULT NULL,
  `add_val` double DEFAULT NULL,
  `discount` enum('percent','value') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_modifications` enum('venta','ingreso','intercambio','prestamo','devolucion') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `plan_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotions_plan_id_foreign` (`plan_id`),
  KEY `promotions_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.promotions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.ratings
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_post_id_foreign` (`post_id`),
  CONSTRAINT `ratings_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.ratings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.roles: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'web', '2018-03-15 05:00:00', '2018-03-15 05:00:00'),
	(2, 'user', 'web', '2018-03-15 05:00:00', '2018-03-15 05:00:00'),
	(3, 'webmaster', 'web', '2018-03-15 05:00:00', '2018-03-15 05:00:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.role_has_permissions: ~78 rows (aproximadamente)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
REPLACE INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(51, 1),
	(52, 1),
	(5, 2),
	(7, 2),
	(8, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(5, 3),
	(7, 3),
	(8, 3),
	(10, 3),
	(13, 3),
	(14, 3),
	(16, 3),
	(17, 3),
	(18, 3),
	(19, 3),
	(21, 3),
	(22, 3),
	(23, 3),
	(24, 3),
	(25, 3),
	(26, 3),
	(27, 3),
	(28, 3),
	(29, 3),
	(30, 3),
	(32, 3),
	(33, 3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `advantage` text COLLATE utf8mb4_unicode_ci,
  `price` int(80) DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link_id` int(10) unsigned DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_user_id_foreign` (`user_id`),
  KEY `services_link_id_foreign` (`link_id`),
  KEY `services_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.services: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
REPLACE INTO `services` (`id`, `slug`, `title`, `subtitle`, `advantage`, `price`, `color`, `views`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `link_id`, `json`, `category_id`) VALUES
	(1, 'info', 'Info2', 'asdfasdf', '<p>asfasdf</p>', 200, 'red', 19, 3, NULL, '2018-04-13 05:26:20', '2018-08-01 15:59:04', 11, 's:728:"{"video":"https:\\/\\/www.facebook.com\\/pg\\/aquicrea\\/services\\/?service_id=1696159240452725","facebook_product":"<iframe src=\\"https:\\/\\/www.facebook.com\\/plugins\\/video.php?href=https%3A%2F%2Fwww.facebook.com%2F664555270323489%2Fvideos%2F1572331269545880%2F&show_text=0&width=268\\" width=\\"268\\" height=\\"476\\" style=\\"border:none;overflow:hidden\\" scrolling=\\"no\\" frameborder=\\"0\\" allowTransparency=\\"true\\" allowFullScreen=\\"true\\"><\\/iframe>","add":"http:\\/\\/www.icbf.gov.co\\/portal\\/page\\/portal\\/ContenidoBienestarEnFamiliaICBF\\/DescargasBienestarEnFamilia\\/GuiasDeFamiliaModulo2\\/M2_Guia8.pdf","explain":"Explicaci\\u00f3n corta del contenido de las pruebas","metatitle":"asdf","metadescription":"asdf","keywords":"asdf"}";', 1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `layers` text COLLATE utf8mb4_unicode_ci,
  `type` enum('attachment','page','post','revision','portfolio','directory','publicity') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.sliders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.taxonoables
CREATE TABLE IF NOT EXISTS `taxonoables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taxonomies_id` int(11) DEFAULT NULL,
  `taxonoable_id` int(11) NOT NULL,
  `taxonoable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.taxonoables: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `taxonoables` DISABLE KEYS */;
REPLACE INTO `taxonoables` (`id`, `taxonomies_id`, `taxonoable_id`, `taxonoable_type`, `created_at`, `updated_at`) VALUES
	(2, 2, 1, 'App\\Entities\\Post', '2018-03-27 20:04:26', '2018-03-27 20:04:26'),
	(3, 1, 2, 'App\\Entities\\Post', '2018-04-12 02:23:54', '2018-04-12 02:23:54'),
	(4, 2, 2, 'App\\Entities\\Post', '2018-04-12 02:23:56', '2018-04-12 02:23:56'),
	(5, 3, 1, 'App\\Entities\\Post', '2018-07-11 15:12:22', '2018-07-11 15:12:22'),
	(6, 3, 2, 'App\\Entities\\Services', '2018-07-11 15:17:26', '2018-07-11 15:17:26'),
	(7, 2, 1, 'App\\Entities\\Plans', '2018-07-11 15:36:37', '2018-07-11 15:36:37'),
	(10, 4, 1, 'App\\Entities\\Products', '2018-07-11 15:44:29', '2018-07-11 15:44:29'),
	(11, 4, 1, 'App\\Entities\\Plans', '2018-07-11 16:18:46', '2018-07-11 16:18:46'),
	(12, 5, 1, 'App\\Entities\\Plans', '2018-07-11 16:18:47', '2018-07-11 16:18:47'),
	(13, 2, 1, 'App\\Entities\\Services', '2018-07-11 20:35:09', '2018-07-11 20:35:09'),
	(14, 3, 1, 'App\\Entities\\Services', '2018-07-11 20:35:12', '2018-07-11 20:35:12'),
	(15, 4, 1, 'App\\Entities\\Services', '2018-07-11 20:35:15', '2018-07-11 20:35:15'),
	(16, 5, 1, 'App\\Entities\\Services', '2018-07-11 20:35:18', '2018-07-11 20:35:18'),
	(17, 3, 1, 'App\\Entities\\Products', '2018-07-11 21:07:22', '2018-07-11 21:07:22'),
	(18, 4, 1, 'App\\Entities\\Post', '2018-07-11 21:57:45', '2018-07-11 21:57:45'),
	(19, 2, 22, 'App\\Entities\\Post', '2020-11-23 23:02:22', '2020-11-23 23:02:22'),
	(20, 1, 22, 'App\\Entities\\Post', '2020-11-23 23:02:24', '2020-11-23 23:02:24'),
	(21, 2, 23, 'App\\Entities\\Post', '2021-06-18 00:30:01', '2021-06-18 00:30:01'),
	(22, 3, 23, 'App\\Entities\\Post', '2021-06-18 00:30:02', '2021-06-18 00:30:02'),
	(23, 4, 23, 'App\\Entities\\Post', '2021-06-18 00:30:03', '2021-06-18 00:30:03'),
	(24, 5, 23, 'App\\Entities\\Post', '2021-06-18 00:30:03', '2021-06-18 00:30:03'),
	(25, 1, 23, 'App\\Entities\\Post', '2021-06-18 00:30:03', '2021-06-18 00:30:03');
/*!40000 ALTER TABLE `taxonoables` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.taxonomies
CREATE TABLE IF NOT EXISTS `taxonomies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('category','item','tag','publicity') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.taxonomies: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;
REPLACE INTO `taxonomies` (`id`, `slug`, `taxonomy`, `type`, `description`, `parent`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'noticias', 'noticias', 'category', '<p>Noticias&nbsp;</p>', 0, NULL, '2018-03-27 20:02:15', '2018-07-11 17:17:17');
/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;

-- Volcando estructura para tabla urapanesbosque_bd2023.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menssage` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `type` enum('newsletter','info','manual','influencers','lead_magnet','ventas','none') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla urapanesbosque_bd2023.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `first`, `last`, `mobile`, `menssage`, `country`, `status`, `type`, `display_name`, `deleted_at`) VALUES
	(3, 'admin', 'wsgestor@gmail.com', '$2y$10$ATAKnGIPaEHgVS8.2N.r0uug1RowPoStxTx7HIXNPrmpD9CaPObcy', 'LJuNqCBhBokF2gSzYH8DtpiGPQECRiSNx8hGbGX4iGpNYk6Oxpw3RtVtkvHT', '2018-03-16 02:07:18', '2018-07-13 03:34:12', 'admin', 'Darwin', 'Gonzalez', '3202051241', 'None', 'CO', 1, 'manual', 'Darwin Gonzalez', NULL),
	(4, 'desyugo', 'desyugo@hotmail.com', '$2y$10$d7hpSvpBvMP9L8Q4zMQWdezbr0Yijwk8Z/U8Vf2E2GZi9KjiKMD/W', 'pRvUkh2l5yDtC1PwXAUJU3e1MeTdd7rfv3cvIs2kjBWrZb2DI7D4gRagru3d', '2018-07-16 22:27:28', '2018-08-29 21:55:48', 'desyugo', NULL, NULL, NULL, NULL, NULL, 1, 'lead_magnet', 'desyugo', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
