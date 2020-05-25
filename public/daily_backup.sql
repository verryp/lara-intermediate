mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: mysql    Database: laravel-intermediate
-- ------------------------------------------------------
-- Server version	5.7.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'database','default','{\"displayName\":\"App\\\\Jobs\\\\SendmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendmailJob\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\SendmailJob\\\":8:{s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}','Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendmailJob has been attempted too many times or run too long. The job may have previously timed out. in /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:632\nStack trace:\n#0 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(165): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(162): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}(14, Array)\n#2 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(467): Swift_Transport_StreamBuffer->readLine(146)\n#3 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(339): Swift_Transport_AbstractSmtpTransport->getFullResponse(146)\n#4 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'EHLO [127.0.0.1...\', Array, Array, false, NULL)\n#5 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(338): Swift_Transport_EsmtpTransport->executeCommand(\'EHLO [127.0.0.1...\', Array)\n#6 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#7 /var/www/laravel-intermediate/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#8 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#9 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#10 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(185): Illuminate\\Mail\\Mailer->send(NULL, Array, Object(Closure))\n#11 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->raw(\'Do enim cupidat...\', Object(Closure))\n#12 /var/www/laravel-intermediate/app/Jobs/SendmailJob.php(54): Illuminate\\Support\\Facades\\Facade::__callStatic(\'raw\', Array)\n#13 [internal function]: App\\Jobs\\SendmailJob->handle()\n#14 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#15 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#20 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendmailJob))\n#21 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendmailJob))\n#22 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendmailJob), false)\n#24 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendmailJob))\n#25 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendmailJob))\n#26 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendmailJob))\n#28 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#36 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#41 /var/www/laravel-intermediate/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 /var/www/laravel-intermediate/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/laravel-intermediate/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/laravel-intermediate/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/laravel-intermediate/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/laravel-intermediate/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}','2020-05-25 10:54:54');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_resets_table',1),(6,'2019_08_19_000000_create_failed_jobs_table',1),(7,'2020_05_25_085458_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Roderick Kerluke','witting.fiona@example.com','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rAFkILNcR2','2020-05-25 09:54:35','2020-05-25 09:54:35'),(2,'Mrs. Verla Rodriguez IV','koch.belle@example.net','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ybS0EauEB9','2020-05-25 09:54:35','2020-05-25 09:54:35'),(3,'Scarlett Kemmer','virginie74@example.net','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8wZZNv3oiM','2020-05-25 09:54:35','2020-05-25 09:54:35'),(4,'Dr. Anastacio Stamm','deckow.deonte@example.net','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mXiWFPnfB5','2020-05-25 09:54:35','2020-05-25 09:54:35'),(5,'Prof. Justus Marvin MD','sortiz@example.org','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jQcrCPZAv7','2020-05-25 09:54:35','2020-05-25 09:54:35'),(6,'Mr. Stanton Lemke PhD','marvin.nona@example.net','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mzFdfghPRT','2020-05-25 09:54:35','2020-05-25 09:54:35'),(7,'Devante Daniel','wledner@example.com','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Wh56iqEDtc','2020-05-25 09:54:35','2020-05-25 09:54:35'),(8,'Dr. Cheyenne Walker PhD','diamond.purdy@example.org','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qjDgK0583a','2020-05-25 09:54:35','2020-05-25 09:54:35'),(9,'Lori Schaden','mbarton@example.net','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CNMezYToTi','2020-05-25 09:54:35','2020-05-25 09:54:35'),(10,'Karli Franecki','torp.billie@example.net','2020-05-25 09:54:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OlJR2tOhfZ','2020-05-25 09:54:35','2020-05-25 09:54:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-25 11:29:09
