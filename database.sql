SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE IF NOT EXISTS corrige (
  id_examen int(11) NOT NULL,
  id_enseignant int(11) NOT NULL,
  PRIMARY KEY (id_examen,id_enseignant),
  KEY id_enseignant (id_enseignant)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table corrige
--

INSERT INTO corrige (id_examen, id_enseignant) VALUES
(1, 3),
(1, 16),
(2, 9),
(2, 18),
(3, 5),
(4, 8),
(5, 1),
(5, 2),
(5, 6),
(6, 7),
(7, 4),
(8, 1),
(8, 2),
(8, 16),
(9, 11),
(9, 17),
(10, 10),
(10, 19),
(11, 12),
(11, 20),
(12, 13),
(12, 16),
(13, 14),
(13, 18),
(14, 15),
(14, 19),
(15, 16),
(16, 18),
(17, 19),
(18, 20),
(19, 1),
(19, 2),
(23, 3),
(24, 9),
(25, 1),
(26, 17),
(27, 10),
(28, 11),
(29, 1),
(29, 6),
(30, 7),
(30, 20),
(31, 4),
(31, 15),
(32, 2),
(33, 1),
(33, 6),
(34, 2),
(34, 9),
(35, 1),
(35, 13),
(36, 2),
(36, 6);

-- --------------------------------------------------------

--
-- Table structure for table cours
--

CREATE TABLE IF NOT EXISTS cours (
  id_cours int(11) NOT NULL,
  intitule varchar(200) NOT NULL,
  semestre int(11) NOT NULL,
  coefficient decimal(3,2) NOT NULL,
  PRIMARY KEY (id_cours)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table cours
--

INSERT INTO cours (id_cours, intitule, semestre, coefficient) VALUES
(1, 'Compilation', 1, 1.50),
(2, 'Base de donnÃ©es', 1, 2.00),
(3, 'ModÃ©lisation objet', 1, 1.50),
(4, 'Programmation objet', 1, 2.00),
(5, 'Algorithmique', 1, 2.00),
(6, 'Information et communication', 1, 1.00),
(7, 'RÃ©seau', 1, 1.50),
(8, 'Intelligence Artificielle', 2, 2.00),
(9, 'DÃ©veloppement web', 2, 2.00),
(10, 'GÃ©nie logiciel', 2, 1.50),
(11, 'SÃ©curitÃ© informatique', 2, 1.50),
(12, 'SystÃ¨mes distribuÃ©s', 2, 2.00),
(13, 'Bases de donnÃ©es avancÃ©es', 2, 2.00),
(14, 'RÃ©seaux avancÃ©s', 2, 1.50);

-- --------------------------------------------------------

--
-- Table structure for table enseignant
--

CREATE TABLE IF NOT EXISTS enseignant (
  id_enseignant int(11) NOT NULL,
  nom varchar(100) NOT NULL,
  prenom varchar(100) NOT NULL,
  email varchar(255) NOT NULL,
  grade varchar(50) NOT NULL,
  specialite varchar(150) NOT NULL,
  PRIMARY KEY (id_enseignant),
  UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table enseignant
--

INSERT INTO enseignant (id_enseignant, nom, prenom, email, grade, specialite) VALUES
(1, 'Aitbraham', 'Rayane', 'rayane.aitbraham@univ.edu', 'Professeur', 'Intelligence Artificielle'),
(2, 'Benrabah', 'Salah', 'salah.benrabah@univ.edu', 'Professeur', 'Intelligence Artificielle'),
(3, 'Chen', 'Wei', 'wei.chen@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'Compilation'),
(4, 'Yamamoto', 'Kenji', 'kenji.yamamoto@univ.edu', 'Professeur', 'RÃ©seau'),
(5, 'Al-Mansour', 'Fatima', 'fatima.almansour@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'ModÃ©lisation objet'),
(6, 'Dubois', 'Pierre', 'pierre.dubois@univ.edu', 'Professeur', 'Algorithmique'),
(7, 'Kowalski', 'Anna', 'anna.kowalski@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'Information et communication'),
(8, 'Garcia', 'Maria', 'maria.garcia@univ.edu', 'Professeur', 'Programmation objet'),
(9, 'Martin', 'Sophie', 'sophie.martin@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'Base de donnÃ©es'),
(10, 'Nguyen', 'Minh', 'minh.nguyen@univ.edu', 'Professeur', 'GÃ©nie logiciel'),
(11, 'Silva', 'Carlos', 'carlos.silva@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'DÃ©veloppement web'),
(12, 'O Connor', 'Sean', 'sean.oconnor@univ.edu', 'Professeur', 'SÃ©curitÃ© informatique'),
(13, 'Ivanov', 'Dmitri', 'dmitri.ivanov@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'SystÃ¨mes distribuÃ©s'),
(14, 'Schmidt', 'Klaus', 'klaus.schmidt@univ.edu', 'Professeur', 'Bases de donnÃ©es avancÃ©es'),
(15, 'Rossi', 'Giuseppe', 'giuseppe.rossi@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'RÃ©seaux avancÃ©s'),
(16, 'Traore', 'Amadou', 'amadou.traore@univ.edu', 'Professeur', 'Cloud Computing'),
(17, 'Park', 'Ji-min', 'jimin.park@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'Mobile Development'),
(18, 'Andersson', 'Erik', 'erik.andersson@univ.edu', 'Professeur', 'Big Data'),
(19, 'Papadopoulos', 'Nikos', 'nikos.papadopoulos@univ.edu', 'MaÃ®tre de ConfÃ©rences', 'IoT'),
(20, 'Diallo', 'AÃ¯cha', 'aicha.diallo@univ.edu', 'Professeur', 'UX/UI Design');

-- --------------------------------------------------------

--
-- Table structure for table enseigner
--

CREATE TABLE IF NOT EXISTS enseigner (
  id_enseignant int(11) NOT NULL,
  id_cours int(11) NOT NULL,
  PRIMARY KEY (id_enseignant,id_cours),
  KEY id_cours (id_cours)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table enseigner
--

INSERT INTO enseigner (id_enseignant, id_cours) VALUES
(1, 5),
(1, 8),
(1, 12),
(2, 5),
(2, 8),
(2, 13),
(3, 1),
(3, 12),
(4, 7),
(4, 14),
(5, 3),
(5, 4),
(6, 1),
(6, 5),
(7, 6),
(7, 9),
(8, 4),
(8, 10),
(9, 2),
(9, 13),
(10, 10),
(10, 12),
(11, 9),
(11, 11),
(12, 11),
(12, 14),
(13, 7),
(13, 12),
(14, 2),
(14, 13),
(15, 7),
(15, 14),
(16, 1),
(16, 5),
(17, 4),
(17, 9),
(18, 2),
(18, 13),
(19, 10),
(19, 12),
(20, 6),
(20, 9);

-- --------------------------------------------------------

--
-- Table structure for table etudiant
--

CREATE TABLE IF NOT EXISTS etudiant (
  id_etudiant int(11) NOT NULL,
  nom varchar(100) NOT NULL,
  prenom varchar(100) NOT NULL,
  email varchar(255) NOT NULL,
  date_naissance date NOT NULL,
  PRIMARY KEY (id_etudiant),
  UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table etudiant
--

INSERT INTO etudiant (id_etudiant, nom, prenom, email, date_naissance) VALUES
(1, 'Benali', 'Mohamed', 'mohamed.benali@email.com', '2008-03-15'),
(2, 'Chen', 'Wei', 'wei.chen@email.com', '1998-07-22'),
(3, 'Ait Ahmed', 'Yasmina', 'yasmina.aithmed@email.com', '2003-11-08'),
(4, 'Smith', 'Emma', 'emma.smith@email.com', '1993-01-30'),
(5, 'Al-Mansour', 'Fatima', 'fatima.almansour@email.com', '2002-05-14'),
(6, 'Tanaka', 'Yuki', 'yuki.tanaka@email.com', '1999-09-03'),
(7, 'Ouedraogo', 'Issa', 'issa.ouedraogo@email.com', '2001-12-19'),
(8, 'Muller', 'Lucas', 'lucas.muller@email.com', '1996-04-07'),
(9, 'Bouziane', 'Karim', 'karim.bouziane@email.com', '2004-08-25'),
(10, 'Kim', 'Min-ji', 'minji.kim@email.com', '1995-02-11'),
(11, 'Johnson', 'Michael', 'michael.johnson@email.com', '2000-06-28'),
(12, 'Al-Jaber', 'Ahmed', 'ahmed.aljaber@email.com', '2005-10-15'),
(13, 'Ait Moussa', 'Leila', 'leila.aitmoussa@email.com', '1998-04-02'),
(14, 'Wong', 'Li', 'li.wong@email.com', '2003-08-18'),
(15, 'Diallo', 'Aminata', 'aminata.diallo@email.com', '1997-01-25'),
(16, 'Garcia', 'Carlos', 'carlos.garcia@email.com', '2002-05-12'),
(17, 'Bouchenak', 'Nadia', 'nadia.bouchenak@email.com', '1999-09-29'),
(18, 'Park', 'Ji-hoon', 'jihoon.park@email.com', '2001-03-16'),
(19, 'Traore', 'Moussa', 'moussa.traore@email.com', '1996-07-04'),
(20, 'Schmidt', 'Anna', 'anna.schmidt@email.com', '2004-11-21'),
(21, 'Al-Khalil', 'Layla', 'layla.alkhalil@email.com', '1995-02-08'),
(22, 'Ait Kaci', 'Samir', 'samir.aitkaci@email.com', '2000-06-25'),
(23, 'Zhang', 'Wei', 'wei.zhang@email.com', '2005-10-12'),
(24, 'Ndiaye', 'Mariam', 'mariam.ndiaye@email.com', '1998-04-29'),
(25, 'Dubois', 'Pierre', 'pierre.dubois@email.com', '2003-08-16'),
(26, 'Benamara', 'Rachid', 'rachid.benamara@email.com', '1997-12-03'),
(27, 'Yamamoto', 'Haruto', 'haruto.yamamoto@email.com', '2002-05-20'),
(28, 'Kone', 'Adama', 'adama.kone@email.com', '1999-09-06'),
(29, 'Rossi', 'Giulia', 'giulia.rossi@email.com', '2001-01-23'),
(30, 'Mebarek', 'Sofia', 'sofia.mebarek@email.com', '1996-07-10'),
(31, 'Al-Rashid', 'Omar', 'omar.alrashid@email.com', '2004-11-27'),
(32, 'Ait Saadi', 'Farid', 'farid.aitsaadi@email.com', '1995-03-14'),
(33, 'Liu', 'Jing', 'jing.liu@email.com', '2000-07-01'),
(34, 'Sow', 'Fatou', 'fatou.sow@email.com', '2005-10-18'),
(35, 'Brown', 'James', 'james.brown@email.com', '1998-04-05'),
(36, 'Boukhemis', 'Malika', 'malika.boukhemis@email.com', '2003-08-22'),
(37, 'Sato', 'Ren', 'ren.sato@email.com', '1997-12-09'),
(38, 'Ba', 'Ibrahima', 'ibrahima.ba@email.com', '2002-05-26'),
(39, 'Silva', 'Ana', 'ana.silva@email.com', '1999-09-13'),
(40, 'Zerrouki', 'Bilal', 'bilal.zerrouki@email.com', '2001-01-30'),
(41, 'Al-Farsi', 'Noura', 'noura.alfarsi@email.com', '1996-06-17'),
(42, 'Ait Chikh', 'Dalia', 'dalia.aitchikh@email.com', '2004-10-04'),
(43, 'Wang', 'Xiao', 'xiao.wang@email.com', '1995-02-21'),
(44, 'Camara', 'Sekou', 'sekou.camara@email.com', '2000-06-08'),
(45, 'Taylor', 'Sarah', 'sarah.taylor@email.com', '2005-10-25'),
(46, 'Benslimane', 'Omar', 'omar.benslimane@email.com', '1998-04-12'),
(47, 'Nakamura', 'Sora', 'sora.nakamura@email.com', '2003-08-29'),
(48, 'Keita', 'Aicha', 'aicha.keita@email.com', '1997-12-16'),
(49, 'Gomez', 'Miguel', 'miguel.gomez@email.com', '2002-05-03'),
(50, 'Hamidi', 'Zineb', 'zineb.hamidi@email.com', '1999-09-20'),
(51, 'Al-Qasim', 'Khalid', 'khalid.alqasim@email.com', '2001-01-07'),
(52, 'Ait Yahia', 'Rym', 'rym.aityahia@email.com', '1996-05-24'),
(53, 'Lin', 'Mei', 'mei.lin@email.com', '2004-09-10'),
(54, 'Diop', 'Rokhaya', 'rokhaya.diop@email.com', '1995-02-26'),
(55, 'Wilson', 'David', 'david.wilson@email.com', '2000-07-14'),
(56, 'Bouguerra', 'Hakim', 'hakim.bouguerra@email.com', '2005-11-01'),
(57, 'Kobayashi', 'Akira', 'akira.kobayashi@email.com', '1998-04-18'),
(58, 'Sarr', 'Mame', 'mame.sarr@email.com', '2003-08-05'),
(59, 'Fernandez', 'Maria', 'maria.fernandez@email.com', '1997-12-22'),
(60, 'Mansouri', 'Amine', 'amine.mansouri@email.com', '2002-06-09'),
(61, 'Al-Zahrani', 'Reem', 'reem.alzahrani@email.com', '1999-10-26'),
(62, 'Ait Larbi', 'Nassim', 'nassim.aitlarbi@email.com', '2001-03-13'),
(63, 'Wu', 'Chen', 'chen.wu@email.com', '1996-07-30'),
(64, 'Fall', 'Awa', 'awa.fall@email.com', '2004-11-16'),
(65, 'Anderson', 'Lisa', 'lisa.anderson@email.com', '1995-05-04'),
(66, 'Benaissa', 'Samira', 'samira.benaissa@email.com', '2000-09-21'),
(67, 'Ito', 'Yui', 'yui.ito@email.com', '2005-02-07'),
(68, 'Cisse', 'Boubacar', 'boubacar.cisse@email.com', '1998-06-24'),
(69, 'Martinez', 'Javier', 'javier.martinez@email.com', '2003-10-11'),
(70, 'Khelifi', 'Younes', 'younes.khelifi@email.com', '1997-04-28'),
(71, 'Al-Otaibi', 'Saeed', 'saeed.alotaibi@email.com', '2002-08-15'),
(72, 'Ait Amara', 'Selma', 'selma.aitamara@email.com', '1999-12-02'),
(73, 'Zhou', 'Fang', 'fang.zhou@email.com', '2001-05-19'),
(74, 'Gueye', 'Moussa', 'moussa.gueye@email.com', '1996-09-05'),
(75, 'Thomas', 'Emily', 'emily.thomas@email.com', '2004-01-22'),
(76, 'Bouaziz', 'Nabil', 'nabil.bouaziz@email.com', '1995-07-09'),
(77, 'Suzuki', 'Kaito', 'kaito.suzuki@email.com', '2000-11-26'),
(78, 'Niang', 'Aminata', 'aminata.niang@email.com', '2005-04-13'),
(79, 'Lopez', 'Isabella', 'isabella.lopez@email.com', '1998-08-30'),
(80, 'Saadi', 'Rania', 'rania.saadi@email.com', '2003-02-16'),
(81, 'Al-Harbi', 'Fahad', 'fahad.alharbi@email.com', '1997-06-03'),
(82, 'Ait Mokhtar', 'Tarek', 'tarek.aitmokhtar@email.com', '2002-10-20'),
(83, 'Huang', 'Ling', 'ling.huang@email.com', '1999-03-08'),
(84, 'Diakite', 'Kadiatou', 'kadiatou.diakite@email.com', '2001-07-25'),
(85, 'Davis', 'Christopher', 'christopher.davis@email.com', '1996-12-12'),
(86, 'Boukharouba', 'Yacine', 'yacine.boukharouba@email.com', '2004-05-29'),
(87, 'Matsumoto', 'Sakura', 'sakura.matsumoto@email.com', '1995-09-15'),
(88, 'Sana', 'Mariama', 'mariama.sana@email.com', '2000-01-01'),
(89, 'Rodriguez', 'Diego', 'diego.rodriguez@email.com', '2005-04-18'),
(90, 'Touati', 'Ines', 'ines.touati@email.com', '1998-08-05'),
(91, 'Al-Shammari', 'Nasser', 'nasser.alshammari@email.com', '2003-11-22'),
(92, 'Ait Si Ahmed', 'Karima', 'karima.aitsiahmed@email.com', '1997-03-10'),
(93, 'Cho', 'Hyeon', 'hyeon.cho@email.com', '2002-07-27'),
(94, 'Barry', 'Mariam', 'mariam.barry@email.com', '1999-11-13'),
(95, 'Miller', 'Andrew', 'andrew.miller@email.com', '2001-04-30'),
(96, 'Bendjeddou', 'Fayssal', 'fayssal.bendjeddou@email.com', '1996-08-17'),
(97, 'Takahashi', 'Riko', 'riko.takahashi@email.com', '2004-02-03'),
(98, 'Jallow', 'Lamin', 'lamin.jallow@email.com', '1995-06-20'),
(99, 'Gonzalez', 'Sofia', 'sofia.gonzalez@email.com', '2000-10-07'),
(100, 'Merah', 'Adel', 'adel.merah@email.com', '2005-04-24');

-- --------------------------------------------------------

--
-- Table structure for table examen
--

CREATE TABLE IF NOT EXISTS examen (
  id_examen int(11) NOT NULL,
  date_examen date NOT NULL,
  id_enseignant int(11) DEFAULT NULL,
  id_cours int(11) DEFAULT NULL,
  PRIMARY KEY (id_examen),
  KEY id_enseignant (id_enseignant),
  KEY id_cours (id_cours)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table examen
--

INSERT INTO examen (id_examen, date_examen, id_enseignant, id_cours) VALUES
(1, '2023-12-15', 3, 1),
(2, '2023-12-18', 9, 2),
(3, '2023-12-20', 5, 3),
(4, '2023-12-22', 8, 4),
(5, '2023-12-10', 6, 5),
(6, '2023-12-12', 7, 6),
(7, '2023-12-25', 4, 7),
(8, '2024-06-15', 1, 8),
(9, '2024-06-18', 11, 9),
(10, '2024-06-20', 10, 10),
(11, '2024-06-22', 12, 11),
(12, '2024-06-10', 13, 12),
(13, '2024-06-12', 14, 13),
(14, '2024-06-25', 15, 14),
(15, '2024-01-20', 3, 1),
(16, '2024-01-22', 9, 2),
(17, '2024-01-24', 5, 3),
(18, '2024-01-26', 8, 4),
(19, '2024-09-10', 2, 8),
(20, '2024-09-12', 11, 9),
(21, '2024-09-14', 10, 10),
(22, '2024-09-16', 12, 11),
(23, '2022-12-15', 16, 1),
(24, '2022-12-18', 18, 2),
(25, '2025-06-15', 1, 8),
(26, '2025-06-18', 17, 9),
(27, '2023-06-20', 19, 10),
(28, '2023-06-22', 20, 11),
(29, '2021-12-10', 6, 5),
(30, '2024-12-12', 7, 6),
(31, '2020-12-25', 4, 7),
(32, '2026-06-15', 2, 8),
(33, '2024-12-18', 1, 5),
(34, '2024-12-20', 2, 13),
(35, '2023-06-22', 1, 12),
(36, '2023-06-24', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table inscription
--

CREATE TABLE IF NOT EXISTS inscription (
  id_cours int(11) NOT NULL,
  id_etudiant int(11) NOT NULL,
  date_inscription date NOT NULL,
  statut varchar(50) NOT NULL,
  PRIMARY KEY (id_cours,id_etudiant),
  KEY id_etudiant (id_etudiant)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table inscription
--

INSERT INTO inscription (id_cours, id_etudiant, date_inscription, statut) VALUES
(1, 1, '2023-09-01', 'active'),
(1, 2, '2023-09-15', 'annule'),
(1, 3, '2022-09-02', 'active'),
(1, 4, '2024-09-02', 'supprime'),
(1, 5, '2021-09-03', 'active'),
(1, 50, '2023-09-05', 'active'),
(2, 1, '2023-09-01', 'active'),
(2, 2, '2023-09-10', 'annule'),
(2, 3, '2022-09-02', 'active'),
(2, 6, '2024-09-02', 'active'),
(2, 7, '2021-09-03', 'supprime'),
(2, 8, '2020-09-03', 'active'),
(2, 9, '2025-09-04', 'supprime'),
(2, 10, '2023-09-04', 'active'),
(2, 50, '2023-09-05', 'supprime'),
(3, 11, '2023-09-01', 'supprime'),
(3, 12, '2022-09-01', 'active'),
(3, 13, '2024-09-02', 'active'),
(3, 14, '2021-09-02', 'supprime'),
(3, 15, '2020-09-03', 'active'),
(3, 50, '2022-09-06', 'active'),
(4, 16, '2023-09-01', 'active'),
(4, 17, '2022-09-01', 'supprime'),
(4, 18, '2024-09-02', 'active'),
(4, 19, '2021-09-02', 'active'),
(4, 20, '2025-09-03', 'supprime'),
(4, 21, '2020-09-03', 'active'),
(4, 22, '2023-09-04', 'annule'),
(4, 51, '2024-09-06', 'active'),
(5, 23, '2023-09-01', 'annule'),
(5, 24, '2022-09-01', 'active'),
(5, 25, '2024-09-02', 'annule'),
(5, 26, '2021-09-02', 'active'),
(5, 27, '2025-09-03', 'active'),
(5, 28, '2020-09-03', 'annule'),
(5, 51, '2021-09-07', 'annule'),
(6, 29, '2023-09-01', 'active'),
(6, 30, '2022-09-01', 'annule'),
(6, 31, '2024-09-02', 'active'),
(6, 32, '2021-09-02', 'supprime'),
(6, 33, '2020-09-03', 'active'),
(6, 52, '2020-09-08', 'supprime'),
(7, 34, '2023-09-01', 'annule'),
(7, 35, '2022-09-01', 'active'),
(7, 36, '2024-09-02', 'annule'),
(7, 37, '2021-09-02', 'active'),
(7, 38, '2025-09-03', 'active'),
(7, 39, '2020-09-03', 'annule'),
(7, 40, '2023-09-04', 'active'),
(7, 52, '2025-09-08', 'active'),
(8, 1, '2024-02-01', 'active'),
(8, 2, '2023-02-01', 'supprime'),
(8, 3, '2025-02-01', 'active'),
(8, 4, '2022-02-02', 'annule'),
(8, 5, '2021-02-02', 'active'),
(8, 6, '2020-02-02', 'annule'),
(8, 7, '2024-02-03', 'active'),
(8, 8, '2023-02-03', 'supprime'),
(8, 9, '2025-02-04', 'active'),
(8, 10, '2022-02-04', 'supprime'),
(8, 50, '2024-02-05', 'annule'),
(8, 54, '2025-02-09', 'active'),
(9, 11, '2024-02-01', 'active'),
(9, 12, '2023-02-01', 'annule'),
(9, 13, '2025-02-02', 'active'),
(9, 14, '2022-02-02', 'supprime'),
(9, 15, '2021-02-03', 'active'),
(9, 16, '2020-02-03', 'supprime'),
(9, 17, '2024-02-04', 'active'),
(9, 51, '2023-02-06', 'active'),
(9, 54, '2020-02-10', 'annule'),
(10, 18, '2024-02-01', 'annule'),
(10, 19, '2023-02-01', 'active'),
(10, 20, '2025-02-02', 'supprime'),
(10, 21, '2022-02-02', 'active'),
(10, 22, '2021-02-03', 'supprime'),
(10, 23, '2020-02-03', 'active'),
(10, 52, '2022-02-07', 'annule'),
(11, 24, '2024-02-01', 'active'),
(11, 25, '2023-02-01', 'supprime'),
(11, 26, '2025-02-02', 'active'),
(11, 27, '2022-02-02', 'annule'),
(11, 28, '2021-02-03', 'active'),
(11, 29, '2020-02-03', 'supprime'),
(11, 30, '2024-02-04', 'active'),
(11, 53, '2023-09-09', 'active'),
(12, 31, '2024-02-01', 'supprime'),
(12, 32, '2023-02-01', 'active'),
(12, 33, '2025-02-02', 'annule'),
(12, 34, '2022-02-02', 'active'),
(12, 35, '2021-02-03', 'annule'),
(12, 36, '2020-02-03', 'active'),
(12, 53, '2024-09-09', 'supprime'),
(13, 37, '2024-02-01', 'active'),
(13, 38, '2023-02-01', 'annule'),
(13, 39, '2025-02-02', 'active'),
(13, 40, '2022-02-02', 'annule'),
(13, 41, '2021-02-03', 'active'),
(13, 42, '2020-02-03', 'annule'),
(13, 53, '2021-02-08', 'active'),
(14, 43, '2024-02-01', 'supprime'),
(14, 44, '2023-02-01', 'active'),
(14, 45, '2025-02-02', 'annule'),
(14, 46, '2022-02-02', 'active'),
(14, 47, '2021-02-03', 'annule'),
(14, 48, '2020-02-03', 'active'),
(14, 54, '2022-09-10', 'supprime');

-- --------------------------------------------------------

--
-- Table structure for table note
--

CREATE TABLE IF NOT EXISTS note (
  id_note int(11) NOT NULL,
  valeur decimal(4,2) NOT NULL,
  id_examen int(11) DEFAULT NULL,
  PRIMARY KEY (id_note),
  KEY id_examen (id_examen)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table note
--

INSERT INTO note (id_note, valeur, id_examen) VALUES
(1, 14.50, 1),
(2, 0.00, 1),
(3, 16.75, 1),
(4, 6.25, 1),
(5, 20.00, 1),
(6, 15.00, 2),
(7, 8.50, 2),
(8, 0.00, 2),
(9, 13.75, 2),
(10, 20.00, 2),
(11, 18.00, 3),
(12, 6.00, 3),
(13, 14.25, 3),
(14, 0.00, 3),
(15, 16.50, 3),
(16, 12.00, 4),
(17, 19.25, 4),
(18, 6.50, 4),
(19, 0.00, 4),
(20, 20.00, 4),
(21, 13.50, 5),
(22, 0.00, 5),
(23, 17.75, 5),
(24, 6.75, 5),
(25, 20.00, 5),
(26, 16.25, 6),
(27, 9.75, 6),
(28, 0.00, 6),
(29, 18.50, 6),
(30, 6.00, 6),
(31, 14.75, 7),
(32, 10.00, 7),
(33, 0.00, 7),
(34, 6.25, 7),
(35, 20.00, 7),
(36, 16.00, 8),
(37, 0.00, 8),
(38, 18.25, 8),
(39, 6.50, 8),
(40, 20.00, 8),
(41, 11.50, 9),
(42, 17.00, 9),
(43, 0.00, 9),
(44, 15.25, 9),
(45, 6.00, 9),
(46, 14.00, 10),
(47, 10.75, 10),
(48, 0.00, 10),
(49, 6.25, 10),
(50, 20.00, 10),
(51, 15.75, 11),
(52, 11.25, 11),
(53, 0.00, 11),
(54, 6.50, 11),
(55, 20.00, 11),
(56, 12.75, 12),
(57, 17.25, 12),
(58, 0.00, 12),
(59, 6.00, 12),
(60, 20.00, 12),
(61, 13.25, 13),
(62, 18.75, 13),
(63, 0.00, 13),
(64, 6.75, 13),
(65, 20.00, 13),
(66, 14.25, 14),
(67, 0.00, 14),
(68, 16.75, 14),
(69, 6.50, 14),
(70, 20.00, 14),
(71, 10.50, 15),
(72, 0.00, 16),
(73, 14.00, 17),
(74, 6.25, 18),
(75, 20.00, 19),
(76, 15.25, 23),
(77, 0.00, 24),
(78, 6.00, 27),
(79, 20.00, 28),
(80, 17.00, 33),
(81, 0.00, 34),
(82, 6.50, 35),
(83, 20.00, 36),
(84, 0.00, 8),
(85, 6.00, 8),
(86, 20.00, 2),
(87, 0.00, 5),
(88, 6.25, 11),
(89, 20.00, 14),
(90, 0.00, 19),
(91, 20.00, 1),
(92, 0.00, 2),
(93, 6.00, 3),
(94, 20.00, 4),
(95, 0.00, 5),
(96, 6.50, 6),
(97, 20.00, 7),
(98, 0.00, 8),
(99, 6.00, 9),
(100, 20.00, 10),
(101, 19.75, 11),
(102, 0.00, 12),
(103, 6.25, 13),
(104, 18.50, 14),
(105, 0.00, 15),
(106, 6.00, 16),
(107, 20.00, 17),
(108, 0.00, 18),
(109, 6.50, 19),
(110, 20.00, 23),
(111, 14.00, 1),
(112, 0.00, 2),
(113, 16.50, 3),
(114, 6.00, 4),
(115, 20.00, 5),
(116, 11.25, 6),
(117, 0.00, 7),
(118, 17.75, 8),
(119, 6.25, 9),
(120, 20.00, 10);

-- --------------------------------------------------------

--
-- Table structure for table recevoir
--

CREATE TABLE IF NOT EXISTS recevoir (
  id_note int(11) NOT NULL,
  id_etudiant int(11) NOT NULL,
  PRIMARY KEY (id_note,id_etudiant),
  KEY id_etudiant (id_etudiant)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table recevoir
--

INSERT INTO recevoir (id_note, id_etudiant) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 6),
(9, 7),
(10, 8),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 23),
(22, 24),
(23, 25),
(24, 26),
(25, 27),
(26, 29),
(27, 30),
(28, 31),
(29, 32),
(30, 33),
(31, 34),
(32, 35),
(33, 36),
(34, 37),
(35, 38),
(36, 1),
(37, 2),
(38, 3),
(39, 4),
(40, 5),
(41, 11),
(42, 12),
(43, 13),
(44, 14),
(45, 15),
(46, 16),
(47, 17),
(48, 18),
(49, 19),
(50, 20),
(51, 24),
(52, 25),
(53, 26),
(54, 27),
(55, 28),
(56, 31),
(57, 32),
(58, 33),
(59, 34),
(60, 35),
(61, 37),
(62, 38),
(63, 39),
(64, 40),
(65, 41),
(66, 43),
(67, 44),
(68, 45),
(69, 46),
(70, 47),
(71, 50),
(72, 51),
(73, 52),
(74, 53),
(75, 54),
(76, 60),
(77, 61),
(78, 62),
(79, 63),
(80, 70),
(81, 71),
(82, 72),
(83, 73),
(84, 80),
(85, 81),
(86, 82),
(87, 83),
(88, 84),
(89, 85),
(90, 86),
(91, 90),
(92, 91),
(93, 92),
(94, 93),
(95, 94),
(96, 95),
(97, 96),
(98, 97),
(99, 98),
(100, 99),
(101, 100),
(102, 50),
(103, 51),
(104, 52),
(105, 53),
(106, 54),
(107, 55),
(108, 56),
(109, 57),
(110, 58),
(111, 1),
(112, 2),
(113, 3),
(114, 4),
(115, 5),
(116, 6),
(117, 7),
(118, 8),
(119, 9),
(120, 10);

ALTER TABLE corrige
  ADD CONSTRAINT corrige_ibfk_1 FOREIGN KEY (id_examen) REFERENCES examen (id_examen),
  ADD CONSTRAINT corrige_ibfk_2 FOREIGN KEY (id_enseignant) REFERENCES enseignant (id_enseignant);

ALTER TABLE enseigner
  ADD CONSTRAINT enseigner_ibfk_1 FOREIGN KEY (id_enseignant) REFERENCES enseignant (id_enseignant),
  ADD CONSTRAINT enseigner_ibfk_2 FOREIGN KEY (id_cours) REFERENCES cours (id_cours);

ALTER TABLE examen
  ADD CONSTRAINT examen_ibfk_1 FOREIGN KEY (id_enseignant) REFERENCES enseignant (id_enseignant),
  ADD CONSTRAINT examen_ibfk_2 FOREIGN KEY (id_cours) REFERENCES cours (id_cours);

ALTER TABLE inscription
  ADD CONSTRAINT inscription_ibfk_1 FOREIGN KEY (id_cours) REFERENCES cours (id_cours),
  ADD CONSTRAINT inscription_ibfk_2 FOREIGN KEY (id_etudiant) REFERENCES etudiant (id_etudiant);

ALTER TABLE note
  ADD CONSTRAINT note_ibfk_1 FOREIGN KEY (id_examen) REFERENCES examen (id_examen);

ALTER TABLE recevoir
  ADD CONSTRAINT recevoir_ibfk_1 FOREIGN KEY (id_note) REFERENCES note (id_note),
  ADD CONSTRAINT recevoir_ibfk_2 FOREIGN KEY (id_etudiant) REFERENCES etudiant (id_etudiant);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

