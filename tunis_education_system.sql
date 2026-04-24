-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 24 déc. 2025 à 15:29
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tunis_education_system`
--

-- --------------------------------------------------------

--
-- Structure de la table `dropout_records`
--

CREATE TABLE `dropout_records` (
  `dropout_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `dropout_date` date DEFAULT NULL,
  `reason_code` varchar(20) DEFAULT NULL,
  `reason_description` text DEFAULT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `delegation` varchar(50) DEFAULT NULL,
  `reported_by` varchar(100) DEFAULT NULL,
  `family_income_category` varchar(20) DEFAULT NULL,
  `school_distance_km` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dropout_records`
--

INSERT INTO `dropout_records` (`dropout_id`, `student_id`, `dropout_date`, `reason_code`, `reason_description`, `school_name`, `delegation`, `reported_by`, `family_income_category`, `school_distance_km`) VALUES
(2001, 1001, '2021-03-15', 'FIN', 'Difficultés financières de la famille', 'Ibn Khaldoun', 'La Marsa', 'Principal Hassan', 'Low', 2.50),
(2002, 1002, '2021-04-20', 'MARRIAGE', 'Mariage précoce', 'Bourguiba High', 'Carthage', 'Counselor Amira', 'Medium', 3.80),
(2003, 1003, '2021-05-10', 'DISTANCE', 'Ecole trop éloignée du domicile', 'El Menzah Primary', 'El Menzah', 'Teacher Kamel', 'Low', 8.50),
(2004, 1004, '2021-06-05', 'ACADEMIC', 'Echec scolaire répété', 'Pilote Ariana', 'Ariana', 'Director Samira', 'Medium', 4.20),
(2005, 1005, '2021-09-12', 'FAMILY', 'Problèmes familiaux graves', 'Sadiki College', 'Tunis Centre', 'Social Worker Nadia', 'Low', 1.80),
(2006, 1006, '2021-10-22', 'FIN', 'Besoin de travailler pour famille', 'Averroes', 'La Goulette', 'Principal Farouk', 'Low', 5.30),
(2007, 1007, '2021-11-18', 'HEALTH', 'Problèmes de santé chroniques', 'Alaoui Lycee', 'Bab Bhar', 'Nurse Salma', 'Medium', 2.90),
(2008, 1008, '2022-01-25', 'FAMILY', 'Divorce des parents', 'Sidi Bou Said School', 'Sidi Bou Said', 'Teacher Rania', 'Medium', 6.70),
(2009, 1009, '2022-02-14', 'ACADEMIC', 'Difficultés d\'apprentissage', 'Khaznadar', 'Le Bardo', 'Counselor Moncef', 'Low', 3.10),
(2010, 1010, '2022-03-30', 'FIN', 'Impossibilité de payer frais', 'Rue du Pacha', 'Medina', 'Administrator Leila', 'Low', 4.50),
(2011, 1011, '2022-05-08', 'WORK', 'Opportunité d\'emploi', 'Hannibal College', 'La Marsa', 'Career Advisor Zied', 'Medium', 2.20),
(2012, 1012, '2022-06-20', 'DISTANCE', 'Transport trop coûteux', 'Gammarth Primary', 'La Marsa', 'Parent Rep Sonia', 'Low', 9.80),
(2013, 1013, '2022-09-15', 'ACADEMIC', 'Niveau trop difficile', 'Kheireddine', 'Carthage', 'Principal Ahmed', 'Medium', 3.70),
(2014, 1014, '2022-10-05', 'FAMILY', 'Déménagement urgent', 'Ennasr School', 'Ariana', 'Secretary Houda', 'Medium', 5.50),
(2015, 1015, '2022-11-22', 'FIN', 'Perte emploi parent', 'Menzah 6', 'El Menzah', 'Social Worker Imen', 'Low', 2.80),
(2016, 1016, '2023-01-10', 'MARRIAGE', 'Fiançailles familiales', 'Pilote Menzah', 'El Menzah', 'Counselor Nejla', 'Low', 4.10),
(2017, 1017, '2023-02-28', 'HEALTH', 'Accident grave', 'Bardo College', 'Le Bardo', 'Principal Tarek', 'Medium', 3.30),
(2018, 1018, '2023-04-12', 'ACADEMIC', 'Redoublement multiple', 'Mutuelle Ville', 'Centre Ville', 'Teacher Olfa', 'Low', 1.90),
(2019, 1019, '2023-05-30', 'WORK', 'Apprentissage mécanique', 'Technique La Marsa', 'La Marsa', 'Vocational Advisor Slim', 'Medium', 6.20),
(2020, 1020, '2023-06-18', 'DISTANCE', 'Pas de transport disponible', 'Lafayette', 'Centre Ville', 'Parent Fatiha', 'Low', 7.90),
(2021, 1021, '2023-07-12', 'FIN', 'Difficultés financières', 'Manar College', 'Manar', 'Principal Walid', 'Low', 3.20),
(2022, 1022, '2023-08-18', 'ACADEMIC', 'Redoublement', 'Bourguiba High', 'Carthage', 'Teacher Amina', 'Medium', 4.00),
(2023, 1023, '2023-09-05', 'DISTANCE', 'École éloignée', 'El Menzah Primary', 'El Menzah', 'Counselor Sami', 'Low', 7.50),
(2024, 1024, '2023-10-10', 'FAMILY', 'Problèmes familiaux', 'Pilote Ariana', 'Ariana', 'Social Worker Rania', 'Medium', 5.10),
(2025, 1025, '2023-11-20', 'WORK', 'Opportunité d\'emploi', 'Sadiki College', 'Tunis Centre', 'Career Advisor Hatem', 'Low', 2.30),
(2026, 1026, '2023-12-15', 'HEALTH', 'Problème de santé chronique', 'Ibn Khaldoun', 'La Marsa', 'Nurse Salma', 'Medium', 3.50),
(2027, 1027, '2024-01-05', 'MARRIAGE', 'Mariage précoce', 'Bourguiba High', 'Carthage', 'Counselor Amira', 'Low', 2.80),
(2028, 1028, '2024-02-12', 'ACADEMIC', 'Redoublement', 'El Menzah Primary', 'El Menzah', 'Teacher Kamel', 'Medium', 6.20),
(2029, 1029, '2024-03-20', 'DISTANCE', 'Transport indisponible', 'Pilote Ariana', 'Ariana', 'Parent Representative Houda', 'Low', 8.00),
(2030, 1030, '2024-04-05', 'FIN', 'Impossibilité de payer frais', 'Sadiki College', 'Tunis Centre', 'Social Worker Imen', 'Low', 1.90),
(2031, 1031, '2024-04-15', 'FAMILY', 'Problèmes familiaux graves', 'Manar College', 'Manar', 'Counselor Walid', 'Medium', 4.50),
(2032, 1032, '2024-04-22', 'WORK', 'Opportunité d\'emploi', 'Bourguiba High', 'Carthage', 'Career Advisor Sami', 'Low', 3.00),
(2033, 1033, '2024-05-02', 'FIN', 'Difficultés financières', 'El Menzah Primary', 'El Menzah', 'Principal Amina', 'Low', 5.70),
(2034, 1034, '2024-05-15', 'ACADEMIC', 'Redoublement répété', 'Pilote Ariana', 'Ariana', 'Teacher Rania', 'Medium', 2.90),
(2035, 1035, '2024-05-25', 'DISTANCE', 'École trop éloignée', 'Sadiki College', 'Tunis Centre', 'Counselor Hatem', 'Low', 6.80),
(2036, 1036, '2024-06-01', 'HEALTH', 'Maladie chronique', 'Ibn Khaldoun', 'La Marsa', 'Nurse Salma', 'Medium', 3.60),
(2037, 1037, '2024-06-10', 'FAMILY', 'Difficultés familiales', 'Bourguiba High', 'Carthage', 'Social Worker Amira', 'Low', 4.20),
(2038, 1038, '2024-06-18', 'WORK', 'Apprentissage/emploi', 'El Menzah Primary', 'El Menzah', 'Career Advisor Sami', 'Medium', 5.90),
(2039, 1039, '2024-06-25', 'FIN', 'Perte de revenu familial', 'Pilote Ariana', 'Ariana', 'Principal Rania', 'Low', 3.70),
(2040, 1040, '2024-07-05', 'ACADEMIC', 'Échec scolaire répété', 'Sadiki College', 'Tunis Centre', 'Teacher Hatem', 'Medium', 4.10),
(2041, 1041, '2024-07-12', 'FIN', 'Difficultés financières', 'Ibn Khaldoun', 'La Marsa', 'Principal Walid', 'Low', 3.00),
(2042, 1042, '2024-07-18', 'DISTANCE', 'École trop éloignée', 'Bourguiba High', 'Carthage', 'Counselor Amira', 'Medium', 6.50),
(2043, 1043, '2024-07-25', 'FAMILY', 'Problèmes familiaux graves', 'El Menzah Primary', 'El Menzah', 'Social Worker Sami', 'Low', 5.80),
(2044, 1044, '2024-08-02', 'HEALTH', 'Maladie chronique', 'Pilote Ariana', 'Ariana', 'Nurse Rania', 'Medium', 4.30),
(2045, 1045, '2024-08-08', 'WORK', 'Opportunité d\'emploi', 'Sadiki College', 'Tunis Centre', 'Career Advisor Hatem', 'Low', 2.70),
(2046, 1046, '2024-08-15', 'ACADEMIC', 'Redoublement répété', 'Ibn Khaldoun', 'La Marsa', 'Teacher Salma', 'Medium', 3.90),
(2047, 1047, '2024-08-22', 'DISTANCE', 'Transport indisponible', 'Bourguiba High', 'Carthage', 'Counselor Amira', 'Low', 7.00),
(2048, 1048, '2024-08-30', 'FIN', 'Impossibilité de payer frais', 'El Menzah Primary', 'El Menzah', 'Principal Sami', 'Low', 3.50),
(2049, 1049, '2024-09-05', 'FAMILY', 'Difficultés familiales', 'Pilote Ariana', 'Ariana', 'Social Worker Rania', 'Medium', 4.60),
(2050, 1050, '2024-09-12', 'HEALTH', 'Problème de santé chronique', 'Sadiki College', 'Tunis Centre', 'Nurse Imen', 'Low', 3.80),
(2051, 1051, '2024-09-18', 'WORK', 'Stage/emploi proposé', 'Ibn Khaldoun', 'La Marsa', 'Career Advisor Walid', 'Medium', 2.50),
(2052, 1052, '2024-09-25', 'ACADEMIC', 'Échec scolaire répété', 'Bourguiba High', 'Carthage', 'Teacher Salma', 'Medium', 4.20),
(2053, 1053, '2024-10-02', 'DISTANCE', 'École trop éloignée', 'El Menzah Primary', 'El Menzah', 'Counselor Sami', 'Low', 6.00),
(2054, 1054, '2024-10-08', 'FIN', 'Perte de revenu familial', 'Pilote Ariana', 'Ariana', 'Principal Rania', 'Low', 3.40),
(2055, 1055, '2024-10-15', 'FAMILY', 'Problèmes familiaux graves', 'Sadiki College', 'Tunis Centre', 'Social Worker Hatem', 'Medium', 4.50),
(2056, 1056, '2024-10-22', 'HEALTH', 'Maladie chronique', 'Ibn Khaldoun', 'La Marsa', 'Nurse Walid', 'Medium', 3.10),
(2057, 1057, '2024-10-28', 'WORK', 'Apprentissage/emploi', 'Bourguiba High', 'Carthage', 'Career Advisor Amira', 'Low', 2.90),
(2058, 1058, '2024-11-05', 'ACADEMIC', 'Redoublement répété', 'El Menzah Primary', 'El Menzah', 'Teacher Sami', 'Medium', 5.00),
(2059, 1059, '2024-11-12', 'DISTANCE', 'Transport indisponible', 'Pilote Ariana', 'Ariana', 'Counselor Rania', 'Low', 6.70),
(2060, 1060, '2024-11-20', 'FIN', 'Impossibilité de payer frais', 'Sadiki College', 'Tunis Centre', 'Principal Hatem', 'Low', 3.20),
(2061, 1061, '2024-11-25', 'FAMILY', 'Difficultés familiales graves', 'Ibn Khaldoun', 'La Marsa', 'Social Worker Walid', 'Medium', 4.00),
(2062, 1062, '2024-12-02', 'HEALTH', 'Problème de santé chronique', 'Bourguiba High', 'Carthage', 'Nurse Amira', 'Medium', 3.60),
(2063, 1063, '2024-12-08', 'WORK', 'Opportunité d\'emploi', 'El Menzah Primary', 'El Menzah', 'Career Advisor Sami', 'Low', 2.80),
(2064, 1064, '2024-12-15', 'ACADEMIC', 'Échec scolaire répété', 'Pilote Ariana', 'Ariana', 'Teacher Rania', 'Medium', 4.40),
(2065, 1065, '2024-12-20', 'DISTANCE', 'École éloignée', 'Sadiki College', 'Tunis Centre', 'Counselor Hatem', 'Low', 7.10),
(2066, 1066, '2024-12-27', 'FIN', 'Difficultés financières', 'Ibn Khaldoun', 'La Marsa', 'Principal Walid', 'Low', 3.30),
(2067, 1067, '2025-01-03', 'FAMILY', 'Problèmes familiaux graves', 'Bourguiba High', 'Carthage', 'Social Worker Amira', 'Medium', 4.50),
(2068, 1068, '2025-01-10', 'HEALTH', 'Maladie chronique', 'El Menzah Primary', 'El Menzah', 'Nurse Sami', 'Medium', 3.70),
(2069, 1069, '2025-01-18', 'WORK', 'Stage/emploi proposé', 'Pilote Ariana', 'Ariana', 'Career Advisor Rania', 'Low', 2.60),
(2070, 1070, '2025-01-25', 'ACADEMIC', 'Redoublement répété', 'Sadiki College', 'Tunis Centre', 'Teacher Hatem', 'Medium', 4.20),
(2071, 1071, '2025-02-01', 'DISTANCE', 'Transport indisponible', 'Ibn Khaldoun', 'La Marsa', 'Counselor Walid', 'Low', 6.30),
(2072, 1072, '2025-02-08', 'FIN', 'Perte de revenu familial', 'Bourguiba High', 'Carthage', 'Principal Amira', 'Low', 3.10),
(2073, 1073, '2025-02-15', 'FAMILY', 'Difficultés familiales graves', 'El Menzah Primary', 'El Menzah', 'Social Worker Sami', 'Medium', 5.00),
(2074, 1074, '2025-02-22', 'HEALTH', 'Maladie chronique', 'Pilote Ariana', 'Ariana', 'Nurse Rania', 'Medium', 4.00),
(2075, 1075, '2025-03-01', 'WORK', 'Opportunité d\'emploi', 'Sadiki College', 'Tunis Centre', 'Career Advisor Hatem', 'Low', 2.90),
(2076, 1076, '2025-03-08', 'ACADEMIC', 'Redoublement répété', 'Ibn Khaldoun', 'La Marsa', 'Teacher Walid', 'Medium', 3.80),
(2077, 1077, '2025-03-15', 'DISTANCE', 'École trop éloignée', 'Bourguiba High', 'Carthage', 'Counselor Amira', 'Low', 6.90),
(2078, 1078, '2025-03-22', 'FIN', 'Difficultés financières', 'El Menzah Primary', 'El Menzah', 'Principal Sami', 'Low', 3.50),
(2079, 1079, '2025-03-30', 'FAMILY', 'Problèmes familiaux graves', 'Pilote Ariana', 'Ariana', 'Social Worker Rania', 'Medium', 4.30),
(2080, 1080, '2025-04-05', 'HEALTH', 'Maladie chronique', 'Sadiki College', 'Tunis Centre', 'Nurse Hatem', 'Medium', 3.90);

-- --------------------------------------------------------

--
-- Structure de la table `reintegration_tracking`
--

CREATE TABLE `reintegration_tracking` (
  `reintegration_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `dropout_id` int(11) DEFAULT NULL,
  `program_code` varchar(50) DEFAULT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `cost_tnd` decimal(10,2) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reintegration_tracking`
--

INSERT INTO `reintegration_tracking` (`reintegration_id`, `student_id`, `dropout_id`, `program_code`, `program_name`, `start_date`, `completion_date`, `status`, `success`, `cost_tnd`, `notes`) VALUES
(3001, 1001, 2001, 'ESPOIR', 'Programme Espoir', '2021-09-01', '2022-06-30', 'Completed', 1, 1200.00, 'Réintégré avec succès en 2ème année collège'),
(3002, 1002, 2002, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Mariée, pas de tentative'),
(3003, 1003, 2003, 'ESPOIR', 'Programme Espoir', '2021-10-15', '2022-09-01', 'Completed', 1, 1500.00, 'Transport fourni par programme'),
(3004, 1004, 2004, 'FP', 'Formation Professionnelle Rapide', '2021-11-01', '2022-03-15', 'Completed', 1, 2800.00, 'Formation couture, emploi trouvé'),
(3005, 1005, 2005, 'COMMUNITY', 'Insertion Communautaire', '2022-01-10', '2022-09-20', 'Completed', 1, 950.00, 'Support psychologique efficace'),
(3006, 1006, 2006, 'FP', 'Formation Professionnelle Rapide', '2022-03-01', '2022-07-30', 'Completed', 1, 2600.00, 'Coiffure, certificat obtenu'),
(3007, 1007, 2007, 'ESPOIR', 'Programme Espoir', '2022-04-15', NULL, 'Dropped out', 0, 600.00, 'Santé toujours problématique'),
(3008, 1008, 2008, 'COMMUNITY', 'Insertion Communautaire', '2022-06-01', '2023-01-15', 'Completed', 1, 1100.00, 'Médiation familiale réussie'),
(3009, 1009, 2009, 'SECOND', 'Chance Seconde', '2022-09-01', '2023-06-20', 'Completed', 1, 1800.00, 'Classes adaptées, bon résultat'),
(3010, 1010, 2010, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Pas de ressources famille'),
(3011, 1011, 2011, 'FP', 'Formation Professionnelle Rapide', '2022-10-01', '2023-02-28', 'Completed', 1, 2900.00, 'Electricité, embauché rapidement'),
(3012, 1012, 2012, 'ESPOIR', 'Programme Espoir', '2023-01-15', NULL, 'In progress', NULL, 800.00, 'Transport scolaire ajouté'),
(3013, 1013, 2013, 'SECOND', 'Chance Seconde', '2023-03-01', '2024-01-20', 'Completed', 1, 2100.00, 'Rythme adapté, succès'),
(3014, 1014, 2014, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Famille déménagée loin'),
(3015, 1015, 2015, 'COMMUNITY', 'Insertion Communautaire', '2023-04-01', '2023-11-30', 'Completed', 1, 1050.00, 'Aide financière fournie'),
(3016, 1016, 2016, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Mariée, pas intéressée'),
(3017, 1017, 2017, 'ESPOIR', 'Programme Espoir', '2023-09-01', NULL, 'In progress', NULL, 900.00, 'Rééducation en cours'),
(3018, 1018, 2018, 'SECOND', 'Chance Seconde', '2023-10-15', '2024-06-30', 'Completed', 1, 1950.00, 'Orientation professionnelle'),
(3019, 1019, 2019, 'FP', 'Formation Professionnelle Rapide', '2023-11-01', '2024-03-15', 'Completed', 1, 3100.00, 'Mécanique auto, stage entreprise'),
(3020, 1020, 2020, 'ESPOIR', 'Programme Espoir', '2024-01-10', NULL, 'In progress', NULL, 700.00, 'Transport organisé'),
(3031, 1031, 2031, 'ESPOIR', 'Programme Espoir', '2024-07-15', NULL, 'In progress', NULL, 880.00, 'Transport et soutien pédagogique'),
(3032, 1032, 2032, 'FP', 'Formation Professionnelle Rapide', '2024-08-01', NULL, 'In progress', NULL, 2700.00, 'Stage entreprise en cours'),
(3033, 1033, 2033, 'COMMUNITY', 'Insertion Communautaire', '2024-08-10', NULL, 'In progress', NULL, 1250.00, 'Médiation familiale initiée'),
(3034, 1034, 2034, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Pas intéressé par le programme'),
(3035, 1035, 2035, 'SECOND', 'Chance Seconde', '2024-08-20', NULL, 'In progress', NULL, 1900.00, 'Classes adaptées pour apprentissage'),
(3036, 1036, 2036, 'ESPOIR', 'Programme Espoir', '2024-09-01', NULL, 'In progress', NULL, 950.00, 'Soutien psychologique fourni'),
(3037, 1037, 2037, 'FP', 'Formation Professionnelle Rapide', '2024-09-10', NULL, 'In progress', NULL, 3000.00, 'Stage entreprise commencé'),
(3038, 1038, 2038, 'COMMUNITY', 'Insertion Communautaire', '2024-09-15', NULL, 'In progress', NULL, 1150.00, 'Médiation familiale en cours'),
(3039, 1039, 2039, 'SECOND', 'Chance Seconde', '2024-10-01', NULL, 'In progress', NULL, 2000.00, 'Orientation professionnelle'),
(3040, 1040, 2040, 'ESPOIR', 'Programme Espoir', '2024-10-05', NULL, 'In progress', NULL, 870.00, 'Soutien scolaire et transport'),
(3041, 1041, 2041, 'FP', 'Formation Professionnelle Rapide', '2024-10-10', NULL, 'In progress', NULL, 2800.00, 'Stage en entreprise en cours'),
(3042, 1042, 2042, 'COMMUNITY', 'Insertion Communautaire', '2024-10-15', NULL, 'In progress', NULL, 1200.00, 'Soutien familial et suivi'),
(3043, 1043, 2043, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Famille déménagée loin'),
(3044, 1044, 2044, 'SECOND', 'Chance Seconde', '2024-10-20', NULL, 'In progress', NULL, 1950.00, 'Classes adaptées pour apprentissage'),
(3045, 1045, 2045, 'ESPOIR', 'Programme Espoir', '2024-11-01', NULL, 'In progress', NULL, 900.00, 'Soutien psychologique et transport'),
(3046, 1046, 2046, 'FP', 'Formation Professionnelle Rapide', '2024-11-05', NULL, 'In progress', NULL, 3100.00, 'Stage entreprise commencé'),
(3047, 1047, 2047, 'COMMUNITY', 'Insertion Communautaire', '2024-11-10', NULL, 'In progress', NULL, 1150.00, 'Médiation familiale'),
(3048, 1048, 2048, 'SECOND', 'Chance Seconde', '2024-11-15', NULL, 'In progress', NULL, 2000.00, 'Orientation professionnelle'),
(3049, 1049, 2049, 'ESPOIR', 'Programme Espoir', '2024-12-01', NULL, 'In progress', NULL, 880.00, 'Soutien scolaire et transport'),
(3050, 1050, 2050, 'FP', 'Formation Professionnelle Rapide', '2024-12-05', NULL, 'In progress', NULL, 2900.00, 'Stage en entreprise'),
(3051, 1051, 2051, 'COMMUNITY', 'Insertion Communautaire', '2024-12-10', NULL, 'In progress', NULL, 1200.00, 'Médiation familiale en cours'),
(3052, 1052, 2052, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Pas intéressé par le programme'),
(3053, 1053, 2053, 'SECOND', 'Chance Seconde', '2024-12-15', NULL, 'In progress', NULL, 1950.00, 'Classes adaptées pour apprentissage'),
(3054, 1054, 2054, 'ESPOIR', 'Programme Espoir', '2025-01-01', NULL, 'In progress', NULL, 900.00, 'Soutien psychologique fourni'),
(3055, 1055, 2055, 'FP', 'Formation Professionnelle Rapide', '2025-01-05', NULL, 'In progress', NULL, 3000.00, 'Stage entreprise commencé'),
(3056, 1056, 2056, 'COMMUNITY', 'Insertion Communautaire', '2025-01-10', NULL, 'In progress', NULL, 1100.00, 'Médiation familiale en cours'),
(3057, 1057, 2057, 'SECOND', 'Chance Seconde', '2025-01-15', NULL, 'In progress', NULL, 2000.00, 'Orientation professionnelle'),
(3058, 1058, 2058, 'ESPOIR', 'Programme Espoir', '2025-02-01', NULL, 'In progress', NULL, 870.00, 'Soutien scolaire et transport'),
(3059, 1059, 2059, 'FP', 'Formation Professionnelle Rapide', '2025-02-05', NULL, 'In progress', NULL, 2800.00, 'Stage en entreprise'),
(3060, 1060, 2060, 'COMMUNITY', 'Insertion Communautaire', '2025-02-10', NULL, 'In progress', NULL, 1200.00, 'Médiation familiale'),
(3061, 1061, 2061, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Famille déménagée loin'),
(3062, 1062, 2062, 'SECOND', 'Chance Seconde', '2025-02-15', NULL, 'In progress', NULL, 1950.00, 'Classes adaptées pour apprentissage'),
(3063, 1063, 2063, 'ESPOIR', 'Programme Espoir', '2025-03-01', NULL, 'In progress', NULL, 900.00, 'Soutien psychologique et transport'),
(3064, 1064, 2064, 'FP', 'Formation Professionnelle Rapide', '2025-03-05', NULL, 'In progress', NULL, 3100.00, 'Stage entreprise en cours'),
(3065, 1065, 2065, 'COMMUNITY', 'Insertion Communautaire', '2025-03-10', NULL, 'In progress', NULL, 1150.00, 'Médiation familiale'),
(3066, 1066, 2066, 'SECOND', 'Chance Seconde', '2025-03-15', NULL, 'In progress', NULL, 2000.00, 'Orientation professionnelle'),
(3067, 1067, 2067, 'ESPOIR', 'Programme Espoir', '2025-04-01', NULL, 'In progress', NULL, 880.00, 'Soutien scolaire et transport'),
(3068, 1068, 2068, 'FP', 'Formation Professionnelle Rapide', '2025-04-05', NULL, 'In progress', NULL, 2900.00, 'Stage en entreprise'),
(3069, 1069, 2069, 'COMMUNITY', 'Insertion Communautaire', '2025-04-10', NULL, 'In progress', NULL, 1200.00, 'Médiation familiale en cours'),
(3070, 1070, 2070, 'SECOND', 'Chance Seconde', '2025-04-15', NULL, 'In progress', NULL, 1950.00, 'Classes adaptées pour apprentissage'),
(3071, 1071, 2071, 'ESPOIR', 'Programme Espoir', '2025-05-01', NULL, 'In progress', NULL, 900.00, 'Soutien psychologique fourni'),
(3072, 1072, 2072, 'FP', 'Formation Professionnelle Rapide', '2025-05-05', NULL, 'In progress', NULL, 3000.00, 'Stage entreprise commencé'),
(3073, 1073, 2073, 'COMMUNITY', 'Insertion Communautaire', '2025-05-10', NULL, 'In progress', NULL, 1100.00, 'Médiation familiale en cours'),
(3074, 1074, 2074, 'SECOND', 'Chance Seconde', '2025-05-15', NULL, 'In progress', NULL, 2000.00, 'Orientation professionnelle'),
(3075, 1075, 2075, 'ESPOIR', 'Programme Espoir', '2025-06-01', NULL, 'In progress', NULL, 870.00, 'Soutien scolaire et transport'),
(3076, 1076, 2076, 'FP', 'Formation Professionnelle Rapide', '2025-06-05', NULL, 'In progress', NULL, 2800.00, 'Stage en entreprise'),
(3077, 1077, 2077, 'COMMUNITY', 'Insertion Communautaire', '2025-06-10', NULL, 'In progress', NULL, 1200.00, 'Médiation familiale'),
(3078, 1078, 2078, NULL, NULL, NULL, NULL, 'Not enrolled', 0, NULL, 'Pas intéressé par le programme'),
(3079, 1079, 2079, 'SECOND', 'Chance Seconde', '2025-06-15', NULL, 'In progress', NULL, 1950.00, 'Classes adaptées pour apprentissage'),
(3080, 1080, 2080, 'ESPOIR', 'Programme Espoir', '2025-07-01', NULL, 'In progress', NULL, 900.00, 'Soutien psychologique et transport');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL,
  `education_level` varchar(50) DEFAULT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `delegation` varchar(50) DEFAULT NULL,
  `parent_phone` varchar(20) DEFAULT NULL,
  `home_address` text DEFAULT NULL,
  `has_internet` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `enrollment_date`, `education_level`, `school_name`, `delegation`, `parent_phone`, `home_address`, `has_internet`) VALUES
(1001, 'Mohamed', 'Ben Ahmed', '2008-05-15', 'M', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '98123456', NULL, 1),
(1002, 'Fatma', 'Trabelsi', '2007-03-20', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '98234567', NULL, 1),
(1003, 'Ahmed', 'Jaziri', '2010-11-08', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '98345678', NULL, 0),
(1004, 'Salma', 'Khelifi', '2006-07-12', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '98456789', NULL, 1),
(1005, 'Youssef', 'Hamdi', '2009-02-25', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '98567890', NULL, 1),
(1006, 'Nour', 'Mansour', '2008-09-14', 'F', '2014-09-01', 'Collège', 'Averroes', 'La Goulette', '98678901', NULL, 0),
(1007, 'Amine', 'Bouaziz', '2007-12-30', 'M', '2013-09-01', 'Lycée', 'Alaoui Lycee', 'Bab Bhar', '98789012', NULL, 1),
(1008, 'Mariem', 'Said', '2011-04-18', 'F', '2017-09-01', 'Primaire', 'Sidi Bou Said School', 'Sidi Bou Said', '98890123', NULL, 1),
(1009, 'Karim', 'Dridi', '2008-08-22', 'M', '2014-09-01', 'Collège', 'Khaznadar', 'Le Bardo', '98901234', NULL, 0),
(1010, 'Leila', 'Ferchichi', '2006-01-05', 'F', '2012-09-01', 'Lycée', 'Rue du Pacha', 'Medina', '98012345', NULL, 1),
(1011, 'Rami', 'Boussetta', '2009-06-11', 'M', '2015-09-01', 'Collège', 'Hannibal College', 'La Marsa', '97123456', NULL, 1),
(1012, 'Yasmine', 'Touati', '2010-10-03', 'F', '2016-09-01', 'Primaire', 'Gammarth Primary', 'La Marsa', '97234567', NULL, 1),
(1013, 'Mehdi', 'Rekik', '2007-05-28', 'M', '2013-09-01', 'Lycée', 'Kheireddine', 'Carthage', '97345678', NULL, 0),
(1014, 'Sarra', 'Mrad', '2011-09-17', 'F', '2017-09-01', 'Primaire', 'Ennasr School', 'Ariana', '97456789', NULL, 1),
(1015, 'Bilel', 'Ghanmi', '2008-03-09', 'M', '2014-09-01', 'Collège', 'Menzah 6', 'El Menzah', '97567890', NULL, 0),
(1016, 'Rim', 'Jemli', '2006-11-21', 'F', '2012-09-01', 'Lycée', 'Pilote Menzah', 'El Menzah', '97678901', NULL, 1),
(1017, 'Aymen', 'Chouchane', '2009-08-15', 'M', '2015-09-01', 'Collège', 'Bardo College', 'Le Bardo', '97789012', NULL, 1),
(1018, 'Emna', 'Abidi', '2010-04-29', 'F', '2016-09-01', 'Primaire', 'Mutuelle Ville', 'Centre Ville', '97890123', NULL, 0),
(1019, 'Oussama', 'Kraiem', '2007-02-14', 'M', '2013-09-01', 'Lycée', 'Technique La Marsa', 'La Marsa', '97901234', NULL, 1),
(1020, 'Dorra', 'Zaouali', '2011-07-06', 'F', '2017-09-01', 'Primaire', 'Lafayette', 'Centre Ville', '97012345', NULL, 1),
(1021, 'Sami', 'Ben Romdhane', '2008-12-11', 'M', '2014-09-01', 'Collège', 'Manar College', 'Manar', '97123457', NULL, 1),
(1022, 'Salma', 'Benzarti', '2007-05-09', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97234568', NULL, 1),
(1023, 'Omar', 'Haddad', '2010-03-18', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97345679', NULL, 0),
(1024, 'Ines', 'Sghaier', '2006-10-22', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97456780', NULL, 1),
(1025, 'Nabil', 'Ghribi', '2009-06-30', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97567891', NULL, 1),
(1026, 'Leila', 'Hassine', '2008-01-12', 'F', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '97678912', NULL, 1),
(1027, 'Yassine', 'Cherif', '2007-11-20', 'M', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97789023', NULL, 0),
(1028, 'Amira', 'Bouhlel', '2010-07-15', 'F', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97890134', NULL, 1),
(1029, 'Houssem', 'Kallel', '2006-03-18', 'M', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97901245', NULL, 1),
(1030, 'Sara', 'Ben Salah', '2009-09-10', 'F', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97012356', NULL, 0),
(1031, 'Aymen', 'Trabelsi', '2008-04-21', 'M', '2014-09-01', 'Collège', 'Manar College', 'Manar', '97123458', NULL, 1),
(1032, 'Rim', 'Chouchane', '2007-08-16', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97234569', NULL, 1),
(1033, 'Ali', 'Jaziri', '2010-12-02', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97345680', NULL, 0),
(1034, 'Sarra', 'Mrad', '2006-06-14', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97456781', NULL, 1),
(1035, 'Bilel', 'Ghanmi', '2009-03-19', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97567892', NULL, 0),
(1036, 'Nour', 'Jemli', '2008-11-21', 'F', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '97678913', NULL, 1),
(1037, 'Aymen', 'Chouchane', '2007-08-15', 'M', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97789024', NULL, 1),
(1038, 'Emna', 'Abidi', '2010-04-29', 'F', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97890135', NULL, 0),
(1039, 'Oussama', 'Kraiem', '2007-02-14', 'M', '2013-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97901246', NULL, 1),
(1040, 'Dorra', 'Zaouali', '2011-07-06', 'F', '2017-09-01', 'Primaire', 'Sadiki College', 'Tunis Centre', '97012357', NULL, 1),
(1041, 'Sami', 'Ben Romdhane', '2008-12-11', 'M', '2014-09-01', 'Collège', 'Manar College', 'Manar', '97123459', NULL, 1),
(1042, 'Salma', 'Benzarti', '2007-05-09', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97234570', NULL, 1),
(1043, 'Omar', 'Haddad', '2010-03-18', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97345681', NULL, 0),
(1044, 'Ines', 'Sghaier', '2006-10-22', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97456782', NULL, 1),
(1045, 'Nabil', 'Ghribi', '2009-06-30', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97567893', NULL, 1),
(1046, 'Leila', 'Hassine', '2008-01-12', 'F', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '97678914', NULL, 1),
(1047, 'Yassine', 'Cherif', '2007-11-20', 'M', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97789025', NULL, 0),
(1048, 'Amira', 'Bouhlel', '2010-07-15', 'F', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97890136', NULL, 1),
(1049, 'Houssem', 'Kallel', '2006-03-18', 'M', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97901247', NULL, 1),
(1050, 'Sara', 'Ben Salah', '2009-09-10', 'F', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97012358', NULL, 0),
(1051, 'Aymen', 'Trabelsi', '2008-04-21', 'M', '2014-09-01', 'Collège', 'Manar College', 'Manar', '97123460', NULL, 1),
(1052, 'Rim', 'Chouchane', '2007-08-16', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97234571', NULL, 1),
(1053, 'Ali', 'Jaziri', '2010-12-02', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97345682', NULL, 0),
(1054, 'Sarra', 'Mrad', '2006-06-14', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97456783', NULL, 1),
(1055, 'Bilel', 'Ghanmi', '2009-03-19', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97567894', NULL, 0),
(1056, 'Nour', 'Jemli', '2008-11-21', 'F', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '97678915', NULL, 1),
(1057, 'Aymen', 'Chouchane', '2007-08-15', 'M', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97789026', NULL, 1),
(1058, 'Emna', 'Abidi', '2010-04-29', 'F', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97890137', NULL, 0),
(1059, 'Oussama', 'Kraiem', '2007-02-14', 'M', '2013-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97901248', NULL, 1),
(1060, 'Dorra', 'Zaouali', '2011-07-06', 'F', '2017-09-01', 'Primaire', 'Sadiki College', 'Tunis Centre', '97012359', NULL, 1),
(1061, 'Sami', 'Ben Romdhane', '2008-12-11', 'M', '2014-09-01', 'Collège', 'Manar College', 'Manar', '97123461', NULL, 1),
(1062, 'Salma', 'Benzarti', '2007-05-09', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97234572', NULL, 1),
(1063, 'Omar', 'Haddad', '2010-03-18', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97345683', NULL, 0),
(1064, 'Ines', 'Sghaier', '2006-10-22', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97456784', NULL, 1),
(1065, 'Nabil', 'Ghribi', '2009-06-30', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97567895', NULL, 1),
(1066, 'Leila', 'Hassine', '2008-01-12', 'F', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '97678916', NULL, 1),
(1067, 'Yassine', 'Cherif', '2007-11-20', 'M', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97789027', NULL, 0),
(1068, 'Amira', 'Bouhlel', '2010-07-15', 'F', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97890138', NULL, 1),
(1069, 'Houssem', 'Kallel', '2006-03-18', 'M', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97901249', NULL, 1),
(1070, 'Sara', 'Ben Salah', '2009-09-10', 'F', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97012360', NULL, 0),
(1071, 'Aymen', 'Trabelsi', '2008-04-21', 'M', '2014-09-01', 'Collège', 'Manar College', 'Manar', '97123462', NULL, 1),
(1072, 'Rim', 'Chouchane', '2007-08-16', 'F', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97234573', NULL, 1),
(1073, 'Ali', 'Jaziri', '2010-12-02', 'M', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97345684', NULL, 0),
(1074, 'Sarra', 'Mrad', '2006-06-14', 'F', '2012-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97456785', NULL, 1),
(1075, 'Bilel', 'Ghanmi', '2009-03-19', 'M', '2015-09-01', 'Collège', 'Sadiki College', 'Tunis Centre', '97567896', NULL, 0),
(1076, 'Nour', 'Jemli', '2008-11-21', 'F', '2014-09-01', 'Collège', 'Ibn Khaldoun', 'La Marsa', '97678917', NULL, 1),
(1077, 'Aymen', 'Chouchane', '2007-08-15', 'M', '2013-09-01', 'Lycée', 'Bourguiba High', 'Carthage', '97789028', NULL, 1),
(1078, 'Emna', 'Abidi', '2010-04-29', 'F', '2016-09-01', 'Primaire', 'El Menzah Primary', 'El Menzah', '97890139', NULL, 0),
(1079, 'Oussama', 'Kraiem', '2007-02-14', 'M', '2013-09-01', 'Lycée', 'Pilote Ariana', 'Ariana', '97901250', NULL, 1),
(1080, 'Dorra', 'Zaouali', '2011-07-06', 'F', '2017-09-01', 'Primaire', 'Sadiki College', 'Tunis Centre', '97012361', NULL, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dropout_records`
--
ALTER TABLE `dropout_records`
  ADD PRIMARY KEY (`dropout_id`);

--
-- Index pour la table `reintegration_tracking`
--
ALTER TABLE `reintegration_tracking`
  ADD PRIMARY KEY (`reintegration_id`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
