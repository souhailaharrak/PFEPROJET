-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 21 juin 2022 à 13:37
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `education2`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` int(11) NOT NULL,
  `nameCategorie` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nameCategorie`) VALUES
(1, 'Web development'),
(3, 'photographie'),
(4, 'desgine');

-- --------------------------------------------------------

--
-- Structure de la table `contenucours`
--

CREATE TABLE `contenucours` (
  `idContent` int(11) NOT NULL,
  `idCourse` int(11) NOT NULL,
  `title` varchar(254) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `duree` varchar(254) DEFAULT NULL,
  `image` varchar(255) NOT NULL COMMENT 'https://th.bing.com/th/id/OIP._cQvxTd0Ab7S_Jm0AYnuSAHaFL?pid=ImgDet&rs=1',
  `prix` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contenucours`
--

INSERT INTO `contenucours` (`idContent`, `idCourse`, `title`, `description`, `duree`, `image`, `prix`) VALUES
(1, 1, 'React js + Redux+ Firebase', 'In this course, you will learn to master the concepts of React 16.3+, including the new context API and Redux. We will target certain concepts while gradually building real applications. Whether you\'ve never touched React or have been working on it for a while and want to learn more and build some cool stuff, this course is for you. The final project will consist of a React/Redux client management panel that uses Firebase for authentication and Firestore for data storage.', '4min', 'https://itsg-global.com/wp-content/uploads/2016/09/react-js-to-use-or-not-to-use.png', '30'),
(2, 2, 'HTML AND CSS THE Complete Course', 'This course will teach you the beginning of web development the bare bones of the web HTML5 it will teach you how to use it semantically and how to be SEO friendly. Best practice tips and tricks. and more', '1h', 'https://blog.hubspot.fr/hubfs/image-3898.png', '40'),
(3, 3, 'Complete Web Developer\r\n Training', 'This course is quite comprehensive when compared with other courses available on this platform that is why I bought it. It is packed full with amazing content and like the description, it did make me full stack web developer. The instructor is a very good teacher using visual aids (not just talking) and simple illustrations to drive home a point. This course does not teach everything but the basics of everything frontend and backend. I enjoyed the course, the jokes, the projects, challenges.', '20', 'https://www.superprof.fr/ressources/wp-content/uploads/2007/09/technique-utilisation-scanner.jpg', '20'),
(4, 4, 'Really Good Understanding \r\nof Javascript', 'JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives et à ce titre est une partie essentielle des applications web. Avec les langages HTML et CSS,', '5h', 'https://www.243tech.com/meilleures-librairies-javascript/javascript.png', '25'),
(11, 8, 'Learn Python 3 and Scraping \r\n         With Beautiful Soup\r\n              ​ From Scratch ', 'This course includes the latest language features such as f-strings, the new object-oriented syntax and the latest Python 3.10 operators.\r\nThis training is perfect for complete beginners in programming as well as for developers who want to familiarize themselves with the Python language.\r\nIt\'s a complete training to become a developer: we will see all the theory of the language and how to use Python to create professional projects ', '45H', 'https://www.filepicker.io/api/file/dnrvrJO7SLKJEeL8frv1\"', '59'),
(12, 12, 'php8', 'PHP 8.0 est une mise à jour majeure du langage PHP.\r\nElle contient beaucoup de nouvelles fonctionnalités et d\'optimisations, incluant les arguments nommés, les types d\'union, attributs, promotion de propriété de constructeur, l\'expression match, l\'opérateur nullsafe, JIT (Compilation à la Volée), et des améliorations dans le système de typage, la gestion d\'erreur, et de cohérence.', '45h', 'https://believemy.com/uploads/d1f11d4b76dccc37d07d71e71b470ddb_d0892d394ccc89e1f73950aca89cb67a.png', '150');

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `idCourse` int(11) NOT NULL,
  `idProf` int(11) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `titreCourse` varchar(254) DEFAULT NULL,
  `prix` varchar(254) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `dateAjout` datetime DEFAULT NULL,
  `video` varchar(254) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`idCourse`, `idProf`, `idCategorie`, `titreCourse`, `prix`, `description`, `dateAjout`, `video`, `image`) VALUES
(1, 1, 1, 'Formation en ReactJS\r\n + Redux + Firebase', '40', 'Learn and master React JS with Context API + Redux', '2022-06-09 11:03:54', 'https://youtu.be/P6xtTG72doQ', 'https://www.letecode.com/storage/articles/September2021/fKFlgB6K1b9IwjcgwtGl.png'),
(2, 2, 1, '        HTML and CSS \r\n The Complete Course', '40', 'Apprennez les bases d\'HTML5 et CSS3 et Créez \r\nvotre premier site Web pas à pas !', '2022-06-15 11:52:25', 'https://youtu.be/PkZNo7MFNFg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm4xfaGnFTkxYnvblP_Gc16-muqLBI7x5lxWm2OQGt1clwWFi_aRBgESUJOZGaSUUSZZo&usqp=CAU'),
(3, 3, 3, 'Complete Web Developer\r\n Training', '100', 'Le Développement Web de A à Z. Apprenez HTML, CSS, Javascript, jQuery, Bootstrap, PHP, MySQL, Wordpress...', '2022-06-28 12:25:22', 'https://youtu.be/sKKeUGdpmPI\r\n\r\n\r\n', '\r\nhttps://cdn.shopify.com/s/files/1/0306/6419/6141/articles/coding_languages.png?v=1619126283'),
(4, 4, 4, 'Le JavaScript de A à Z\r\nApprenez ce langage ultra populaire', '40', 'Apprendre JAVASCRIPT MODERNE EN DARIJA\r\nDevenir un véritable développeur Javascript le Langage numéro 1', '2022-06-21 13:06:41', 'https://youtu.be/sKKeUGdpmPI', 'https://www.malekal.com/wp-content/uploads/javascript-logo-1.jpg'),
(8, 5, 4, 'Learn Python 3 and Scraping \r\n         With Beautiful Soup\r\n              ​ From Scratch ', '30', 'Cette formation inclut les toutes dernières nouveautés du langage comme les f-string', '2022-06-07 10:40:54', 'https://youtu.be/sgJt64iTOYM', 'http://pixelswap.fr/files/2014-01/python.jpg'),
(9, 6, 1, 'Laravel 8.X and 7.X: The Complete Beginner\'s Guide', '30', 'Construire un site web e-commerce en utilisant sept cartes crédits et PayPal. Disponible sur Laravel 8', '2022-06-08 10:47:32', 'https://youtu.be/sKKeUGdpmPI', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3a5f2I8MUdeCUibP0kx21J15w4MpWGkqVluz5rhE10cnSFBmUdKhXtcFjLUUkDeO3wUw&usqp=CAU'),
(10, 3, 1, 'Formation en Git ', '13', 'pprendre à développer des applications\r\n de qualité en équipe avec Git ', '2022-06-15 00:56:38', 'https://youtu.be/P6xtTG72doQ', 'https://www.lucas-uzan.fr/wp-content/uploads/2019/10/git.png'),
(11, 1, 1, 'Develop in Fullstack with Spring Boot ', '40', 'Apprendre à développer Full Stack Spring Boot/Angular ', '2022-06-15 01:01:47', 'https://youtu.be/P6xtTG72doQ', 'https://www.liksi.tech/wp-content/uploads/2019/11/Plan-de-travail-1@0.75x-100.jpg'),
(12, 13, 1, 'Fundamentos do PHP8 do zero', '200', 'The course was developed for those who want to know the basics of PHP and want to start learning  ', '2022-06-15 00:00:00', 'https://www.youtube.com/watch?v=zQbeSRylyHU', 'https://files.nette.org/blog/main/134-b.jpg'),
(13, 13, 1, 'Become a Java developer', '30', 'Learn the Java language easily, 45 corrected exercises included', '2022-06-16 00:00:00', 'https://www.youtube.com/watch?v=lzWrm_n3BzY&list=PLLVmUqYuyQNYMFObvYujnbuA_su4fdVvc', 'https://www.blognone.com/sites/default/files/externals/4b1e053353cd1d94b8d6dd41a990c220.png'),
(14, 13, 4, 'Figma UI UX Design Essentials', '20', 'Use Figma to get a job in UI Design, User Interface, User Experience design, UX Design & Web Design', '2022-06-24 00:00:00', 'https://youtu.be/c9Wg6Cb_YlU', 'https://myskill.id/blog/wp-content/uploads/2022/02/Figma-Tools-Design-Kolaboratif-Bermanfaat-Bagi-UI-UX-Designer.jpg'),
(15, 13, 4, 'Adobe Xd | Formation Complète UX Designer', '20', 'Le cours TOUT en 1 sur Adobe Xd et la création de prototypes.', '2022-06-24 00:00:00', 'https://youtu.be/c9Wg6Cb_YlU', 'https://emmanuelcorreia.com/wp-content/uploads/2019/01/Vignette_bon_format.jpg'),
(16, 16, 4, 'Apprendre NodeJS ExpressJS \r\nMongoDB ', '25', 'Node.js is a low-level platform. In order to make things easy and exciting for developers,', '2022-06-11 21:45:45', 'https://youtu.be/0PA69L88HeI', 'https://th.bing.com/th/id/R.104e9f3e71d394394841983a2d79e3e8?rik=MKa9I0BpWx4Mag&pid=ImgRaw&r=0'),
(17, 16, 3, 'Beginning C++ Programming ', '25', 'Obtain Modern C++ Object-Oriented Programming (OOP) and STL skills', '2022-06-18 00:00:00', 'https://youtu.be/c9Wg6Cb_YlU', 'https://img-0.journaldunet.com/o99fALhChcsWq6e2ZLVnSny90z4=/1500x/smart/8457705c534f4659b6cf4db19e0fb9d0/ccmcms-jdn/11578126.png'),
(18, 16, 1, 'algorithme', '15', 'Un algorithme est une suite finie et non ambiguë d\'instructions et d’opérations permettant', '2022-06-16 00:00:00', 'https://www.youtube.com/embed/UEHyHxqbtyg', 'https://www.e-marketing.fr/Assets/Img/BREVE/2015/5/254546/Billet-Algorithme-metamorphose-mot-F.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `detailsd_unscription`
--

CREATE TABLE `detailsd_unscription` (
  `idCourse` int(11) NOT NULL,
  `idEtudient` int(11) NOT NULL,
  `dateinscripton` datetime DEFAULT NULL,
  `payment` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `detailsd_unscription`
--

INSERT INTO `detailsd_unscription` (`idCourse`, `idEtudient`, `dateinscripton`, `payment`) VALUES
(1, 14, '2022-06-15 20:53:16', 'yes'),
(2, 14, '2022-06-17 03:06:02', NULL),
(4, 14, '2022-06-16 09:06:06', NULL),
(8, 14, '2022-06-19 04:06:03', NULL),
(12, 14, '2022-06-16 09:06:03', NULL),
(15, 14, '2022-06-19 11:06:17', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudient`
--

CREATE TABLE `etudient` (
  `idEtudient` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `telephone` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `idProf` int(11) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  `telephone` varchar(254) DEFAULT NULL,
  `imagee` varchar(250) NOT NULL,
  `username` varchar(255) NOT NULL,
  `description_prof` text NOT NULL,
  `isProf` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prof`
--

INSERT INTO `prof` (`idProf`, `email`, `password`, `telephone`, `imagee`, `username`, `description_prof`, `isProf`) VALUES
(1, 'mohamedidbrahim@gmail.com', '1234567890', '3723298323', 'https://thumbs.dreamstime.com/b/male-avatar-icon-flat-style-male-user-icon-cartoon-man-avatar-hipster-vector-stock-91462914.jpg', 'sara', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sit amet mauris nec nibh blandit lobortis porta id massa. Curabitur euismod, sem a viverra vehicula, elit tellus mattis lectus, sit amet hendrerit tortor ante quis lorem. Morbi aliquet tellus id massa dignissim dignissim. Sed sem nisl, lacinia vel pulvinar sit amet, congue molestie tellus. Vestibulum nunc augue, fermentum eget velit et, ultrices feugiat neque. Nunc massa est, imperdiet vitae efficitur in, maximus a libero. Morbi vestibulum metus risus, sed hendrerit erat aliquam sit amet. Phasellus vitae eleifend ex, sed finibus erat. Duis et elit id tortor facilisis ullamcorper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam elementum venenatis ligula, eu tincidunt lorem laoreet dignissim. Aliquam ut egestas nulla. Quisque nec lacinia dui, sed interdum urna. Nulla a semper augue. Fusce a nisl maximus elit malesuada hendrerit sit amet non erat.\n\nCras congue enim dui, ut pretium lectus faucibus eget. Nullam vestibulum vehicula eros, in luctus urna facilisis at. Aenean nibh augue, ullamcorper id quam eu, malesuada placerat ipsum. Quisque nisi mi, consectetur quis diam vel, facilisis ullamcorper dolor. Nullam et arcu pretium, vestibulum ligula ac, lacinia mi. Nam quis ex hendrerit, facilisis magna in, dapibus ex. Suspendisse potenti. Etiam tincidunt augue nec ligula auctor maximus. Aliquam sollicitudin sed dolor id tempus. Suspendisse ipsum ipsum, sollicitudin a tempus non, aliquam vitae ipsum. Vestibulum non lectus nulla. Ut sodales at nibh a dapibus. Mauris rhoncus erat ac arcu lobortis, efficitur aliquam eros dignissim. Mauris ultrices non est et vulputate. Morbi porttitor arcu commodo commodo vestibulum.\n\nPhasellus eu lobortis nisi, non dictum ex. Mauris id dui eget leo imperdiet cursus ac sed lorem. Cras finibus dolor erat, quis finibus libero malesuada id. Integer dapibus lectus sem, id auctor mi pretium sit amet. Etiam rhoncus augue in laoreet interdum. Integer aliquam dui vel ex tempor tempus. Vivamus blandit risus at mi mattis ultrices. Mauris magna metus, suscipit vel condimentum dictum, tristique luctus arcu. Integer sodales quam eu lorem efficitur condimentum nec a urna.\n\nPhasellus semper sapien ac ante dignissim bibendum. Vestibulum laoreet nisi ut varius pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam vitae libero nec lorem porttitor ornare eu eget velit. Cras nec felis in leo gravida feugiat. Sed et rutrum ante. Pellentesque vulputate urna euismod leo fringilla, et tristique erat maximus. Curabitur lobortis ex in ex tristique pretium. Nunc porta ut tortor sit amet vulputate. In suscipit nulla sed erat consectetur, eget faucibus velit faucibus. Nulla facilisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus molestie ligula sed lacus condimentum condimentum.\n\nVestibulum vitae turpis elementum, mattis quam non, sagittis tortor. Nam at ligula tincidunt, posuere tortor eu, commodo purus. Aliquam a purus vitae mi volutpat rhoncus ac vel justo. Ut urna diam, viverra scelerisque diam tempus, semper ultricies ligula. Maecenas volutpat cursus imperdiet. Etiam sagittis, elit vitae elementum feugiat, massa dui cursus arcu, eget vehicula lorem diam quis sapien. Duis nec enim eu dui vestibulum tristique. Sed viverra libero id erat eleifend, nec blandit risus pulvinar. Duis ac libero sed nunc gravida vulputate a eu tellus. Proin luctus accumsan leo, ullamcorper fringilla lacus mattis at. Cras eu ex egestas, imperdiet nibh et, suscipit leo. Vivamus interdum iaculis fermentum. Donec dignissim, lectus sed pretium consectetur, sapien velit tempor mi, et lacinia mi nulla sit amet velit. Maecenas vitae dui a libero consequat malesuada id quis sem. Nunc tempor in lectus ac convallis. Donec nec enim augue.', 0),
(2, 'salmaBoulif@gmail.com', 'djdlklskds', '0874333356227', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkXKGdKZxjWDJatds7-fvxpBzQe0fc8ON3Pw&usqp=CAU', 'eartyu', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(3, 'iamia@gmail.com', '03439420932', '02938438203', 'https://thumbs.dreamstime.com/b/ligne-color%C3%A9e-ic-ne-homme-d-affaires-d-homme-d-affaires-96713312.jpg', 'salma', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(4, 'fatin.chabab@mail.com', '0243843999', '343942343', 'https://png.pngtree.com/png-vector/20190525/ourlarge/pngtree-man-avatar-icon-professional-man-character-png-image_1055448.jpg', 'adnan', 'Je m’appelle Louis-Nicolas. Comme beaucoup de monde, j’ai eu du mal à commencer dans la vie active, à créer mes premiers projets, et à pouvoir coder exactement ce que j’avais en tête.\r\n\r\nIl y a environs un an, j’ai donc décidé de faire des formations pour éviter aux autres d’avoir les mêmes problèmes que moi, et surtout, pour créer LA formation sur PHP.\r\n\r\nDepuis, et avec le succès que cette dernière a rencontré, je me suis diversifié : HTML5, CSS3, SASS et maintenant BOOTSTRAP 4 ', 0),
(5, 'Johntaib1@gmail.com', '23232113', '232132323232', 'https://cdn2.vectorstock.com/i/1000x1000/62/01/medical-worker-health-professional-avatar-vector-27136201.jpg', 'admin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(6, 'Espero1234@gmail.com', 'etytytyt', '4543556565', 'https://cdn0.iconfinder.com/data/icons/education-and-school-flat-1/128/man_old_teacher_professor_teach_leader_avatar-512.png', 'adnan', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(7, 'souhaila.harrak.solicode@gmail.com', '0613476850', NULL, '', 'salma', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(8, 'souhaila.harrak.solicode@gmail.com', '0613476850', NULL, '', 'salma', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(9, 'sidiammisolicode@gmail.com', '0613476850', NULL, '', 'souhaila', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(10, 'sarasara@gmail.com', '0613476850', NULL, '', 'sara', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(11, 'sidiammisolicode@gmail.com', '0613476850', NULL, '', 'harrak', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(12, 'salma122@gmail.com', '1234567890', NULL, '', 'salma', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(13, 'salma123@gmail.com', '123456789', '0623157898', '', 'salmaaa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0),
(14, 'mouad@gmail.com', 'mouad123', '0675160221', 'poiuyfds', 'mouadox', 'etudiant', 1),
(15, 'gvgvnb@hghgh.com', '10101010', 'bnbn;,n,', '', 'souhaiila@soli', '', 1),
(16, 'salah250@gmail.com', '0613476850', '0613147685', '', 'salah', '', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `contenucours`
--
ALTER TABLE `contenucours`
  ADD PRIMARY KEY (`idContent`),
  ADD KEY `FK_association2` (`idCourse`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`idCourse`),
  ADD KEY `idCategorie` (`idCategorie`),
  ADD KEY `idProf` (`idProf`);

--
-- Index pour la table `detailsd_unscription`
--
ALTER TABLE `detailsd_unscription`
  ADD PRIMARY KEY (`idCourse`,`idEtudient`),
  ADD KEY `idEtudient` (`idEtudient`,`idCourse`) USING BTREE;

--
-- Index pour la table `etudient`
--
ALTER TABLE `etudient`
  ADD PRIMARY KEY (`idEtudient`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`idProf`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contenucours`
--
ALTER TABLE `contenucours`
  MODIFY `idContent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `idCourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `etudient`
--
ALTER TABLE `etudient`
  MODIFY `idEtudient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prof`
--
ALTER TABLE `prof`
  MODIFY `idProf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contenucours`
--
ALTER TABLE `contenucours`
  ADD CONSTRAINT `FK_association2` FOREIGN KEY (`idCourse`) REFERENCES `course` (`idCourse`);

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `idCategorie` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`idCategorie`),
  ADD CONSTRAINT `idProf` FOREIGN KEY (`idProf`) REFERENCES `prof` (`idProf`);

--
-- Contraintes pour la table `detailsd_unscription`
--
ALTER TABLE `detailsd_unscription`
  ADD CONSTRAINT `idCourse` FOREIGN KEY (`idCourse`) REFERENCES `course` (`idCourse`),
  ADD CONSTRAINT `idEtudient` FOREIGN KEY (`idEtudient`) REFERENCES `prof` (`idProf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
