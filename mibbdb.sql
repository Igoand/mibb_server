-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Paź 2018, 21:26
-- Wersja serwera: 10.1.31-MariaDB
-- Wersja PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mibbdb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kartaobserwacji`
--

CREATE TABLE `kartaobserwacji` (
  `idKarty` int(6) NOT NULL,
  `daneObserwatora` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dane teleadresowe obserwatora wprowadzającego obserwację: imie, nazwisko, pełen adres.',
  `emailObserwatora` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Adres email obserwatora',
  `telefonObserwatora` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefon kontaktowy obserwatora.',
  `wojewodztwo` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Województwo, w kontekście którego wprowadzono kartę. ',
  `powiat` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Powiat, w kontekście którego wprowadzono kartę. ',
  `gmina` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Gmina, w kontekście którego wprowadzono kartę. ',
  `dataRejestracjiKarty` date NOT NULL COMMENT 'Data wpłynięcia karty do systemu. Nadawana automatycznie podczas rejestracji.',
  `numerKarty` varchar(150) COLLATE utf8_polish_ci NOT NULL COMMENT 'Numer karty obserwacji. Nadawany automatycznie jako kontekst miejscowości prowadzonej obserwacji i kolejna liczba całkowita.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kartaobserwacji`
--

INSERT INTO `kartaobserwacji` (`idKarty`, `daneObserwatora`, `emailObserwatora`, `telefonObserwatora`, `wojewodztwo`, `powiat`, `gmina`, `dataRejestracjiKarty`, `numerKarty`) VALUES
(1, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', '0'),
(2, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', '1'),
(3, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', '2'),
(4, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', 'Olsztyn3'),
(5, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', 'Olsztyn4'),
(6, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', 'Olsztyn5'),
(7, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', 'Olsztyn6'),
(8, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', 'Olsztyn7'),
(9, 'Igor Andrejew, Stawigudzka 73 7 10-687 Olsztyn', 'igorandrejew@hotmail.com', '664257208', 'WARMIŃSKO-MAZURSKIE', 'olsztyński', 'Olsztyn', '2018-06-17', 'Olsztyn8'),
(10, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie'),
(11, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie1'),
(12, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie2'),
(13, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie3'),
(14, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie4'),
(15, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie5'),
(16, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie6'),
(17, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie7'),
(18, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie8'),
(19, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie9'),
(20, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie10'),
(21, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie11'),
(22, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie12'),
(23, 'Igor Andrejew, Kościuszki 3 13 11-632 Górowo Iławeckie', 'igorandrejew@hotmail.com', '516614875', 'WARMIŃSKO-MAZURSKIE', 'bartoszycki', 'Górowo Iławeckie', '2018-06-17', 'Górowo Iławeckie13'),
(24, ' ockgsu,    ', 'iycmbc', '55454N', '', 'kh !h', '', '2018-06-17', '14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obserwacja`
--

CREATE TABLE `obserwacja` (
  `idGniazda` int(6) NOT NULL COMMENT 'Id rekordu.',
  `nazwaGniazda` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nazwa obserwowanego gniazda. Nadawana autmoartycznie jako kontekst miejscowości prowadzonej obserwacji i kolejna liczba całkowita.',
  `lokalizacjaGniazda` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pełen adres oraz szerokość i wysokość geograficzna.',
  `usytuowanieGniazda` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Symboliczna reprezentacja usytuowania gniazda.',
  `platformaGniazda` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL COMMENT 'Symboliczna reprezentacja informacji o platformie gniazda.',
  `efektLegu` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Symboliczna reprezentacja efektu lęgu w gnieździe.',
  `stanGniazda` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Stan gniazda.',
  `idZdjecia` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `obecnoscObraczki` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Informacja o obecności obrączki,',
  `uwagi` varchar(600) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Uwagi.',
  `fkKartaObserwacji` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Identyfikator/odwołanie do karty obserwacji, w kontekście której wprowadzono obserwację.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `obserwacja`
--

INSERT INTO `obserwacja` (`idGniazda`, `nazwaGniazda`, `lokalizacjaGniazda`, `usytuowanieGniazda`, `platformaGniazda`, `efektLegu`, `stanGniazda`, `idZdjecia`, `obecnoscObraczki`, `uwagi`, `fkKartaObserwacji`) VALUES
(1, 'Olsztyn', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '40404049'),
(2, 'Olsztyn1', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '3'),
(3, '2', 'null\nSzerokość: 0.0, wysokość: 0.0', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '0'),
(4, 'Olsztyn2', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '0'),
(5, 'Olsztyn3', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '0'),
(6, 'Olsztyn4', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '0'),
(7, 'Olsztyn5', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '0'),
(8, 'Olsztyn6', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Olsztyn7'),
(9, 'Olsztyn7', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Olsztyn7'),
(10, 'Olsztyn8', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Olsztyn7'),
(11, 'Olsztyn9', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Olsztyn7'),
(12, 'Olsztyn10', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Olsztyn8'),
(13, '', '', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Olsztyn8'),
(14, 'Olsztyn11', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', 'drzewo żywejabłoń ', 'PM', 'HF', 'dobry', '', 'jest - P goleń P skok ', 'ohvjficlvkgitkgcjgx', '﻿Olsztyn8'),
(15, '', '', 'słup STBI ', 'PM', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie6'),
(16, 'Olsztyn12', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie7'),
(17, 'Olsztyn13', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie7'),
(18, 'Olsztyn14', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie7'),
(19, '', '', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie7'),
(20, 'Olsztyn15', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie7'),
(21, 'Olsztyn16', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', ' I ', '', 'HF', 'dobry', '', 'jest - L goleń P skok ', 'ubyvyvufxurduxjxjfcjgjg jf kg jf kg kg jf kg jf kg kg kg jf jf \n\n\njf jf jf jf jf u', '﻿Górowo Iławeckie8'),
(22, '', '', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie9'),
(23, 'Olsztyn17', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', ' BI ', '', 'HF', 'dobry', '', 'jest - P goleń P goleń P skok ', '', '﻿Górowo Iławeckie9'),
(24, 'Olsztyn18', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', '  ', '', 'HF', 'dobry', '', 'brak', 'u,jrsjrzhrzhrhdzhrjrjgxkgxjgxjrxjfxktjtsidktkgkgkgc\n\nzcsgnsgx\n\n\n\n\n\n\nckgxjzu\nafharh\nixhfzhrur', '﻿Górowo Iławeckie10'),
(25, '', '', '  ', '', 'HF', 'dobry', '', 'jest - L skok L goleń L skok P goleń ', '', '﻿Górowo Iławeckie10'),
(26, '', '', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿Górowo Iławeckie11'),
(27, 'Olsztyn19', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', ' I ', '', 'HF', 'dobry', '', 'jest - L skok P goleń P goleń P skok ', '', '﻿Górowo Iławeckie12'),
(28, 'Olsztyn20', 'Bartąska 126, 11-041 Olsztyn, Polska\nSzerokość: 53.726116999999995, wysokość: 20.4747079', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿14'),
(29, '', '', '  ', '', 'HF', 'dobry', '', 'brak', '', '﻿14');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kartaobserwacji`
--
ALTER TABLE `kartaobserwacji`
  ADD PRIMARY KEY (`idKarty`);

--
-- Indeksy dla tabeli `obserwacja`
--
ALTER TABLE `obserwacja`
  ADD PRIMARY KEY (`idGniazda`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kartaobserwacji`
--
ALTER TABLE `kartaobserwacji`
  MODIFY `idKarty` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `obserwacja`
--
ALTER TABLE `obserwacja`
  MODIFY `idGniazda` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Id rekordu.', AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
