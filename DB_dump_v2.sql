-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: FFG_DB_CI
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `AXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `AXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AXBerichtStatusSpecificatie` (
  `idAXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusAXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusAXBerichtType',
  `OfferteDt` datetime DEFAULT NULL COMMENT '\nDatum waarop de lening (vermoedelijk) bij de notaris gaat passeren / is gepasseerd. \nConditie:\nPasseerDt is verplicht als StatusAXBericht heeft waarde (Akte gepasseerd )',
  `PasseerDt` datetime DEFAULT NULL,
  `IngangsDt` datetime DEFAULT NULL,
  `AcceptatieDtKlant` datetime DEFAULT NULL,
  `PasseerGegevens` int(11) DEFAULT NULL COMMENT 'Referentie entiteit (0-1)\nConditie:\nPasseerGegevens is verplicht als StatusAXBericht heeft waarde (Akte gepasseerd ) \n',
  PRIMARY KEY (`idAXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AXBerichtStatusSpecificatie`
--

LOCK TABLES `AXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `AXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `AXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AangevraagdObject`
--

DROP TABLE IF EXISTS `AangevraagdObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AangevraagdObject` (
  `idAangevraagdObject` int(11) NOT NULL,
  `RefObject` int(11) DEFAULT NULL COMMENT 'Referentie Entiteit',
  PRIMARY KEY (`idAangevraagdObject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AangevraagdObject`
--

LOCK TABLES `AangevraagdObject` WRITE;
/*!40000 ALTER TABLE `AangevraagdObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `AangevraagdObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AangevraagdPersoon`
--

DROP TABLE IF EXISTS `AangevraagdPersoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AangevraagdPersoon` (
  `idAangevraagdPersoon` int(11) NOT NULL,
  `RefPartijNAWData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit',
  PRIMARY KEY (`idAangevraagdPersoon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AangevraagdPersoon`
--

LOCK TABLES `AangevraagdPersoon` WRITE;
/*!40000 ALTER TABLE `AangevraagdPersoon` DISABLE KEYS */;
/*!40000 ALTER TABLE `AangevraagdPersoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aantekening`
--

DROP TABLE IF EXISTS `Aantekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aantekening` (
  `idAantekening` int(11) NOT NULL,
  `AantekeningOmschr` varchar(100) DEFAULT NULL,
  `OntleendAan` varchar(25) DEFAULT NULL,
  `OntleendAanDt` datetime DEFAULT NULL,
  PRIMARY KEY (`idAantekening`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aantekening`
--

LOCK TABLES `Aantekening` WRITE;
/*!40000 ALTER TABLE `Aantekening` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aantekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Adres`
--

DROP TABLE IF EXISTS `Adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adres` (
  `idAdres` int(11) NOT NULL,
  `RefPartijNAWData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit',
  `SoortAdres` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortAdresType',
  PRIMARY KEY (`idAdres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adres`
--

LOCK TABLES `Adres` WRITE;
/*!40000 ALTER TABLE `Adres` DISABLE KEYS */;
/*!40000 ALTER TABLE `Adres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Autorisatie`
--

DROP TABLE IF EXISTS `Autorisatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autorisatie` (
  `idAutorisatie` int(11) NOT NULL,
  `FunctieLevel` int(11) DEFAULT NULL COMMENT 'Waardentabel',
  `ViewLevel` int(11) DEFAULT NULL COMMENT 'Waardentabel',
  `ITComponent` int(11) DEFAULT NULL COMMENT 'Relatie naar Functie of component',
  PRIMARY KEY (`idAutorisatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autorisatie`
--

LOCK TABLES `Autorisatie` WRITE;
/*!40000 ALTER TABLE `Autorisatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `Autorisatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BKR`
--

DROP TABLE IF EXISTS `BKR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BKR` (
  `idBKR` int(11) NOT NULL,
  `AangevraagdPersoon` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `ToetsResultaatEnt` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99) \n',
  `OverallResultaat` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1) \n',
  PRIMARY KEY (`idBKR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BKR`
--

LOCK TABLES `BKR` WRITE;
/*!40000 ALTER TABLE `BKR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BKR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BancaireDekking`
--

DROP TABLE IF EXISTS `BancaireDekking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BancaireDekking` (
  `idBancaireDekking` int(11) NOT NULL,
  `Aanbieder` varchar(255) NOT NULL COMMENT 'Waardelijst MaatschappijType\n',
  `AanbiederOmschr` varchar(100) DEFAULT NULL COMMENT 'Conditie:\nAanbiederOmschr is verplicht als Aanbieder heeft waarde (Anders)',
  `CodeBancaireDekking` varchar(255) NOT NULL COMMENT 'Waardelijst CodeBancaireDekkingType',
  `FiscaleVormDekking` varchar(255) DEFAULT NULL COMMENT 'Waardelijst FiscaleVormType\n',
  `FiscaalGeruislozeVoortzettingJN` tinyint(1) NOT NULL,
  `CodeBancaireDekkingMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst\nCodeBancaireDekkingMijType',
  `AanvangsDt` datetime DEFAULT NULL,
  `DuurInMnd` decimal(3,0) DEFAULT NULL,
  `ContractLopendJN` tinyint(1) NOT NULL,
  `MaatschappijContractLopend` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MaatschappijType\n\nConditie:\nMaatschappijContractLopend is verplicht als ContractLopendJN is waar',
  `ContractOmzettingJN` tinyint(1) DEFAULT NULL COMMENT 'ContractOmzettingJN is verplicht als\nContractLopendJN is waar',
  `CodeLopendeDekking` varchar(255) DEFAULT NULL COMMENT 'Waardelijst CodeLopendeDekkingType\n',
  `ContractAfkoopWaarde` decimal(14,2) DEFAULT NULL COMMENT 'Conditie:\nContractAfkoopWaarde is verplicht als\nContractLopendJN is waar EN\nContractOmzettingJN is waar',
  `ContractNr` varchar(20) DEFAULT NULL,
  `OorspronkelijkeAanvangsDtLopendeDekking` datetime DEFAULT NULL COMMENT 'Conditie:\nContractNr is verplicht als\nContractLopendJN is waar EN\nContractOmzettingJN is waar',
  `InlegAfspraken` int(11) NOT NULL COMMENT 'Entiteit (1-99)',
  `Contractant` int(11) NOT NULL COMMENT 'Entiteit (1-9)',
  `Debiteur` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n',
  `Waarden` int(11) NOT NULL COMMENT 'Entiteit (0-9)',
  `FiscaalGeruislozeVoortzetting` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\nFiscaalGeruislozeVoortzetting is verplicht als FiscaalGeruislozeVoortzettingJN is waar',
  `InlegDepot` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)',
  `LeningDeel_idLeningDeel` int(11) NOT NULL,
  PRIMARY KEY (`idBancaireDekking`),
  KEY `fk_BancaireDekking_LeningDeel1` (`LeningDeel_idLeningDeel`),
  CONSTRAINT `fk_BancaireDekking_LeningDeel1` FOREIGN KEY (`LeningDeel_idLeningDeel`) REFERENCES `LeningDeel` (`idLeningDeel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BancaireDekking`
--

LOCK TABLES `BancaireDekking` WRITE;
/*!40000 ALTER TABLE `BancaireDekking` DISABLE KEYS */;
/*!40000 ALTER TABLE `BancaireDekking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeheerData`
--

DROP TABLE IF EXISTS `BeheerData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeheerData` (
  `idBeheerData` int(11) NOT NULL,
  `ContractNr` varchar(20) NOT NULL COMMENT 'Overeenkomstnummer van de lening, niet van een leningdeel. \n',
  `IngangsMutatieDt` datetime NOT NULL,
  `ReferentieDt` datetime DEFAULT NULL,
  `RekeningNummer` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)',
  `Mutatie` int(11) NOT NULL COMMENT 'Entiteit (1-9)',
  PRIMARY KEY (`idBeheerData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeheerData`
--

LOCK TABLES `BeheerData` WRITE;
/*!40000 ALTER TABLE `BeheerData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BeheerData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BezittingenBox3`
--

DROP TABLE IF EXISTS `BezittingenBox3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BezittingenBox3` (
  `idBezittingenBox3` int(11) NOT NULL,
  `SoortBezittingBoxDrie` int(11) NOT NULL COMMENT 'Waardelijst SoortBezittingBoxDrieType\nGeeft aan het soort bezittingen in box drie (voordeel uit sparen en beleggen)',
  `SoortBezittingBoxDrieOmschr` varchar(100) DEFAULT NULL COMMENT 'Geeft een vrije omschrijving van de soort bezitting niet voorkomend in de keuzelijst soort bezitting box drie\n\nConditie:\nSoortBezittingBoxDrieOmschr is verplicht als SoortBezittingBoxDrie heeft waarde\n(overige bezittingen)',
  `WaardeBezittingBoxDrie` decimal(14,2) NOT NULL COMMENT 'Waarde bezitting box drie',
  `PeilDtBezittingBoxDrie` datetime DEFAULT NULL COMMENT 'Peildatum waarde van de waarde bezitting box drie',
  `MaxDebetStand` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het maximale bedrag aan debetstand op de soort bezitting in box drie',
  `HuidigeDebetStand` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het huidige bedrag debetstand aan op de soort bezitting in box drie',
  `VerpandJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of financiële dekking verpand wordt',
  `VerpandAan` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MaatschappijType\nGeeft aan aan welke instelling de soort bezitting in box 3 verpand is.',
  `VerpandAanOmschr` varchar(100) DEFAULT NULL COMMENT 'Vrije omschrijving van de instelling niet voorkomend in de keuzelijst "MaatschappijType". \n\nConditie:\nMag alleen gebruikt worden indien de omschrijving niet in de keuzelijst voorkomt.\n??? Waarde',
  `HypotheekGever_idHypotheekgever` int(11) NOT NULL,
  PRIMARY KEY (`idBezittingenBox3`),
  KEY `fk_BezittingenBox3_HypotheekGever1` (`HypotheekGever_idHypotheekgever`),
  CONSTRAINT `fk_BezittingenBox3_HypotheekGever1` FOREIGN KEY (`HypotheekGever_idHypotheekgever`) REFERENCES `HypotheekGever` (`idHypotheekgever`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BezittingenBox3`
--

LOCK TABLES `BezittingenBox3` WRITE;
/*!40000 ALTER TABLE `BezittingenBox3` DISABLE KEYS */;
/*!40000 ALTER TABLE `BezittingenBox3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Boeking`
--

DROP TABLE IF EXISTS `Boeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Boeking` (
  `idBoeking` int(11) NOT NULL,
  `BedragVergoeding` decimal(14,2) DEFAULT NULL,
  `BoekingDt` datetime DEFAULT NULL,
  `FactuurDt` datetime DEFAULT NULL,
  `FactuurNr` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL COMMENT 'Waardelijst StatusAXBerichtType',
  `BoekNr` varchar(45) DEFAULT NULL COMMENT 'Waardelijst Grootboekrekeningnummers',
  `DirectJN` tinyint(1) DEFAULT NULL COMMENT 'Direct\nStatus afgerond/vervallen',
  `Dossier_idDossier` int(11) NOT NULL,
  `ResultaatRekening_idResultaatRekening` int(11) NOT NULL,
  `Factuur_idFactuur` int(11) NOT NULL,
  `DebetCreditDC` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idBoeking`),
  KEY `fk_Boeking_Dossier1` (`Dossier_idDossier`),
  KEY `fk_Boeking_Factuur1` (`Factuur_idFactuur`),
  CONSTRAINT `fk_Boeking_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Boeking_Factuur1` FOREIGN KEY (`Factuur_idFactuur`) REFERENCES `Factuur` (`idFactuur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boeking`
--

LOCK TABLES `Boeking` WRITE;
/*!40000 ALTER TABLE `Boeking` DISABLE KEYS */;
/*!40000 ALTER TABLE `Boeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bron`
--

DROP TABLE IF EXISTS `Bron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bron` (
  `idBron` int(11) NOT NULL,
  `BronNaam` varchar(255) DEFAULT NULL COMMENT 'Waardelijst ExterneBronType',
  `BronNr` varchar(255) DEFAULT NULL,
  `SoortProduct` varchar(45) DEFAULT NULL COMMENT 'Waardelijst SoortProductType',
  `RaadplegenDt` datetime DEFAULT NULL,
  `RaadplegenTijd` datetime DEFAULT NULL,
  `SysteemMelding` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)\nDeze moet maxOccurs="unbounded" krijgen omdat het mogelijk is vanuit NHG meerdere fouten in 1 response terug te geven. Omdat het om een generiek entiteit gaat moet beter onderzocht worden wat de consequenties van deze eventuele wijziging zullen zijn. \n',
  `PartijNAWData` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  `Object` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  `Kadaster` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `Calcasa` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `NBWO` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `KvK` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `BKR` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `NHG` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `TaxCon` int(11) DEFAULT NULL COMMENT 'Entiteit (0-10)',
  `Notaris` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  `PrintDoc` int(11) DEFAULT NULL COMMENT 'Entiteit (0-2)',
  PRIMARY KEY (`idBron`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bron`
--

LOCK TABLES `Bron` WRITE;
/*!40000 ALTER TABLE `Bron` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Calcasa`
--

DROP TABLE IF EXISTS `Calcasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calcasa` (
  `idCalcasa` int(11) NOT NULL,
  `AangevraagdObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n',
  `ResultaatObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  PRIMARY KEY (`idCalcasa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calcasa`
--

LOCK TABLES `Calcasa` WRITE;
/*!40000 ALTER TABLE `Calcasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Calcasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compliancy_DossierBetaalregel`
--

DROP TABLE IF EXISTS `Compliancy_DossierBetaalregel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compliancy_DossierBetaalregel` (
  `idCompliancy_DossierBetaalregel` int(11) NOT NULL,
  `Dossier_idDossier` int(11) NOT NULL,
  `BetaalRegel_idBetaalRegel` int(11) NOT NULL,
  PRIMARY KEY (`idCompliancy_DossierBetaalregel`),
  KEY `fk_Compliancy_DossierBetaalregel_Dossier1` (`Dossier_idDossier`),
  KEY `fk_Compliancy_DossierBetaalregel_BetaalRegel1` (`BetaalRegel_idBetaalRegel`),
  CONSTRAINT `fk_Compliancy_DossierBetaalregel_BetaalRegel1` FOREIGN KEY (`BetaalRegel_idBetaalRegel`) REFERENCES `ContractTemplateRegel` (`idContractTemplateRegel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compliancy_DossierBetaalregel_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compliancy_DossierBetaalregel`
--

LOCK TABLES `Compliancy_DossierBetaalregel` WRITE;
/*!40000 ALTER TABLE `Compliancy_DossierBetaalregel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compliancy_DossierBetaalregel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Component`
--

DROP TABLE IF EXISTS `Component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Component` (
  `idComponent` int(11) NOT NULL,
  `Component` int(11) DEFAULT NULL,
  `Autorisatie_idAutorisatie` int(11) NOT NULL,
  PRIMARY KEY (`idComponent`),
  KEY `fk_Component_Autorisatie1` (`Autorisatie_idAutorisatie`),
  CONSTRAINT `fk_Component_Autorisatie1` FOREIGN KEY (`Autorisatie_idAutorisatie`) REFERENCES `Autorisatie` (`idAutorisatie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Component`
--

LOCK TABLES `Component` WRITE;
/*!40000 ALTER TABLE `Component` DISABLE KEYS */;
/*!40000 ALTER TABLE `Component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contract`
--

DROP TABLE IF EXISTS `Contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contract` (
  `idContract` int(11) NOT NULL,
  `Naam` varchar(45) NOT NULL COMMENT 'Naam van het contract',
  `IncassoJN` tinyint(1) NOT NULL COMMENT 'J/N',
  `StartDt` datetime NOT NULL COMMENT 'Startdatum van het contract',
  `EindDt` datetime DEFAULT NULL COMMENT 'Einddatum van het contract',
  `TussenPersoon_idTussenPersoon` int(11) NOT NULL,
  `ContractTemplate_idContractTemplate` int(11) NOT NULL,
  PRIMARY KEY (`idContract`),
  KEY `fk_Contract_TussenPersoon1` (`TussenPersoon_idTussenPersoon`),
  KEY `fk_Contract_ContractTemplate1` (`ContractTemplate_idContractTemplate`),
  CONSTRAINT `fk_Contract_ContractTemplate1` FOREIGN KEY (`ContractTemplate_idContractTemplate`) REFERENCES `ContractTemplate` (`idContractTemplate`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Contract_TussenPersoon1` FOREIGN KEY (`TussenPersoon_idTussenPersoon`) REFERENCES `TussenPersoon` (`idTussenPersoon`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contract`
--

LOCK TABLES `Contract` WRITE;
/*!40000 ALTER TABLE `Contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContractTemplate`
--

DROP TABLE IF EXISTS `ContractTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContractTemplate` (
  `idContractTemplate` int(11) NOT NULL,
  `Naam` varchar(45) NOT NULL,
  `CrediteurType` varchar(255) DEFAULT NULL COMMENT 'Waardelijst RF_BetaalRegelType\nTP\nFinancier',
  `Financier` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MaatschappijType',
  `Product` tinyint(1) NOT NULL COMMENT 'H/C\nHypotheek\nComplementaire Service?',
  `InExBTW` tinyint(1) DEFAULT NULL COMMENT 'I/E',
  PRIMARY KEY (`idContractTemplate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContractTemplate`
--

LOCK TABLES `ContractTemplate` WRITE;
/*!40000 ALTER TABLE `ContractTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContractTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContractTemplateRegel`
--

DROP TABLE IF EXISTS `ContractTemplateRegel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContractTemplateRegel` (
  `idContractTemplateRegel` int(11) NOT NULL,
  `Naam` varchar(45) NOT NULL,
  `AfrekenSoortType` varchar(255) NOT NULL COMMENT 'Waardelijst RS_AfrekenSoortType\n\nPrijs obv status dossier;\nFee-constructie;\n\nSTATUS\nFEE\n',
  `StartDt` datetime NOT NULL,
  `EindDt` datetime DEFAULT NULL,
  `BedragVergoeding` decimal(14,2) DEFAULT NULL COMMENT 'Hier wordt het aanvullend te declareren bedrag opgenomen.',
  `DirectJN` tinyint(1) DEFAULT NULL COMMENT 'Direct\nStatus afgerond/vervallen',
  `AantalFTR` int(11) DEFAULT NULL COMMENT 'Maximaal aantal te vergoeden',
  `IndicatieKortingJN` tinyint(1) DEFAULT NULL COMMENT 'J/N',
  `DebetCreditDC` varchar(1) DEFAULT NULL COMMENT 'Debet of Credit regel',
  `BereikteStatus1` varchar(255) DEFAULT NULL COMMENT 'Waardelijst StatusAXBerichtType',
  `BereikteStatus2` varchar(255) DEFAULT NULL COMMENT 'Waardelijst StatusAXBerichtType',
  `FactuurOmschrijving` varchar(45) DEFAULT NULL COMMENT 'Omschrijving die op de factuur moet verschijnen',
  `BoekNr` varchar(45) DEFAULT NULL COMMENT 'Waardelijst Grootboekrekeningnummers',
  `RS_StatusSysteemEnHDN_idStatusSysteemEnHDN` int(11) DEFAULT NULL,
  `ContractTemplate_idContractTemplate` int(11) NOT NULL,
  PRIMARY KEY (`idContractTemplateRegel`),
  KEY `fk_BetaalRegel_StatusSysteemEnHDN1` (`RS_StatusSysteemEnHDN_idStatusSysteemEnHDN`),
  KEY `fk_ContractTemplateRegel_ContractTemplate1` (`ContractTemplate_idContractTemplate`),
  CONSTRAINT `fk_BetaalRegel_StatusSysteemEnHDN1` FOREIGN KEY (`RS_StatusSysteemEnHDN_idStatusSysteemEnHDN`) REFERENCES `RS_StatusSysteemEnHDN` (`idRS_StatusSysteemEnHDN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ContractTemplateRegel_ContractTemplate1` FOREIGN KEY (`ContractTemplate_idContractTemplate`) REFERENCES `ContractTemplate` (`idContractTemplate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContractTemplateRegel`
--

LOCK TABLES `ContractTemplateRegel` WRITE;
/*!40000 ALTER TABLE `ContractTemplateRegel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContractTemplateRegel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contractant`
--

DROP TABLE IF EXISTS `Contractant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contractant` (
  `idContractant` int(11) NOT NULL,
  `RefPartijNAWData` int(11) NOT NULL COMMENT 'Referentie entiteit',
  `BSN` decimal(9,0) DEFAULT NULL,
  `GeboorteDt` datetime DEFAULT NULL,
  `BeleggingprofielUitkomst` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BeleggingprofielUitkomstType',
  `BeleggingprofielUitkomstMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst BeleggingprofielMijType',
  `BancaireDekking_idBancaireDekking` int(11) NOT NULL,
  PRIMARY KEY (`idContractant`),
  KEY `fk_Contractant_BancaireDekking1` (`BancaireDekking_idBancaireDekking`),
  KEY `fk_Contractant_PartijNAWData1` (`RefPartijNAWData`),
  CONSTRAINT `fk_Contractant_BancaireDekking1` FOREIGN KEY (`BancaireDekking_idBancaireDekking`) REFERENCES `BancaireDekking` (`idBancaireDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Contractant_PartijNAWData1` FOREIGN KEY (`RefPartijNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contractant`
--

LOCK TABLES `Contractant` WRITE;
/*!40000 ALTER TABLE `Contractant` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contractant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `DXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DXBerichtStatusSpecificatie` (
  `idDXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusDXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusDXBerichtType ',
  `DocumentMijNr` varchar(255) NOT NULL COMMENT 'Binnen het dossier uniek nummer van het document zoals deze geadministreerd is bij de ontvangende partij van het DX bericht',
  PRIMARY KEY (`idDXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DXBerichtStatusSpecificatie`
--

LOCK TABLES `DXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `DXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `DXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Debiteur`
--

DROP TABLE IF EXISTS `Debiteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Debiteur` (
  `idDebiteur` int(11) NOT NULL,
  `RefDebiteurNAWData` int(11) NOT NULL COMMENT 'Referentie entiteit',
  `BancaireDekking_idBancaireDekking` int(11) NOT NULL,
  PRIMARY KEY (`idDebiteur`),
  KEY `fk_Debiteur_BancaireDekking1` (`BancaireDekking_idBancaireDekking`),
  KEY `fk_Debiteur_PartijNAWData1` (`RefDebiteurNAWData`),
  CONSTRAINT `fk_Debiteur_BancaireDekking1` FOREIGN KEY (`BancaireDekking_idBancaireDekking`) REFERENCES `BancaireDekking` (`idBancaireDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Debiteur_PartijNAWData1` FOREIGN KEY (`RefDebiteurNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Debiteur`
--

LOCK TABLES `Debiteur` WRITE;
/*!40000 ALTER TABLE `Debiteur` DISABLE KEYS */;
/*!40000 ALTER TABLE `Debiteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dienstbetrekking`
--

DROP TABLE IF EXISTS `Dienstbetrekking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dienstbetrekking` (
  `idDienstbetrekking` int(11) NOT NULL,
  `SoortDienstBetrekking` varchar(255) NOT NULL COMMENT 'Waardelijst SoortDienstBetrekkingType\n\nCode die aangeeft wat de soort dienstbetrekking is',
  `FlexWerkerJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de aanvraag wordt gedaan op basis van de flexwerkersregeling.',
  `DGAJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de inkomsten uit het dienstverband te kenmerken zijn als DGA inkomsten.',
  `Beroep` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BeroepType\nDe omschrijving van het beroep van de aanvrager.',
  `BeroepFunctie` varchar(100) DEFAULT NULL COMMENT 'De omschrijving van het beroep van de aanvrager.',
  `IngangsDtDienstBetrekking` datetime NOT NULL COMMENT 'Geeft de ingangsdatum van de dienstbetrekking.',
  `ProeftijdJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of er sprake is van een proeftijd.',
  `ProeftijdVerstrekenJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de proeftijd verstreken is. Datum werkgeversverklaring is leidend.\nConditie:\nProeftijdVerstrekenJN is verplicht als\nProeftijdJN is waar',
  `EindDtDienstBetrekking` datetime DEFAULT NULL COMMENT 'Geeft de datum waarop de dienstbetrekking in de huidige vorm beëindigd zal worden. Ook vullen indien er voornemens zijn het dienstverband te beeindigen.',
  `Werkgever` varchar(100) DEFAULT NULL COMMENT 'De naam van de werkgever.',
  `StraatNaamWerkgever` varchar(35) DEFAULT NULL COMMENT 'Straatnaam van de werkgever, indien sprake is van een correspondentie adres kan ook de aanduiding "postbus" gebruikt worden.',
  `HuisNrWerkgever` decimal(5,0) DEFAULT NULL COMMENT 'Het huisnummer, indien sprake is van een correspondentie adres kan dit ook een postbusnummer zijn.',
  `HuisNrToevoegingWerkgever` varchar(10) DEFAULT NULL COMMENT 'Huisnummertoevoeging, bijvoorbeeld I, Huis, zwart etc.',
  `PostcodeWerkgever` varchar(9) DEFAULT NULL COMMENT 'De postcode, behorend bij ingevulde straatnaam, huisnummer of bij ingevuld postbusnummer. Voor\nNederland 6 posities lang, zonder spatie ertussen.',
  `PlaatsNaamWerkgever` varchar(30) DEFAULT NULL COMMENT 'De plaatsnaam van de werkgever.',
  `LandWerkgever` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nLand waar de werkgever gevestigd is.',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten.',
  `GemUrenWeek` decimal(2,0) DEFAULT NULL COMMENT 'Gemiddeld aantal uren werkzaam in deze dienstbetrekking per week.\n\nConditie:\nGemUrenWeek is verplicht als\nSoortDienstBetrekking heeft waarde (loondienst parttime vast, loondienst parttime tijdelijk plus intentieverklaring, loondienst parttime tijdelijk zonder intentieverklaring, seizoensarbeider )',
  `BrutoJaarSalaris` decimal(14,2) NOT NULL COMMENT 'Het bruto basissalaris excl. overwerk, vakantietoeslag, provisie enz. Het brutojaarsalaris van het gebruikelijke aantal werkwerken in de bedrijfstak.\nConditie:\nBrutoJaarSalaris is groter dan 0.00',
  `VakantieToeslag` decimal(14,2) NOT NULL COMMENT 'Gemiddeld bedrag aan vakantiegeld op jaarbasis.',
  `OnregelmatigheidsToeslag` decimal(14,2) DEFAULT NULL COMMENT 'Onregelmatigheidstoeslag op jaarbasis (mits structureel van aard).',
  `Vaste13eMnd` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het bedrag aan vaste 13e maand. Onder vast wordt verstaan: In de arbeidsovereenkomst vastgelegde onvoorwaardelijke inkomensbestanddelen.',
  `ProvisiePerJaar` decimal(14,2) DEFAULT NULL COMMENT 'Het bedrag aan provisie op jaarbasis (mits structureel van aard) Bedrag van laatste 12 maanden.',
  `VasteEindejaarsuitkering` decimal(14,2) DEFAULT NULL COMMENT 'Bedrag aan vaste eindejaarsuitkering. Onder vast wordt verstaan: In de arbeidsovereenkomst vastgelegde onvoorwaardelijke inkomensbestanddelen.',
  `OverwerkPerJaar` decimal(14,2) DEFAULT NULL COMMENT 'Het bedrag aan overwerkvergoeding (jaartotaal), mits structureel van aard. Bedrag van de afgelopen 12 maanden.',
  `BrutoJaarInkVariabel` decimal(14,2) DEFAULT NULL COMMENT 'Het variabele inkomen zonder structurele componenten exclusief provisie, onregelmatigheidstoeslag, overwerk en vaste eindejaarsuitkering en dergelijke.',
  `VEB` decimal(14,2) DEFAULT NULL COMMENT 'VEB (Vergoeding voor Extra Beslaglegging) toelage voor militairen bedrag van de afgelopen 12 maanden.',
  `InkomstenToeslag` decimal(14,2) DEFAULT NULL COMMENT 'Geeft de inkomsten uit toeslagen die structrureel mee kunnen tellen (bijv.diplomatoeslag, gevarentoeslag, oefeningtoeslag enz.)',
  `PctInkomenMeetellen` decimal(11,3) DEFAULT NULL COMMENT 'Geeft het percentage van het inkomen dat meegeteld moet worden ter bepaling van de leencapaciteit. Alleen opgeven als afwijkt van 100%.',
  `DuurInMndMeetellen` decimal(3,0) DEFAULT NULL COMMENT 'Geeft de specifieke looptijd in maanden waar een percentage van het inkomen moet meegeteld worden ter bepaling van de leencapaciteit. Alleen opgeven indien niet gelijk is aan duur hypotheek.',
  `InkomenPeriode` varchar(255) DEFAULT NULL COMMENT 'Waardelijst InkomenPeriodeType\nGeef aan wat de uitbetaaltermijn is van het inkomen.',
  `LoonbeslagJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of er loonbeslag is gelegd op het inkomen.',
  `InkomenFlexibel1jr` decimal(14,2) DEFAULT NULL COMMENT 'Totaal flexibel jaarinkomen van het eerste voorgaande jaar.(huidig jaar – 1jr) Hier wordt het inkomen bedoeld zoals beschreven de normen van NHG inzake flexibele en overige arbeidsrelaties.\nConditie:\nInkomenFlexibel1jr is verplicht als\nFlexWerkerJN is waar',
  `InkomenFlexibel2jr` decimal(14,2) DEFAULT NULL COMMENT 'Totaal flexibel jaarinkomen van het eerste voorgaande jaar.(huidig jaar – 2jr) Hier wordt het inkomen bedoeld zoals beschreven de normen van NHG inzake flexibele en overige arbeidsrelaties.\nConditie:\nInkomenFlexibel1jr is verplicht als\nFlexWerkerJN is waar',
  `InkomenFlexibel3jr` decimal(14,2) DEFAULT NULL COMMENT 'Totaal flexibel jaarinkomen van het eerste voorgaande jaar.(huidig jaar – 3jr) Hier wordt het inkomen bedoeld zoals beschreven de normen van NHG inzake flexibele en overige arbeidsrelaties.\nConditie:\nInkomenFlexibel1jr is verplicht als\nFlexWerkerJN is waar',
  `SVLoon` decimal(14,2) DEFAULT NULL COMMENT 'SVLoon op jaarbasis conform afgestemde berekeningsmethodiek obv ''UWV SVLoon document'' (= UWV verzekeringsbericht). De waarde die in het veld  SVLoon ingevuld dient te worden is exclusief het inkomensbestandsdeel m.b.t. de auto van de zaak.',
  `Inkomsten_idInkomsten` int(11) NOT NULL,
  PRIMARY KEY (`idDienstbetrekking`),
  KEY `fk_Dienstbetrekking_Inkomsten1` (`Inkomsten_idInkomsten`),
  CONSTRAINT `fk_Dienstbetrekking_Inkomsten1` FOREIGN KEY (`Inkomsten_idInkomsten`) REFERENCES `Inkomsten` (`idInkomsten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dienstbetrekking`
--

LOCK TABLES `Dienstbetrekking` WRITE;
/*!40000 ALTER TABLE `Dienstbetrekking` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dienstbetrekking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentAanvraagBericht`
--

DROP TABLE IF EXISTS `DocumentAanvraagBericht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DocumentAanvraagBericht` (
  `idDocumentAanvraagBericht` int(11) NOT NULL,
  `Header` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)\nGegevens over het bericht',
  `DocumentData` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)\nGegevens van het dossier',
  `DocumentKenmerk` int(11) NOT NULL COMMENT 'Referentie entiteit (1-999)\nGeeft de kenmerken van de betreffende documenten weer',
  `PartijNAWData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit (0-99)\nEntiteit met NAW gegevens van een partij',
  `TaxCon` int(11) DEFAULT NULL COMMENT 'Referentie entiteit (0-1)\n\nVelden die opgegeven kunnen / moeten worden ten behoeve van het TaxCon proces.',
  PRIMARY KEY (`idDocumentAanvraagBericht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentAanvraagBericht`
--

LOCK TABLES `DocumentAanvraagBericht` WRITE;
/*!40000 ALTER TABLE `DocumentAanvraagBericht` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentAanvraagBericht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentBericht`
--

DROP TABLE IF EXISTS `DocumentBericht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DocumentBericht` (
  `idDocumentBericht` int(11) NOT NULL,
  `Header` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)\nGegevens over het bericht',
  `DocumentData` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)\nGegevens van het dossier',
  `DocumentKenmerk` int(11) NOT NULL COMMENT 'Referentie entiteit (1-999)\nGeeft de kenmerken van de betreffende documenten weer',
  `PrintDoc` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)',
  `PartijNAWData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit (0-99)\nEntiteit met NAW gegevens van een partij',
  PRIMARY KEY (`idDocumentBericht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentBericht`
--

LOCK TABLES `DocumentBericht` WRITE;
/*!40000 ALTER TABLE `DocumentBericht` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentBericht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentData`
--

DROP TABLE IF EXISTS `DocumentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DocumentData` (
  `idDocumentData` int(11) NOT NULL,
  `Versie` int(11) NOT NULL,
  `Kenmerk` varchar(255) NOT NULL COMMENT 'Het kenmerk waarmee de verzendende partij communiceert (kan Leningnummer / Dossiernummer / Offertenummer zijn)',
  `ResponsOpBerichtSoort` varchar(255) NOT NULL COMMENT 'Waardelijst BerichtSoortType\n\nGeeft aan op welk soort bericht dit bericht van toepassing is.\n\n',
  `StatusCheckJN` tinyint(1) NOT NULL COMMENT 'Ok J/N',
  `Reden` varchar(45) DEFAULT NULL,
  `DocumentType` varchar(255) DEFAULT NULL COMMENT 'Waardelijst StatusDXBerichtType',
  `Link` varchar(255) DEFAULT NULL,
  `DocGewijzigdJN` tinyint(1) DEFAULT NULL COMMENT 'J/N',
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idDocumentData`),
  KEY `fk_DocumentData_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_DocumentData_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentData`
--

LOCK TABLES `DocumentData` WRITE;
/*!40000 ALTER TABLE `DocumentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DocumentKenmerk`
--

DROP TABLE IF EXISTS `DocumentKenmerk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DocumentKenmerk` (
  `idDocumentKenmerk` int(11) NOT NULL,
  `Aanlevermoment` varchar(255) DEFAULT NULL COMMENT 'Waardelijst AanlevermomentType\n\nHet moment binnen het hypotheekproces waarop het document ontvangen moet worden.',
  `SoortDocument` varchar(255) NOT NULL COMMENT 'Waardelijst SoortDocumentType\n\nGeeft het soort document aan',
  `SoortDocumentOmschr` varchar(255) NOT NULL COMMENT 'Geeft de eigen maatschappijomschrijving of codering behorende bij dit document',
  `DocumentMijNr` varchar(255) NOT NULL COMMENT 'Binnen het dossier uniek nummer van het document zoals deze geadministreerd is bij de ontvangende partij van het DX bericht',
  `DocumentStatus` varchar(255) NOT NULL COMMENT 'Waardelijst DocumentStatusType',
  `DocumentStatusOmschr` varchar(255) DEFAULT NULL COMMENT 'Geeft een vrije toelichting op de documentstatus\n\nConditie:\nDocumentStatusOmschr is verplicht als DocumentStatus heeft waarde (Afgekeurd en opnieuw aan te leveren (zie toelichting), Vervallen (zie toelichting) )',
  `DocumentStatusDt` datetime NOT NULL,
  `DocumentStatusTijd` datetime NOT NULL,
  `UitersteAanleverDt` datetime DEFAULT NULL,
  `OrginelenAanleverenJN` tinyint(1) NOT NULL COMMENT 'Geeft aan of het fysieke (orgineel of kopie) document ook (naast het DX) aangeleverd dient te worden.',
  `SoortOrigineel` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortOrigineelType\n\nConditie:\nSoortOrigineel is verplicht als OrginelenAanleverenJN is waar',
  `BronNaam` varchar(255) DEFAULT NULL COMMENT 'Waardelijst ExterneBronType\n\nConditie:\nBronNaam is verplicht als SoortOrigineel heeft waarde (Aanlevering via externe bron )',
  `BronNr` varchar(255) DEFAULT NULL COMMENT 'Referentienummer van de aangeroepen bron',
  `BestandType` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BestandTypeType\n\nGeeft het type bestand op van de bijlage.',
  `StatusKetenPartij` int(11) DEFAULT NULL COMMENT 'Referentie entiteit (0-1)\n\nPartij in de keten die de status aan het document heeft gegeven, zijnde niet de geldverstrekker',
  `Hypotheekgever` int(11) DEFAULT NULL COMMENT 'Gegevens van de persoon behorende bij het opgevraagde document. Alleen van toepassing bij persoonsgebonden documenten. De gegevens dienen uit de LX, KX of AX te worden overgenomen.',
  `Object` int(11) DEFAULT NULL COMMENT 'Referentie entiteit (0-1)\n\nEntiteit met gegevens van het object waar de offerteaanvraag/ aangevraagde financiering op van toepassing is.',
  PRIMARY KEY (`idDocumentKenmerk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DocumentKenmerk`
--

LOCK TABLES `DocumentKenmerk` WRITE;
/*!40000 ALTER TABLE `DocumentKenmerk` DISABLE KEYS */;
/*!40000 ALTER TABLE `DocumentKenmerk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dossier`
--

DROP TABLE IF EXISTS `Dossier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dossier` (
  `idDossier` int(11) NOT NULL COMMENT 'File',
  `OfferteNr` varchar(255) DEFAULT NULL COMMENT 'Is Kenmerk uit OfferteData\n\nIs Mark of identification from Offerdata',
  `NaamHypotheekGever` varchar(255) DEFAULT NULL COMMENT 'Name of Customer',
  `LeningMijType` varchar(255) NOT NULL COMMENT 'Omschrijving uit Waardetabel CodeLeningMijType\n\nDescription of Referencetable CodeLeningMijType',
  `FTR_Counter` int(11) DEFAULT '0' COMMENT 'FTR-counter\nFirst Time Right counter\n\nFor future use',
  `StartDt` datetime NOT NULL COMMENT 'StartDate of File contains creation date of the file',
  `GeldVerstrekker_idGeldVerstrekker` int(11) NOT NULL,
  `TussenPersoon_idTussenPersoon` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDossier`),
  KEY `fk_Dossier_GeldVerstrekker1` (`GeldVerstrekker_idGeldVerstrekker`),
  KEY `fk_Dossier_TussenPersoon1` (`TussenPersoon_idTussenPersoon`),
  CONSTRAINT `fk_Dossier_GeldVerstrekker1` FOREIGN KEY (`GeldVerstrekker_idGeldVerstrekker`) REFERENCES `RS_OntvangerCode` (`idRS_OntvangerCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dossier_TussenPersoon1` FOREIGN KEY (`TussenPersoon_idTussenPersoon`) REFERENCES `TussenPersoon` (`idTussenPersoon`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dossier`
--

LOCK TABLES `Dossier` WRITE;
/*!40000 ALTER TABLE `Dossier` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dossier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DossierStatus`
--

DROP TABLE IF EXISTS `DossierStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DossierStatus` (
  `idDossierStatus` int(11) NOT NULL COMMENT 'Status of File',
  `DossierStatusStartDt` datetime DEFAULT NULL COMMENT 'Start Date Filestatus\n',
  `DossierStatusEindDt` datetime DEFAULT NULL COMMENT 'End Date File status',
  `GebruikersNaam` varchar(45) DEFAULT NULL COMMENT 'Username',
  `Dossier_idDossier` int(11) NOT NULL,
  `RS_StatusSysteemEnHDN_idStatusSysteemEnHDN` int(11) NOT NULL,
  PRIMARY KEY (`idDossierStatus`),
  KEY `fk_DossierStatus_Dossier1` (`Dossier_idDossier`),
  KEY `fk_DossierStatus_RF_StatusSysteemEnHDN1` (`RS_StatusSysteemEnHDN_idStatusSysteemEnHDN`),
  CONSTRAINT `fk_DossierStatus_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DossierStatus_RF_StatusSysteemEnHDN1` FOREIGN KEY (`RS_StatusSysteemEnHDN_idStatusSysteemEnHDN`) REFERENCES `RS_StatusSysteemEnHDN` (`idRS_StatusSysteemEnHDN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DossierStatus`
--

LOCK TABLES `DossierStatus` WRITE;
/*!40000 ALTER TABLE `DossierStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `DossierStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dossier_heeft_Logging`
--

DROP TABLE IF EXISTS `Dossier_heeft_Logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dossier_heeft_Logging` (
  `Logging_idLogging` int(11) NOT NULL,
  `Dossier_idDossier` int(11) NOT NULL,
  KEY `fk_Dossier_has_Logging_Logging1` (`Logging_idLogging`),
  KEY `fk_Dossier_has_Logging_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_Dossier_has_Logging_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dossier_has_Logging_Logging1` FOREIGN KEY (`Logging_idLogging`) REFERENCES `Logging` (`idLogging`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dossier_heeft_Logging`
--

LOCK TABLES `Dossier_heeft_Logging` WRITE;
/*!40000 ALTER TABLE `Dossier_heeft_Logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dossier_heeft_Logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExterneBronBericht`
--

DROP TABLE IF EXISTS `ExterneBronBericht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExterneBronBericht` (
  `idExterneBronBericht` int(11) NOT NULL,
  `Header` int(11) NOT NULL COMMENT 'Entiteit (1-1)',
  `Ondertekening` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n\nBericht ondertekend van hetgeen van wie die afkomstig is. Wordt automatisch gevuld door het systeem \n',
  `Bron` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n\nDe brongegevens die worden opgevraagd/teruggegeven. \n',
  PRIMARY KEY (`idExterneBronBericht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExterneBronBericht`
--

LOCK TABLES `ExterneBronBericht` WRITE;
/*!40000 ALTER TABLE `ExterneBronBericht` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExterneBronBericht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExtraAflossing`
--

DROP TABLE IF EXISTS `ExtraAflossing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExtraAflossing` (
  `idExtraAflossing` int(11) NOT NULL,
  `BedragPerTermijn` decimal(14,2) DEFAULT NULL,
  `BetalingsTermijn` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BetalingsTermijnType',
  `DuurInMnd` decimal(3,0) DEFAULT NULL,
  `AanvangNaIngangsDtInMnd` decimal(3,0) DEFAULT NULL,
  `RentePct` decimal(11,3) DEFAULT NULL,
  PRIMARY KEY (`idExtraAflossing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExtraAflossing`
--

LOCK TABLES `ExtraAflossing` WRITE;
/*!40000 ALTER TABLE `ExtraAflossing` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExtraAflossing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Factuur`
--

DROP TABLE IF EXISTS `Factuur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Factuur` (
  `idFactuur` int(11) NOT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  `FactuurNr` varchar(45) DEFAULT NULL,
  `Jaar` datetime DEFAULT NULL,
  `Maand` datetime DEFAULT NULL,
  `TussenPersoon_idTussenPersoon` int(11) NOT NULL,
  PRIMARY KEY (`idFactuur`),
  KEY `fk_Factuur_TussenPersoon1` (`TussenPersoon_idTussenPersoon`),
  CONSTRAINT `fk_Factuur_TussenPersoon1` FOREIGN KEY (`TussenPersoon_idTussenPersoon`) REFERENCES `TussenPersoon` (`idTussenPersoon`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Factuur`
--

LOCK TABLES `Factuur` WRITE;
/*!40000 ALTER TABLE `Factuur` DISABLE KEYS */;
/*!40000 ALTER TABLE `Factuur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FactuurRegel`
--

DROP TABLE IF EXISTS `FactuurRegel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FactuurRegel` (
  `idFactuurRegel` int(11) NOT NULL,
  `BereikteStatus` varchar(255) DEFAULT NULL COMMENT 'Waardelijst StatusAXBerichtType',
  `Bedrag` decimal(14,2) DEFAULT NULL,
  `Factuur_idFactuur` int(11) NOT NULL,
  PRIMARY KEY (`idFactuurRegel`),
  KEY `fk_FactuurRegel_Factuur1` (`Factuur_idFactuur`),
  CONSTRAINT `fk_FactuurRegel_Factuur1` FOREIGN KEY (`Factuur_idFactuur`) REFERENCES `Factuur` (`idFactuur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FactuurRegel`
--

LOCK TABLES `FactuurRegel` WRITE;
/*!40000 ALTER TABLE `FactuurRegel` DISABLE KEYS */;
/*!40000 ALTER TABLE `FactuurRegel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FinancieleDekking`
--

DROP TABLE IF EXISTS `FinancieleDekking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FinancieleDekking` (
  `idFinancieleDekking` int(11) NOT NULL,
  `BeleggingprofielUitkomst` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BeleggingprofielUitkomstType',
  `BeleggingprofielOmschrijving` varchar(100) DEFAULT NULL,
  `BeleggingprofielUitkomstMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst BeleggingprofielMijType',
  `AfwKeuzeBeleggingprofielMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst BeleggingprofielMijType',
  `CodeFinancieleDekking` varchar(255) NOT NULL COMMENT 'Waardelijst CodeFinancieleDekkingType',
  `FiscaleVormDekking` varchar(255) DEFAULT NULL COMMENT 'Waardelijst FiscaleVormType\n',
  `FiscaalGeruislozeVoortzettingJN` tinyint(1) DEFAULT NULL,
  `CodeDekkingMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst CodeDekkingMijType',
  `ORVzelfstJN` tinyint(1) DEFAULT NULL,
  `AanvangsDt` datetime DEFAULT NULL,
  `DuurInMnd` decimal(3,0) NOT NULL,
  `ProductNaam` varchar(35) DEFAULT NULL,
  `Maatschappij` varchar(255) NOT NULL COMMENT 'Waardelijst MaatschappijType',
  `MaatschappijOmschr` varchar(100) DEFAULT NULL COMMENT 'Conditie:\nMaatschappijOmschr is \nMaatschappij heeft waarde (Anders)',
  `PolisLopendJN` tinyint(1) NOT NULL,
  `MaatschappijPolisLopend` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MaatschappijType\n\nConditie:\nMaatschappijPolisLopend is verplicht als\nPolisLopendJN is waar\n',
  `MaatschappijPolisLopendOmschr` varchar(100) DEFAULT NULL COMMENT 'Conditie:\nMaatschappijPolisLopendOmschr is verplicht als MaatschappijPolisLopend heeft waarde (Anders)',
  `PolisNr` varchar(20) DEFAULT NULL COMMENT 'Conditie:\nPolisNr is verplicht als PolisLopendJN is waar EN PolisOmzetting is waar',
  `PolisAfkoopWaarde` decimal(14,2) DEFAULT NULL COMMENT 'Conditie:\nPolisAfkoopWaarde is verplicht als PolisLopendJN is waar EN PolisOmzetting is waar',
  `PolisOmzetting` tinyint(1) DEFAULT NULL COMMENT 'Conditie:\nPolisOmzetting is verplicht als\nPolisLopendJN is waar',
  `CodeLopendeDekking` varchar(255) DEFAULT NULL COMMENT 'Waardelijst CodeLopendeDekkingType\n',
  `UitkeringKapVerz` decimal(14,2) DEFAULT NULL,
  `BerekeningsUitgangspunt` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BerekeningsUitgangspuntType',
  `VerpandJN` tinyint(1) NOT NULL,
  `VerzorgersClausule` tinyint(1) DEFAULT NULL,
  `LijfrenteClausule` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LijfrenteClausuleType\n',
  `Distributiekosten` decimal(14,2) DEFAULT NULL,
  `PremieDepot` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-1)',
  `PremieAfspraken` int(11) NOT NULL COMMENT 'Entiteit  (1-99)',
  `FondsVerdeling` int(11) NOT NULL COMMENT 'Entiteit  (0-10)',
  `Verzekerde` int(11) NOT NULL COMMENT 'Entiteit  (1-2)',
  `VerzekeringNemer` int(11) NOT NULL COMMENT 'Entiteit  (1-2)',
  `VerzekerdeBedragen` int(11) NOT NULL COMMENT 'Entiteit  (1-9)',
  `FiscaalGeruislozeVoortzetting` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)\nConditie:\nFiscaalGeruislozeVoortzetting is verplicht als FiscaalGeruislozeVoortzettingJN is waar',
  `ProvisieKeuze` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)',
  `Dossier_idDossier` int(11) NOT NULL,
  `LeningDeel_idLeningDeel` int(11) NOT NULL,
  PRIMARY KEY (`idFinancieleDekking`,`FondsVerdeling`),
  KEY `fk_FinancieleDekking_LeningDeel1` (`LeningDeel_idLeningDeel`),
  KEY `fk_FinancieleDekking_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_FinancieleDekking_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FinancieleDekking_LeningDeel1` FOREIGN KEY (`LeningDeel_idLeningDeel`) REFERENCES `LeningDeel` (`idLeningDeel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FinancieleDekking`
--

LOCK TABLES `FinancieleDekking` WRITE;
/*!40000 ALTER TABLE `FinancieleDekking` DISABLE KEYS */;
/*!40000 ALTER TABLE `FinancieleDekking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FiscaalGeruislozeVoortzetting`
--

DROP TABLE IF EXISTS `FiscaalGeruislozeVoortzetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiscaalGeruislozeVoortzetting` (
  `idFiscaalGeruislozeVoortzetting` int(11) NOT NULL,
  `FiscaleVormDekking` varchar(255) NOT NULL COMMENT 'Waardelijst FiscaleVormType\n',
  `MaatschappijDekkingLopend` varchar(255) NOT NULL COMMENT 'Waardelijst MaatschappijType\n',
  `MaatschappijDekkingLopendOmschr` varchar(100) DEFAULT NULL COMMENT 'Conditie:\nMaatschappijDekkingLopendOmschr is verplicht als MaatschappijDekkingLopend heeft waarde (Anders )',
  `DekkingNr` varchar(20) DEFAULT NULL,
  `OorsponkelijkeAanvangsDtLopendeDekking` datetime DEFAULT NULL,
  `AanvangsDtBox1` datetime NOT NULL,
  `StortingDtNieuweDekking` datetime DEFAULT NULL COMMENT 'Conditie:\nAlleen invullen indien afwijkend van Ingangsdatum',
  `DekkingLopendBetalingLaag` decimal(14,2) NOT NULL,
  `DekkingLopendBetalingHoog` decimal(14,2) NOT NULL,
  `BedragBetaaldLopendJaar` decimal(14,2) NOT NULL,
  `CumulatieveBetalingEindDt` decimal(14,2) NOT NULL,
  `DekkingOverdrachtsWaarde` decimal(14,2) NOT NULL,
  `EerdereUitkeringDekking` decimal(14,2) NOT NULL,
  `DuurInMnd` decimal(3,0) NOT NULL,
  `BedragLopendeDekking` decimal(14,2) NOT NULL,
  `BedragLopendeDekkingOverlijdenBijGemen_gd` decimal(14,2) NOT NULL,
  `BancaireDekking_idBancaireDekking` int(11) NOT NULL,
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  PRIMARY KEY (`idFiscaalGeruislozeVoortzetting`),
  KEY `fk_FiscaalGeruislozeVoortzetting_BancaireDekking` (`BancaireDekking_idBancaireDekking`),
  KEY `fk_FiscaalGeruislozeVoortzetting_FinancieleDekking1` (`FinancieleDekking_idFinancieleDekking`),
  CONSTRAINT `fk_FiscaalGeruislozeVoortzetting_BancaireDekking` FOREIGN KEY (`BancaireDekking_idBancaireDekking`) REFERENCES `BancaireDekking` (`idBancaireDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FiscaalGeruislozeVoortzetting_FinancieleDekking1` FOREIGN KEY (`FinancieleDekking_idFinancieleDekking`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FiscaalGeruislozeVoortzetting`
--

LOCK TABLES `FiscaalGeruislozeVoortzetting` WRITE;
/*!40000 ALTER TABLE `FiscaalGeruislozeVoortzetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `FiscaalGeruislozeVoortzetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FiscaleWoonstaat`
--

DROP TABLE IF EXISTS `FiscaleWoonstaat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiscaleWoonstaat` (
  `idFiscaleWoonstaat` int(11) NOT NULL,
  `LandFiscaleWoonstaat` varchar(255) NOT NULL COMMENT 'Waardelijst LandType\nWanneer een klant geen ingezetene is (d.w.z. geen woon- of vestigingsadres in Nederland), moet de fiscale woonstaat verplicht worden vastgelegd',
  `TIN` varchar(20) NOT NULL COMMENT 'Het Tax Identification Number (TIN) is een aanduiding voor een identificerend nummer dat buitenlandse belastingdiensten gebruiken voor de registratie van hun belastingplichtigen.',
  `HypotheekGever_idHypotheekgever` int(11) NOT NULL,
  PRIMARY KEY (`idFiscaleWoonstaat`),
  KEY `fk_FiscaleWoonstaat_HypotheekGever1` (`HypotheekGever_idHypotheekgever`),
  CONSTRAINT `fk_FiscaleWoonstaat_HypotheekGever1` FOREIGN KEY (`HypotheekGever_idHypotheekgever`) REFERENCES `HypotheekGever` (`idHypotheekgever`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FiscaleWoonstaat`
--

LOCK TABLES `FiscaleWoonstaat` WRITE;
/*!40000 ALTER TABLE `FiscaleWoonstaat` DISABLE KEYS */;
/*!40000 ALTER TABLE `FiscaleWoonstaat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FondsVerdeling`
--

DROP TABLE IF EXISTS `FondsVerdeling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FondsVerdeling` (
  `idFondsVerdeling` int(11) NOT NULL,
  `FondsNaam` varchar(100) DEFAULT NULL,
  `PctFondsVerdeling` decimal(13,3) NOT NULL,
  `FondsnaamCode` varchar(255) DEFAULT NULL COMMENT 'Waardelijst FondsnaamCodeType',
  `CodeFondsMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst CodeFondsMijType\n',
  `GeprognotiseerdRendement` decimal(13,3) NOT NULL,
  `FondsCode` varchar(12) DEFAULT NULL,
  `FondsType` varchar(255) DEFAULT NULL COMMENT 'Waardelijst FondsType',
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  PRIMARY KEY (`idFondsVerdeling`),
  KEY `fk_FondsVerdeling_FinancieleDekking1` (`FinancieleDekking_idFinancieleDekking`),
  CONSTRAINT `fk_FondsVerdeling_FinancieleDekking1` FOREIGN KEY (`FinancieleDekking_idFinancieleDekking`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FondsVerdeling`
--

LOCK TABLES `FondsVerdeling` WRITE;
/*!40000 ALTER TABLE `FondsVerdeling` DISABLE KEYS */;
/*!40000 ALTER TABLE `FondsVerdeling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `GXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GXBerichtStatusSpecificatie` (
  `idGXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusGXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusGXBerichtType ',
  PRIMARY KEY (`idGXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GXBerichtStatusSpecificatie`
--

LOCK TABLES `GXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `GXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `GXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gebruiker`
--

DROP TABLE IF EXISTS `Gebruiker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gebruiker` (
  `idGebruiker` int(11) NOT NULL,
  `GebruikersNaam` varchar(45) NOT NULL,
  `Wachtwoord` varchar(100) NOT NULL,
  `InternExternIE` varchar(1) DEFAULT NULL COMMENT 'Intern\nExtern',
  `ActiveDirectoryJN` varchar(1) DEFAULT NULL COMMENT 'Autenticatie via Active Directory J/N',
  `Rol` int(11) DEFAULT NULL,
  `NAW` int(11) DEFAULT NULL,
  `Team` int(11) DEFAULT NULL COMMENT 'Referentie naar team(s)',
  PRIMARY KEY (`idGebruiker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gebruiker`
--

LOCK TABLES `Gebruiker` WRITE;
/*!40000 ALTER TABLE `Gebruiker` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gebruiker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GerechtigdPersoon`
--

DROP TABLE IF EXISTS `GerechtigdPersoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GerechtigdPersoon` (
  `idGerechtigddPersoon` int(11) NOT NULL,
  `RefPartijNAWData` int(11) DEFAULT NULL,
  `RelatieType` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idGerechtigddPersoon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GerechtigdPersoon`
--

LOCK TABLES `GerechtigdPersoon` WRITE;
/*!40000 ALTER TABLE `GerechtigdPersoon` DISABLE KEYS */;
/*!40000 ALTER TABLE `GerechtigdPersoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GerelateerdObject`
--

DROP TABLE IF EXISTS `GerelateerdObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GerelateerdObject` (
  `idGerelateerdObject` int(11) NOT NULL,
  `RefObject` int(11) DEFAULT NULL COMMENT 'Referentie entiteit\n\nGeeft de naam van de entiteit waarin de onderpandgegevens zijn opgenomen. \n',
  `SoortRecht` varchar(255) DEFAULT NULL,
  `SoortInschrijving` varchar(25) DEFAULT NULL,
  `AandeelRechtTeller` varchar(25) DEFAULT NULL,
  `AandeelRechtNoemer` varchar(25) DEFAULT NULL,
  `BetrokkenInSplitsingJN` tinyint(1) DEFAULT NULL,
  `Aantekening` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  PRIMARY KEY (`idGerelateerdObject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GerelateerdObject`
--

LOCK TABLES `GerelateerdObject` WRITE;
/*!40000 ALTER TABLE `GerelateerdObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `GerelateerdObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GerelateerdPersoon`
--

DROP TABLE IF EXISTS `GerelateerdPersoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GerelateerdPersoon` (
  `idGerelateerdPersoon` int(11) NOT NULL,
  `RefPartijNAWData` int(11) DEFAULT NULL,
  `GerelateerdPersooncol` int(11) DEFAULT NULL COMMENT 'Referentie entiteit',
  `RelatieType` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idGerelateerdPersoon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GerelateerdPersoon`
--

LOCK TABLES `GerelateerdPersoon` WRITE;
/*!40000 ALTER TABLE `GerelateerdPersoon` DISABLE KEYS */;
/*!40000 ALTER TABLE `GerelateerdPersoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HDN_BerichtOpslag`
--

DROP TABLE IF EXISTS `HDN_BerichtOpslag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HDN_BerichtOpslag` (
  `idHeader` int(11) NOT NULL COMMENT 'HDN_MessageStore = HDN Header information + HDN message',
  `VerzenderNrHDN` varchar(6) NOT NULL COMMENT 'Unieke HDN-nummer van de verzender. Nummer moet overeenkomen met actieve certificaatnummer. \n\nUnique HDN-number of the sending party\n\nNumber has to correspond with the active certificate number',
  `VerzenderNaam` varchar(100) NOT NULL COMMENT 'Naam van verzendende partij zoals geregistreerd bij de ontvanger.\n\nName of the sending party as registered by the receiving party',
  `OntvangerNrHDN` varchar(6) NOT NULL COMMENT 'HDN-nummer van de ontvangende partij\n\nHDN-number of the receiving party',
  `OntvangerNaam` varchar(100) NOT NULL COMMENT '(Eind)Ontvanger naam waarvoor dit bericht is opgemaakt\n\nName of the receiving party\n',
  `Berichtsoort` varchar(255) NOT NULL COMMENT 'Waardelijst BerichtSoortType\nGeeft de berichtsoort aan\n\nHDN referencelist BerichSoortType\n\nRF_BerichtSoortType',
  `BerichtVersie` varchar(6) NOT NULL COMMENT 'Geeft het versienummer van de generieke bericht specificaties weer waarop het bericht gebaseerd is.\n\nVersion number of the generic message specification',
  `OntvangerCode` varchar(45) NOT NULL COMMENT 'Waardelijst OntvangerCodeType\n\nCode van de ontvanger die is aangesloten op het HDN netwerk en die gebruikt wordt voor het aanroepen van het juiste schema.\n\nHDN Reference table OntvangerCodeType \n\n(Code receiving party)\n\nCode of the receiving party that is connected to the HDN network. It’s used to connect to the right schema in the HDN Network',
  `VerzendDt` datetime NOT NULL COMMENT 'Datum waarop het bericht verzonden is. Datum wordt gezet door applicatie die het bericht heeft aangemaakt.\n\nSend date of the message. The date will be set by the application that produces and sends the message',
  `VerzendTijd` datetime NOT NULL COMMENT 'Tijd waarop het bericht verzonden is. Tijd wordt gezet door applicatie die het bericht heeft aangemaakt.\n\nSend time of the message. The date will be set by the application that produces and sends the message',
  `AanvraagVolgNr` varchar(255) NOT NULL COMMENT 'Volgnummer van de aanvraag, waarop het bericht betrekking heeft. Niet overschrijven door ontvangende partij. Nummer dient overgenomen te worden in retourberichten. \n\nSequence number of the request this message refers to.\n\nMust not be changed by any receiving party. Number has to be copied into all return messages.',
  `AanvraagVersie` decimal(3,0) NOT NULL COMMENT 'Version number of the request this message refers to.\n\nMust not be changed by any receiving party. Number has to be copied into all return messages.',
  `PakketNaam` varchar(35) NOT NULL COMMENT 'Geeft de naam van de verzendende applicatie. \n\nName of the sending software product\n',
  `PakketVersie` varchar(35) NOT NULL COMMENT 'Geeft de versie van de verzendende applicatie\n\nVersion of the sending software product',
  `Bericht` mediumtext COMMENT 'In this field the complete XML-message is stored',
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idHeader`),
  KEY `fk_Header_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_Header_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HDN_BerichtOpslag`
--

LOCK TABLES `HDN_BerichtOpslag` WRITE;
/*!40000 ALTER TABLE `HDN_BerichtOpslag` DISABLE KEYS */;
/*!40000 ALTER TABLE `HDN_BerichtOpslag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HandelsNaam`
--

DROP TABLE IF EXISTS `HandelsNaam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HandelsNaam` (
  `idHandelsNaam` int(11) NOT NULL,
  `SoortBedrijfsNaam` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortBedrijfsNaamType',
  `BedrijfsNaam` varchar(69) DEFAULT NULL,
  PRIMARY KEY (`idHandelsNaam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HandelsNaam`
--

LOCK TABLES `HandelsNaam` WRITE;
/*!40000 ALTER TABLE `HandelsNaam` DISABLE KEYS */;
/*!40000 ALTER TABLE `HandelsNaam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HuidigLeningdeel`
--

DROP TABLE IF EXISTS `HuidigLeningdeel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HuidigLeningdeel` (
  `idHuidigLeningDeel` int(11) NOT NULL,
  `AflossenJN` tinyint(1) NOT NULL COMMENT 'Geeft aan of de totale financiering afgelost wordt, en vervangen wordt door de nieuwe financiering (entiteit Lening en Leningdeel)',
  `AflossingsvormHuidigLeningdeel` int(11) DEFAULT NULL COMMENT 'Waardelijst AflossingsVormType\n\nGeeft de wijze van aflossing van het huidige leningdeel.\n\nConditie:\nAflossingsVormHuidigLeningdeel is verplicht als AflossenJN is onwaar',
  `RenteVastInMndHuidigLeningdeel` decimal(3,0) DEFAULT NULL COMMENT 'Aantal maanden waarin de rente contractueel is vastgelegd, als totaal inclusief mogelijke rentebedenktijdperiodes van het huidige leningdeel.\n\nConditie:\nRenteVastInMndHuidigLeningdeel is verplicht als AflossenJN is onwaar',
  `NrHuidigLeningdeel` varchar(35) DEFAULT NULL COMMENT 'Geeft het nummer van het huidige leningdeel',
  `DuurInMndHuidigLeningdeel` decimal(3,0) DEFAULT NULL COMMENT 'Geeft de oorspronkelijke looptijd van het leningdeel in maanden, 999 = levenslang.\n\nConditie:\nDuurInMndHuidigLeningdeel is verplicht als\nAflossenJN is onwaar',
  `BedragHuidigLeningdeel` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het bedrag van een afzonderlijk huidig leningdeel.\n\nConditie:\nBedragHuidigLeningdeel is verplicht als\nAflossenJN is onwaar',
  `RestantSaldoHuidigLeningdeel` decimal(14,2) DEFAULT NULL COMMENT 'Het actuele saldo van het huidige leningdeel op de (vermoedelijke) passeerdatum\nConditie:\nRenteSaldoHuidigLeningdeel is verplicht als AflossenJN is onwaar',
  `RentePercHuidigLeningdeel` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het huidige rentepercentage van het huidige leningdeel weer.\n\nConditie:\nRentePctHuidigLeningdeel is verplicht als\nAflossenJN is onwaar',
  `PctConsumptiefHuidigLeningdeel` decimal(14,3) DEFAULT NULL COMMENT 'Het percentage van het huidige leningdeel bedrag dat consumptief is (niet fiscaal aftrekbaar).',
  `HuidigeFinanciering_idHuidigeFinanciering` int(11) NOT NULL,
  PRIMARY KEY (`idHuidigLeningDeel`),
  KEY `fk_HuidigLeningdeel_HuidigeFinanciering1` (`HuidigeFinanciering_idHuidigeFinanciering`),
  CONSTRAINT `fk_HuidigLeningdeel_HuidigeFinanciering1` FOREIGN KEY (`HuidigeFinanciering_idHuidigeFinanciering`) REFERENCES `HuidigeFinanciering` (`idHuidigeFinanciering`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HuidigLeningdeel`
--

LOCK TABLES `HuidigLeningdeel` WRITE;
/*!40000 ALTER TABLE `HuidigLeningdeel` DISABLE KEYS */;
/*!40000 ALTER TABLE `HuidigLeningdeel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HuidigObject`
--

DROP TABLE IF EXISTS `HuidigObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HuidigObject` (
  `idHuidigObject` int(11) NOT NULL,
  `StraatNaam` varchar(100) NOT NULL COMMENT 'Straatnaam, indien sprake is van een correspondentie adres kan ook de aanduiding ''postbus'' gebruikt worden.',
  `HuisNr` decimal(5,0) NOT NULL COMMENT 'Huisnummer, indien sprake is van een correspondentie adres kan dit ook een postbusnummer zijn.',
  `HuisNrToevoeging` varchar(10) DEFAULT NULL COMMENT 'Huisnummertoevoeging, bijvoorbeeld I, Huis, zwart etc.. ',
  `Land` int(11) NOT NULL COMMENT 'ISO Landenlijst 3166, versie 1 met aanvullend versie 3 voor vervallen gebieden. Noot: versie 1 bevat tweeletterige codes, versie 3 bevat vierletterige (!) codes.',
  `TeVerkopen` tinyint(1) NOT NULL COMMENT 'Geeft weer of het huidig object wordt verkocht of in eigendom blijft',
  `VerkochtJN` varchar(1) DEFAULT NULL COMMENT 'Geeft weer of het huidig object is verkocht.\n\nConditie:\nVerkochtJN is verplicht als TeVerkopen is waar',
  `VerkoopakteJN` varchar(1) DEFAULT NULL COMMENT 'Geeft aan of er een getekende verkoopakte van het huidig object aanwezig is.',
  `VerkoopPrijs` decimal(14,2) DEFAULT NULL COMMENT 'De (verwachte) verkoopprijs van het te verkopen object.\n\nConditie:\nVerkoopPrijs is verplicht als VerkochtJN is waar',
  `MarktWaarde` decimal(14,2) DEFAULT NULL COMMENT 'De (getaxeerde) marktwaarde van het object.\n\nConditie:\nMarktWaarde is verplicht als VerkochtJN is onwaar',
  `VerkoopDt` datetime DEFAULT NULL COMMENT 'De leveringsdatum conform het verkoopcontract.\nConditie:\nVerkoopDt is verplicht als VerkochtJN is waar',
  `OntbVwdnDt` datetime DEFAULT NULL COMMENT 'Datum waarop de ontbindende voorwaarden van het verkoopcontract van het object aflopen',
  `CodeVerhuur` varchar(255) DEFAULT NULL COMMENT 'Waardelijst Verhuurtype\n\nDefinieert het eventuele verhuurcontract van het huidige object.',
  `Huurinkomsten` decimal(14,2) DEFAULT NULL,
  `OverbruggingJN` varchar(1) NOT NULL COMMENT 'Geeft aan of er sprake is van een overbruggingskrediet bij de geldgever waar de financiering aangevraagd wordt.',
  `OverbruggingsBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Bedrag dat benodigd is als overbruggingskrediet. Het veld OverbruggingJN geeft aan of er ook een overbrugging aangevraagd wordt bij de geldverstrekker waar de AX voor bedoeld is.\n\nConditie:\nOverbruggingsBedrag is verplicht als OverbruggingJN is waar',
  `OverbruggingsRente` varchar(255) DEFAULT NULL COMMENT 'Waardelijst OverbruggingsRenteType\n\nGeeft weer of er sprake is van een variabele of vaste rente voor het overbruggingskrediet\n\n',
  `HuidigeFinancieringJN` varchar(1) NOT NULL COMMENT 'Geeft aan of er een bestaande hypotheek is voor het object',
  `AanvragerBestaandeHypotheek` int(11) DEFAULT NULL COMMENT 'Referentie entiteit\n\nGeeft de naam van de entiteit waarin NAW gegevens van deze partij zijn opgenomen',
  `VerkoopOnderVoorwaardenJN` varchar(1) DEFAULT NULL COMMENT 'Geeft aan dat op het object een voorwaarde bij verkoop van toepassing is',
  `VerkoopOnderVoorwaardenConstructie` varchar(255) DEFAULT NULL COMMENT 'Waardelijst\nVerkoopOnderVoorwaardenConstructieType\n\nGeeft aan welke voorwaarde  bij verkoop van toepassing is',
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idHuidigObject`),
  KEY `fk_HuidigObject_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_HuidigObject_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HuidigObject`
--

LOCK TABLES `HuidigObject` WRITE;
/*!40000 ALTER TABLE `HuidigObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `HuidigObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HuidigeFinanciering`
--

DROP TABLE IF EXISTS `HuidigeFinanciering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HuidigeFinanciering` (
  `idHuidigeFinanciering` int(11) NOT NULL,
  `AflossenJN` varchar(1) NOT NULL COMMENT 'Geeft aan of de totale financiering afgelost wordt, en vervangen wordt door de nieuwe financiering (entiteit Lening en Leningdeel)',
  `FinancierBestaandeHyp` varchar(255) NOT NULL COMMENT 'Waardelijst MaatschappyType\n\nDe Financier van de huidige hypotheek.',
  `OmschrFinancier` varchar(100) DEFAULT NULL COMMENT 'Naam van de huidige financier. Mag alleen gebruikt worden indien de omschrijving niet in de keuzelijst voorkomt.\nConditie:\nOmschrFinancier is verplicht als\nFinancierBestaandeHyp heeft waarde\n(Anders )',
  `SaldoBestaandeHyp` decimal(14,2) NOT NULL COMMENT 'Het totaal openstaand saldo van de bestaande hypotheek (zowel Box1 als Box3). In geval van hypotheek: op passeerdatum van de nieuwe hypotheek. In geval van consumptief krediet: op ingangsdatum van het nieuwe krediet.',
  `AflossingsvrijDeel` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het deel van de totale hypotheek (alle leningdelen) waarvoor geen aflossingcomponent\n(financiële of bancaire dekking, annuïteit of lineair) is opgenomen in de totale huidige financiering.\nPeildatum is de (vermoedelijke) passeerdatum.',
  `OorsprHoofdsom` decimal(14,2) DEFAULT NULL COMMENT 'De totale oorspronkelijke hoofdsom van de bestaande hypotheek bij het aangaan van de hypotheek (zowel Box 1 als Box 3).',
  `BedragInschrijving` decimal(14,2) NOT NULL,
  `NrBestaandeHyp` varchar(20) NOT NULL COMMENT 'Een {hypotheeknummer} is een nummer, waaronder de bestaande [hypotheekovereenkomst] voorkomt in de administratie van de [hypotheekverstrekker].',
  `OorspronkelijkeLngDt` datetime DEFAULT NULL COMMENT 'Oorspronkelijke ingangsdatum van de huidige hypotheek	',
  `EigenWonSchuld` decimal(14,2) NOT NULL COMMENT 'Het bedrag van de huidige hypotheek waarvan het bedrag aftrekbaar is',
  `Garantie` varchar(255) NOT NULL COMMENT 'Waardelijst Garantietype\n\nGeeft aan of de huidige financiering met NHG, een gemeentegarantie of zonder garantie is gesloten',
  `RangOrde` decimal(3,0) NOT NULL,
  `HuidigRenteBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Te betalen rente voor de huidige financiering per jaar',
  `HuidigInlegBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Jaarbedrag aan te betalen premie/inleg van de huidige verzekering/rekening',
  `OVBRenteVerlies` decimal(14,2) DEFAULT NULL COMMENT 'Bedrag aan renteverlies (= te betalen rente vanaf tekenen koopcontract tot aan oplevering) tijdens de bouw van een nieuw object in verband met overbrugging',
  `HuidigObject_idHuidigObject` int(11) NOT NULL,
  PRIMARY KEY (`idHuidigeFinanciering`),
  KEY `fk_HuidigeFinanciering_HuidigObject1` (`HuidigObject_idHuidigObject`),
  CONSTRAINT `fk_HuidigeFinanciering_HuidigObject1` FOREIGN KEY (`HuidigObject_idHuidigObject`) REFERENCES `HuidigObject` (`idHuidigObject`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HuidigeFinanciering`
--

LOCK TABLES `HuidigeFinanciering` WRITE;
/*!40000 ALTER TABLE `HuidigeFinanciering` DISABLE KEYS */;
/*!40000 ALTER TABLE `HuidigeFinanciering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HypotheekGever`
--

DROP TABLE IF EXISTS `HypotheekGever`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HypotheekGever` (
  `idHypotheekgever` int(11) NOT NULL,
  `RefPartijNAWData` int(11) NOT NULL COMMENT 'Geeft de naam/het nummer van de entiteit waarin de NAW gegevens van de aanvrager zijn opgenomen.',
  `TelefoonNrPrive` varchar(12) DEFAULT NULL COMMENT 'Datatype Telefoonnummer\nTelefoonnummer waarop de partij per telefoon te bereiken is. (Alleen cijfers toegestaan, geen spatie of andere leestekens, 1 of 2 voorloopnullen toegestaan, geen beperking op aantal cijfers)',
  `TelefoonNrWerk` varchar(12) DEFAULT NULL COMMENT 'Datatype Telefoonnummer\nTelefoonnummer waarop de partij per telefoon te bereiken is. (Alleen cijfers toegestaan, geen spatie of andere leestekens, 1 of 2 voorloopnullen toegestaan, geen beperking op aantal cijfers)',
  `TelefoonNrMobiel` varchar(12) DEFAULT NULL COMMENT 'Datatype Telefoonnummer\nTelefoonnummer waarop de partij per telefoon te bereiken is. (Alleen cijfers toegestaan, geen spatie of andere leestekens, 1 of 2 voorloopnullen toegestaan, geen beperking op aantal cijfers)',
  `E-mailadres` varchar(45) DEFAULT NULL COMMENT 'Emailadres van de partij',
  `VoormaligWoonLand` varchar(255) DEFAULT NULL COMMENT 'Waardelijst Landtype\n\nHet land waar de aanvrager gewoond heeft (of nog woont)',
  `VoormaligWoonLandDt` datetime DEFAULT NULL COMMENT 'Datum behorend bij VoormaligWoonLand. Geeft aan vanaf wanneer de aanvrager buiten Nederland heeft gewoond.',
  `VoormaligWoonLandEindDt` datetime DEFAULT NULL COMMENT 'Datum behorend bij VoormaligWoonLand. Geeft aan tot wanneer de aanvrager buiten Nederland heeft gewoond.',
  `HuidigAdresDt` datetime DEFAULT NULL COMMENT 'Datum sinds wanneer de aanvrager woonachtig is op het opgegeven adres',
  `BurgerlijkeStaat` varchar(255) NOT NULL COMMENT 'Waardelijst BurgerlijkeStaatType\n\nGeeft aan wat de burgerlijke staat van de persoon is',
  `HuwelijkOntbonden` tinyint(1) NOT NULL COMMENT 'Geeft aan of een eerder huwelijk en/of geregistreerd partnerschap van de aanvrager is ontbonden door echtscheiding.',
  `SoortOntbonden` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortOntbondenType\nGeeft aan of er een huwelijk of een geregistreerd partnerschap van de hypotheekgever is ontbonden.\n',
  `HuwelijkOntbondenDt` datetime DEFAULT NULL COMMENT 'De datum van ontbinding van het laatste huwelijk/gereg. Partnerschap.\n\nConditie:\nHuwelijkOntbondenDt is verplicht als\nHuwelijkOntbonden is waar',
  `WeduweWeduwnaar` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de hypotheekgever weduwe/weduwnaar is.',
  `KinderenAantal` decimal(2,0) DEFAULT NULL COMMENT 'Het totaal aantal kinderen binnen het huishouden. Vul bij partner hetzelfde in.',
  `OpleidingsNiveau` varchar(255) DEFAULT NULL COMMENT 'Waardelijst OpleidingsNiveauType\n\nHet niveau van de hoogst genoten opleiding van de hypotheekgever',
  `AlimenOntv` decimal(14,2) DEFAULT NULL COMMENT 'Bedrag dat jaarlijks aan alimentatie wordt ontvangen. (let op veld wordt uitgefaseerd met de generieke versie 10, gebruik hiervoor de velden onder de entiteit Inkomsten).',
  `AlimenOntvEindDt` datetime DEFAULT NULL COMMENT 'Einddatum van de ontvangst van alimentatie.(let op veld wordt uitgefaseerd met de generieke versie 10,\ngebruik hiervoor de velden onder de entiteit Inkomsten).',
  `HoofdAanspr` tinyint(1) NOT NULL COMMENT 'Geeft aan of de hypotheekgever hoofdelijk aansprakelijk is.',
  `MedeSchuldenaarJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan dat de hypotheekgever geen eigenaar/bewoner van het onderpand is maar wel als hoofdelijk schuldenaar aangemerkt dient te worden.',
  `EersteHypotheekOoit` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of dit de eerste hypotheek van de hypotheekgever is.',
  `EigenWonReserve` decimal(14,2) DEFAULT NULL COMMENT 'Het bedrag waarvoor de klant \neigenwoningschuld kan aangaan als hij een andere woning koopt.',
  `VrijBesteedbaarInkVermogen` decimal(14,2) DEFAULT NULL COMMENT 'Inkomsten die de consument vrij kan besteden zonder dat de vermogensbron wordt aangetast. Dit vermogen kan dienen ter bepaling van de maximale leencapaciteit (conform gedragscode CHF).',
  `AfwKlantProfiel` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de aanvraag van het advies afwijkt van het gemaakt klantprofiel.',
  `KlantSegment` varchar(255) DEFAULT NULL COMMENT 'Waardelijst KlantSegmentType\n\nGeeft het klanksegment aan waartoe de klant behoort.',
  `KlantSegmentMij` varchar(255) DEFAULT NULL COMMENT 'Waardelijst KlantSegmentMijType\n\nGeeft het maatschappijspecifieke klantsegment aan waartoe de klant behoort bij de maatschappij/geldgever waar de aanvraag voor is.',
  `BetalingsProblemen` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de hypotheekgever in het verleden betalingsproblemen heeft gehad.',
  `BetalingsProblemenOmschr` varchar(255) DEFAULT NULL COMMENT 'Omschrijving van de betalingsproblemen van de hypotheekgever',
  `FaillissementJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de hypotheekgever betrokken is (geweest) bij een faillissement',
  `LoonbeslagJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de hypotheekgever betrokken is (geweest) bij een faillissement',
  `UitsluitendBelastinplichtigInNedJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of een klant uitsluitend belastingplichtig is in Nederland (t.b.v. CRS/FATCA)',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\n\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten',
  `Inkomsten` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nGeeft alle inkomstenbronnen weer',
  `Verplichtingen` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\nEntiteit met gegevens van de verplichtingen van de partij (consumptieve kredieten, alimentatie e.d.) Ook hypotheken zonder object dienen hier opgegeven te worden.',
  `BezittingenBoxDrie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nGegevens van alle bezittingen in Box 3. Indien er inkomen uit dit vermogen meegenomen dient te worden, dan dient dit opgenomen te worden in entiteit Vermogen.',
  `Identificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n\nIdentificatie',
  `FiscaleWoonstaat` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit i.k.v. CRS Fatca. Entiteit is maatschappij specifiek. Deze entiteit opnemen in het schema i.c.m. \nHypotheekGever/UitsluitendBelastingplichtigInNedJN.\n',
  `Dienstbetrekking` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit met de inkomensgegevens uit dienstbetrekking.',
  `Onderneming` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit met de inkomensgegevens uit onderneming (ZZP, 1 manszaak, VOF enz).',
  `Uitkering` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit met inkomen uit uitkering (Sociale uitkering, verzekeringen, lijfrentes enz.).',
  `Pensioen` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit met inkomensgegevens (exclusief AOW) uit pensioen\n(Ouderdomspensioen, VUT, PrePensioen enz).',
  `Overige` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit met overige inkomsten die niet in andere entiteiten voorkomen (alimentatie enz).',
  `Vermogen` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nEntiteit met inkomensgegevens uit vermogen (inkomen uit beleggen, sparen verhuur enz). Indien er wel vermogen is, maar geen (specifiek) inkomen\nuit dat vermogen dan dient de entiteit BezittingenBoxDrie gebruikt te worden.',
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idHypotheekgever`),
  KEY `fk_HypotheekGever_Dossier1` (`Dossier_idDossier`),
  KEY `fk_HypotheekGever_PartijNAWData1` (`RefPartijNAWData`),
  CONSTRAINT `fk_HypotheekGever_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HypotheekGever_PartijNAWData1` FOREIGN KEY (`RefPartijNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HypotheekGever`
--

LOCK TABLES `HypotheekGever` WRITE;
/*!40000 ALTER TABLE `HypotheekGever` DISABLE KEYS */;
/*!40000 ALTER TABLE `HypotheekGever` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HypotheekHouder`
--

DROP TABLE IF EXISTS `HypotheekHouder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HypotheekHouder` (
  `idHypotheekHouder` int(11) NOT NULL,
  `BedragInschrijving` decimal(14,2) DEFAULT NULL,
  `RenteVoet` decimal(14,3) DEFAULT NULL,
  `Financier` varchar(255) DEFAULT NULL,
  `Notaris` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  PRIMARY KEY (`idHypotheekHouder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HypotheekHouder`
--

LOCK TABLES `HypotheekHouder` WRITE;
/*!40000 ALTER TABLE `HypotheekHouder` DISABLE KEYS */;
/*!40000 ALTER TABLE `HypotheekHouder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hypotheekopties`
--

DROP TABLE IF EXISTS `Hypotheekopties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hypotheekopties` (
  `idHypotheekopties` int(11) NOT NULL,
  `CodeHypotheekOptiesMij` varchar(255) DEFAULT NULL COMMENT 'Waardelijst\nCodeHypotheekOptiesMijType',
  `LeningDeel_idLeningDeel` int(11) NOT NULL,
  `Lening_idLening` int(11) NOT NULL,
  PRIMARY KEY (`idHypotheekopties`),
  KEY `fk_Hypotheekopties_LeningDeel1` (`LeningDeel_idLeningDeel`),
  KEY `fk_Hypotheekopties_Lening1` (`Lening_idLening`),
  CONSTRAINT `fk_Hypotheekopties_Lening1` FOREIGN KEY (`Lening_idLening`) REFERENCES `Lening` (`idLening`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hypotheekopties_LeningDeel1` FOREIGN KEY (`LeningDeel_idLeningDeel`) REFERENCES `LeningDeel` (`idLeningDeel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hypotheekopties`
--

LOCK TABLES `Hypotheekopties` WRITE;
/*!40000 ALTER TABLE `Hypotheekopties` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hypotheekopties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IABerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `IABerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IABerichtStatusSpecificatie` (
  `idIABerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusIABericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusIABerichtType ',
  PRIMARY KEY (`idIABerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IABerichtStatusSpecificatie`
--

LOCK TABLES `IABerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `IABerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `IABerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Identificatie`
--

DROP TABLE IF EXISTS `Identificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Identificatie` (
  `idIdentificatie` int(11) NOT NULL,
  `BSN` decimal(9,0) DEFAULT NULL COMMENT 'Geeft het Burgerservicenummer weer. Minimaal 8 tekens, maximaal 9 tekens, voorloop nul is toegestaan.',
  `LegitimatieSoort` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LegitimatieSoortType\n\nHet door legitimatiebewijs',
  `LegitimatieNr` varchar(20) DEFAULT NULL COMMENT 'Het nummer van het legitimatiebewijs\n\nConditie:\nLegitimatieNr is verplicht als\nLegitimatieSoort heeft waarde (Europese identiteitskaart, Paspoort, Rijbewijs, Visum)',
  `LegitimatieAfgifteDt` datetime DEFAULT NULL COMMENT 'Geeft de datum weer waarop het legitimatiedocument is afgegeven',
  `LegitimatieAfgiftePlaats` varchar(100) DEFAULT NULL COMMENT 'Geeft de plaats weer waarop het legitimatiedocument is afgegeven',
  `LegitimatieAfgifteLand` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nGeeft het land weer waar het legitimatiedocument is afgegeven. ISO Landenlijst 3166, versie 1 met aanvullend versie 3 voor vervallen gebieden. Noot: versie 1 bevat tweeletterige codes, versie 3 bevat vierletterige (!) codes.',
  `LegitimatieEindDt` datetime DEFAULT NULL COMMENT 'Geeft de datum weer tot wanneer het legitimatiedocument geldig is',
  `VerblijfsVergunning` varchar(255) DEFAULT NULL COMMENT 'Waardelijst VerblijfsVergunningType\nHet soort verblijfsvergunning',
  `VerblijfsVergunningNr` varchar(20) DEFAULT NULL COMMENT 'Het nummer van de verblijfsvergunning.',
  `VerblijfsVergunningEindDt` datetime DEFAULT NULL COMMENT 'Einddatum van de verblijfsvergunning\n\nConditie:\nVerblijfsVergunningEindDt is verplicht als\nVerblijfsVergunning heeft waarde\n(verblijfsvergunning bepaalde tijd)',
  `HypotheekGever_idHypotheekgever` int(11) NOT NULL,
  PRIMARY KEY (`idIdentificatie`),
  KEY `fk_Identificatie_HypotheekGever1` (`HypotheekGever_idHypotheekgever`),
  CONSTRAINT `fk_Identificatie_HypotheekGever1` FOREIGN KEY (`HypotheekGever_idHypotheekgever`) REFERENCES `HypotheekGever` (`idHypotheekgever`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Identificatie`
--

LOCK TABLES `Identificatie` WRITE;
/*!40000 ALTER TABLE `Identificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `Identificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inkomsten`
--

DROP TABLE IF EXISTS `Inkomsten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inkomsten` (
  `idInkomsten` int(11) NOT NULL,
  `RechtsVorm` varchar(255) NOT NULL COMMENT 'Waardelijst RechtVormType\n\nGeeft het type rechtvorm van de onderneming aan',
  `SoortOnderneming` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortOndernemingType\n\nGeeft de soort onderneming aan behorende bij de gekozen rechtsvorm.',
  `IngangsDtOnderneming` datetime NOT NULL COMMENT 'Geeft de datum van de start van de onderneming aan.',
  `EindDtOnderneming` datetime DEFAULT NULL COMMENT 'Geeft de einddatum van de onderneming aan.',
  `KvKnummer` decimal(8,0) DEFAULT NULL COMMENT 'Het nummer van de onderneming waarmee het bij de Kamer van Koophandel geregistreerd staat.',
  `RSIN` decimal(9,0) DEFAULT NULL COMMENT 'Rechtspersonen Samenwerkingsverbanden\nInformatie Nummer (RSIN). Vanuit de Belastingdienst is een groeipad aangegeven voor het vastleggen van de RSIN voor niet-natuurlijke personen: Uiterlijk in het jaar 2018 over het belastingjaar 2017 vermelden alle financiële instellingen het RSIN in plaats van het Fiscaal nummer of het KvK-nummer.',
  `VestigingsNummer` decimal(12,0) DEFAULT NULL COMMENT 'Het nummer van de vestiging waarmee het bij de Kamer van Koophandel geregistreerd staat.',
  `InkomenPrognoseLopendJr` decimal(14,2) DEFAULT NULL COMMENT 'Prognose voor het totaal jaarinkomen van het lopende kalenderjaar.',
  `InkomenZelfstandige` decimal(14,2) DEFAULT NULL COMMENT 'De gemiddelde netto jaarwinst over de afgelopen 3 kalenderjaren (tot maximaal de nettowinst van het laatste kalenderjaar).',
  `Inkomen1jr` decimal(14,2) DEFAULT NULL COMMENT 'Totaal jaarinkomen van het eerste voorgaande kalenderjaar. Hier wordt het inkomen bedoeld zoals beschreven de normen van NHG inzake inkomen uit zelfstandig beroep of bedrijf.',
  `Inkomen2jr` decimal(14,2) DEFAULT NULL COMMENT 'Totaal jaarinkomen van twee kalenderjaren terug. Hier wordt het inkomen bedoeld zoals beschreven de normen van NHG inzake inkomen uit zelfstandig beroep of bedrijf.',
  `Inkomen3jr` decimal(14,2) DEFAULT NULL COMMENT 'Totaal jaarinkomen van drie kalenderjaren terug. Hier wordt het inkomen bedoeld zoals beschreven de normen van NHG inzake inkomen uit zelfstandig beroep of bedrijf.',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten.',
  `PctInkomenMeetellen` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het percentage van het inkomen dat meegeteld moet worden ter bepaling van de leencapaciteit. Alleen opgeven als afwijkt van 100%.',
  `DuurInMndMeetellen` decimal(3,0) DEFAULT NULL COMMENT 'Geeft de specifieke looptijd in maanden waar een percentage van het inkomen moet meegeteld worden ter bepaling van de leencapaciteit. Alleen opgeven indien niet gelijk is aan duur hypotheek.',
  `HypotheekGever_idHypotheekgever` int(11) NOT NULL,
  PRIMARY KEY (`idInkomsten`),
  KEY `fk_Inkomsten_HypotheekGever1` (`HypotheekGever_idHypotheekgever`),
  CONSTRAINT `fk_Inkomsten_HypotheekGever1` FOREIGN KEY (`HypotheekGever_idHypotheekgever`) REFERENCES `HypotheekGever` (`idHypotheekgever`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inkomsten`
--

LOCK TABLES `Inkomsten` WRITE;
/*!40000 ALTER TABLE `Inkomsten` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inkomsten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InlegAfspraken`
--

DROP TABLE IF EXISTS `InlegAfspraken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InlegAfspraken` (
  `idInlegAfspraken` int(11) NOT NULL,
  `SoortInleg` int(11) NOT NULL COMMENT 'Waardelijst InlegType',
  `AanvangNaIngangsDtInMnd` decimal(3,0) NOT NULL,
  `DuurInMnd` decimal(3,0) NOT NULL,
  `InlegBedrag` decimal(14,2) NOT NULL,
  `BetalingsTermijn` varchar(255) NOT NULL COMMENT 'Waardelijst BetalingsTermijnType\n',
  `InlegUitDepot` decimal(14,2) DEFAULT NULL,
  `RefDebiteurNAWData` int(11) NOT NULL COMMENT 'Referentie entiteit',
  `BancaireDekking_idBancaireDekking` int(11) NOT NULL,
  PRIMARY KEY (`idInlegAfspraken`),
  KEY `fk_InlegAfspraken_BancaireDekking1` (`BancaireDekking_idBancaireDekking`),
  KEY `fk_InlegAfspraken_PartijNAWData1` (`RefDebiteurNAWData`),
  CONSTRAINT `fk_InlegAfspraken_BancaireDekking1` FOREIGN KEY (`BancaireDekking_idBancaireDekking`) REFERENCES `BancaireDekking` (`idBancaireDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_InlegAfspraken_PartijNAWData1` FOREIGN KEY (`RefDebiteurNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InlegAfspraken`
--

LOCK TABLES `InlegAfspraken` WRITE;
/*!40000 ALTER TABLE `InlegAfspraken` DISABLE KEYS */;
/*!40000 ALTER TABLE `InlegAfspraken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inlegdepot`
--

DROP TABLE IF EXISTS `Inlegdepot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inlegdepot` (
  `idInlegdepot` int(11) NOT NULL,
  `BedragDepot` decimal(14,2) DEFAULT NULL,
  `BancaireDekking_idBancaireDekking` int(11) NOT NULL,
  PRIMARY KEY (`idInlegdepot`),
  KEY `fk_Inlegdepot_BancaireDekking1` (`BancaireDekking_idBancaireDekking`),
  CONSTRAINT `fk_Inlegdepot_BancaireDekking1` FOREIGN KEY (`BancaireDekking_idBancaireDekking`) REFERENCES `BancaireDekking` (`idBancaireDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inlegdepot`
--

LOCK TABLES `Inlegdepot` WRITE;
/*!40000 ALTER TABLE `Inlegdepot` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inlegdepot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inschrijving`
--

DROP TABLE IF EXISTS `Inschrijving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inschrijving` (
  `idInschrijving` int(11) NOT NULL,
  `Register` varchar(25) DEFAULT NULL,
  `SoortInschrijving` varchar(25) DEFAULT NULL,
  `IngeschrevenOpDt` datetime DEFAULT NULL,
  `OndertekendOpDt` datetime DEFAULT NULL,
  `EenzijdigOpzegbaarJN` tinyint(1) DEFAULT NULL,
  `SoortRecht` varchar(255) DEFAULT NULL,
  `HypotheekHouder` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  PRIMARY KEY (`idInschrijving`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inschrijving`
--

LOCK TABLES `Inschrijving` WRITE;
/*!40000 ALTER TABLE `Inschrijving` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inschrijving` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `KXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KXBerichtStatusSpecificatie` (
  `idKXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusKXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusKXBerichtType ',
  PRIMARY KEY (`idKXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KXBerichtStatusSpecificatie`
--

LOCK TABLES `KXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `KXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `KXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kadaster`
--

DROP TABLE IF EXISTS `Kadaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kadaster` (
  `idKadaster` int(11) NOT NULL,
  `SamenstelllingBerichtDt` datetime DEFAULT NULL,
  `SamenstellingBerichtTijd` datetime DEFAULT NULL,
  `ToestandDt` datetime DEFAULT NULL,
  `AangevraagdPersoon` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `AangevraagdObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n\n',
  `Recht` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)\n\nEen Recht vormt de relatie tussen een Kadastraal object en een Persoon en geeft aan welk recht, met uitzondering van hypotheek en beslag, door een Persoon wordt uitgeoefend op een Kadastraal object. \n',
  PRIMARY KEY (`idKadaster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kadaster`
--

LOCK TABLES `Kadaster` WRITE;
/*!40000 ALTER TABLE `Kadaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kadaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KadastraleAanduiding`
--

DROP TABLE IF EXISTS `KadastraleAanduiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KadastraleAanduiding` (
  `idKadastraleAanduiding` int(11) NOT NULL,
  `Sectie` decimal(2,0) NOT NULL,
  `Nr` decimal(15,0) NOT NULL,
  `AppartementsVolgNr` varchar(10) DEFAULT NULL,
  `Grootte` decimal(8,0) DEFAULT NULL,
  `KadastraleGemeente` varchar(30) NOT NULL,
  `Coordinaat Y` varchar(25) DEFAULT NULL,
  `Coordinaat X` varchar(25) DEFAULT NULL,
  `OmschrKadastraalObject` varchar(25) DEFAULT NULL,
  `Object_idObject` int(11) NOT NULL,
  PRIMARY KEY (`idKadastraleAanduiding`),
  KEY `fk_KadastraleAanduiding_Object1` (`Object_idObject`),
  CONSTRAINT `fk_KadastraleAanduiding_Object1` FOREIGN KEY (`Object_idObject`) REFERENCES `Object` (`idObject`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KadastraleAanduiding`
--

LOCK TABLES `KadastraleAanduiding` WRITE;
/*!40000 ALTER TABLE `KadastraleAanduiding` DISABLE KEYS */;
/*!40000 ALTER TABLE `KadastraleAanduiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KortingsRegeling`
--

DROP TABLE IF EXISTS `KortingsRegeling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KortingsRegeling` (
  `idKortingsRegeling` int(11) NOT NULL,
  `KortingsSoort` varchar(20) DEFAULT NULL,
  `KortingsCode` varchar(20) DEFAULT NULL,
  `KortingsPct` decimal(14,3) DEFAULT NULL,
  `KortingsBedrag` decimal(14,2) DEFAULT NULL,
  `KortingsDuurInMnd` decimal(3,0) DEFAULT NULL,
  `OpslagPctNaKorting` decimal(14,3) DEFAULT NULL,
  `LeningDeelKorting` decimal(14,2) DEFAULT NULL,
  `LeningDeel_idLeningDeel` int(11) NOT NULL,
  `Lening_idLening` int(11) NOT NULL,
  PRIMARY KEY (`idKortingsRegeling`),
  KEY `fk_KortingsRegeling_LeningDeel1` (`LeningDeel_idLeningDeel`),
  KEY `fk_KortingsRegeling_Lening1` (`Lening_idLening`),
  CONSTRAINT `fk_KortingsRegeling_Lening1` FOREIGN KEY (`Lening_idLening`) REFERENCES `Lening` (`idLening`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_KortingsRegeling_LeningDeel1` FOREIGN KEY (`LeningDeel_idLeningDeel`) REFERENCES `LeningDeel` (`idLeningDeel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KortingsRegeling`
--

LOCK TABLES `KortingsRegeling` WRITE;
/*!40000 ALTER TABLE `KortingsRegeling` DISABLE KEYS */;
/*!40000 ALTER TABLE `KortingsRegeling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KredietAanbieding`
--

DROP TABLE IF EXISTS `KredietAanbieding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KredietAanbieding` (
  `idKredietAanbieding` int(11) NOT NULL COMMENT 'Out of Scope',
  PRIMARY KEY (`idKredietAanbieding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KredietAanbieding`
--

LOCK TABLES `KredietAanbieding` WRITE;
/*!40000 ALTER TABLE `KredietAanbieding` DISABLE KEYS */;
/*!40000 ALTER TABLE `KredietAanbieding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KredietAfspraak`
--

DROP TABLE IF EXISTS `KredietAfspraak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KredietAfspraak` (
  `idKredietAfspraak` int(11) NOT NULL,
  `SoortKredietAfspraak` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortKredietAfspraakType',
  `BedragKredietAfspraak` decimal(14,2) DEFAULT NULL,
  `DuurInMnd` decimal(3,0) DEFAULT NULL,
  `AanvangNaIngangsDtInMnd` decimal(3,0) DEFAULT NULL,
  `LeningDeel_idLeningDeel` int(11) NOT NULL,
  PRIMARY KEY (`idKredietAfspraak`),
  KEY `fk_KredietAfspraak_LeningDeel1` (`LeningDeel_idLeningDeel`),
  CONSTRAINT `fk_KredietAfspraak_LeningDeel1` FOREIGN KEY (`LeningDeel_idLeningDeel`) REFERENCES `LeningDeel` (`idLeningDeel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KredietAfspraak`
--

LOCK TABLES `KredietAfspraak` WRITE;
/*!40000 ALTER TABLE `KredietAfspraak` DISABLE KEYS */;
/*!40000 ALTER TABLE `KredietAfspraak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KvK`
--

DROP TABLE IF EXISTS `KvK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KvK` (
  `idKvK` int(11) NOT NULL,
  `AangevraagdObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `Organisatie` int(11) DEFAULT NULL COMMENT 'Enititeit (0-99)',
  PRIMARY KEY (`idKvK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KvK`
--

LOCK TABLES `KvK` WRITE;
/*!40000 ALTER TABLE `KvK` DISABLE KEYS */;
/*!40000 ALTER TABLE `KvK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `LXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LXBerichtStatusSpecificatie` (
  `idLXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusLXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusLXBerichtType \n',
  `MedischAkkoordDt` datetime DEFAULT NULL COMMENT 'Conditie:\nMedischAkkoordDt is verplicht als StatusLXBericht heeft waarde (Medisch akkoord ) \n',
  PRIMARY KEY (`idLXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LXBerichtStatusSpecificatie`
--

LOCK TABLES `LXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `LXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `LXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lening`
--

DROP TABLE IF EXISTS `Lening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lening` (
  `idLening` int(11) NOT NULL,
  `SoortAdvies` varchar(255) DEFAULT NULL COMMENT 'Waardelijst AdviesTypeType',
  `HypotheekBedrag` decimal(14,2) NOT NULL,
  `HypothecaireInschrijving` decimal(14,2) DEFAULT NULL,
  `OpnameLimiet` decimal(14,2) DEFAULT NULL,
  `Financier` varchar(255) NOT NULL COMMENT 'Waardelijst MaatschappijType\n',
  `Regeling` varchar(255) NOT NULL COMMENT 'Waardelijst RegelingType\n\n•Regeling heeft waarde (eerste hypotheek\n(nieuw) ) als TeVerkopen is waar EN AflossenJN is waar\n•Regeling heeft waarde (eerste hypotheek (nieuw), meeneemhypotheek, doorgeefhypotheek) als AankoopWoningJN is waar\n•Regeling heeft waarde (onderhands, omzetting, tweede of hoger in rang hypotheek, meeneemhypotheek, doorgeefhypotheek ) als AflossenJN is onwaar',
  `RangOrde` decimal(3,0) NOT NULL COMMENT 'RangOrde is groter dan of gelijk aan 2 als Regeling heeft waarde (tweede of hoger in rang hypotheek )',
  `NrBestaandeHyp` varchar(20) DEFAULT NULL,
  `ProductNaam` varchar(35) DEFAULT NULL,
  `CodeLeningMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst CodeLeningMijType',
  `PasseerDt` datetime NOT NULL,
  `IngangMutatieDt` datetime DEFAULT NULL,
  `ArrangementsNr` varchar(35) DEFAULT NULL,
  `IngebEigenMiddelen` decimal(14,2) DEFAULT NULL,
  `BankGarantieBedrag` decimal(14,2) DEFAULT NULL,
  `BankGarantieKosten` decimal(14,2) DEFAULT NULL,
  `VoorlopigeOfferte` tinyint(1) DEFAULT NULL,
  `VoorlopigeOfferteDt` datetime DEFAULT NULL,
  `VoorlopigeOfferteNr` varchar(35) DEFAULT NULL,
  `BespreekZaakJN` varchar(1) DEFAULT NULL,
  `BespreekZaakKenmerk` varchar(100) DEFAULT NULL,
  `AanvraagLeningDt` datetime DEFAULT NULL,
  `ProvisieBedrag` decimal(14,2) DEFAULT NULL,
  `OfferteRente` varchar(255) DEFAULT NULL COMMENT 'Waardelijst OfferteRenteType\n',
  `BetalingsmethodeAdvieskosten` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst AdvieskostenVormType',
  `BrutoAdvieskosten` decimal(14,2) DEFAULT NULL,
  `NettoAdvieskosten` decimal(14,2) DEFAULT NULL,
  `BemiddelingsKosten` decimal(14,2) DEFAULT NULL,
  `Afhandelingskosten` decimal(14,2) DEFAULT NULL,
  `GeldigOfferteMnd` decimal(3,0) DEFAULT NULL,
  `BoeteRente` decimal(14,2) DEFAULT NULL,
  `NHG` tinyint(1) DEFAULT NULL,
  `Mutatie` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MutatieType\n\nConditie:\n•Mutatie heeft niet waarde (Aankoop woning,\nOversluiting bij nieuwe financier ) als Regeling heeft waarde (onderhands, interne oversluiting, tweede of hoger in rang hypotheek)\n•Mutatie is verplicht als NHG is waar EN\nRegeling heeft waarde (eerste hypotheek (nieuw), onderhands, interne oversluiting, oversluiting andere geldgever, tweede of hoger in rang hypotheek, meeneemhypotheek, doorgeefhypotheek )\n•Mutatie heeft waarde (Aankoop woning ) als Regeling heeft waarde\n(meeneemhypotheek, doorgeefhypotheek )\n•Mutatie heeft niet waarde (Oversluiting bij nieuwe financier) als Regeling heeft waarde\n(eerste hypotheek (nieuw))\n•Mutatie heeft niet waarde (Aankoop woning) als Regeling heeft waarde (oversluiting\nandere geldgever)',
  `MaatwerkOplossing` tinyint(1) NOT NULL COMMENT 'Geeft weer of er sprake is van een hypothecaire aanvraag met een maatwerkoplossing volgens de normen van de CHF. (Comply or Explain, waarbij Comply = N Nee en Explain = J Ja)',
  `KlantGeenAdviesJN` tinyint(1) DEFAULT NULL,
  `HypotheekAkteKostenSpec` decimal(14,2) DEFAULT NULL,
  `NHGKostenSpec` decimal(14,2) DEFAULT NULL,
  `OverwaardeBeschermingsPct` decimal(14,3) DEFAULT NULL,
  `ComplexProductJN` tinyint(1) DEFAULT NULL,
  `RisicoProfielKlant` varchar(35) DEFAULT NULL,
  `SPVCode` varchar(35) DEFAULT NULL,
  `Royementskosten` decimal(14,2) DEFAULT NULL,
  `PremieWoonlastenVerzekeringPerJaar` decimal(14,2) DEFAULT NULL,
  `DuurWoonlastenVerzekeringInMnd` decimal(3,0) DEFAULT NULL,
  `ServiceAbonnementKostenIMPerJaar` decimal(14,2) DEFAULT NULL,
  `AankoopWoningJN` tinyint(1) NOT NULL,
  `MaatwerkOplSpec` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-9)\nConditie:\nMaatwerkOplSpec is verplicht als MaatwerkOplossing is waar',
  `Leningdeel` int(11) NOT NULL COMMENT 'Entiteit  (1-9)',
  `ProvisieKeuze` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)',
  `HypotheekOpties` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)',
  `KortingsRegeling` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)',
  `Verlengingskosten` decimal(14,2) DEFAULT NULL,
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idLening`),
  KEY `fk_Lening_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_Lening_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lening`
--

LOCK TABLES `Lening` WRITE;
/*!40000 ALTER TABLE `Lening` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LeningDeel`
--

DROP TABLE IF EXISTS `LeningDeel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LeningDeel` (
  `idLeningDeel` int(11) NOT NULL,
  `CodeLeningDeel` varchar(255) NOT NULL COMMENT 'Waardelijst CodeLeningDeelType\n\nConditie:\n•CodeLeningDeel heeft waarde (Nieuw, Doorgeef (Zelfde geldgever, zelfde  object, andere hypotheekgever)) als Regeling heeft waarde (doorgeefhypotheek)\n•CodeLeningDeel heeft waarde (Nieuw, Meeneem (zelfde geldgever, ander object) ) als Regeling heeft waarde\n(meeneemhypotheek)\n•CodeLeningDeel heeft waarde (Omzetting (andere aflosvorm)) als Regeling heeft waarde (omzetting)\n•CodeLeningDeel heeft waarde (Nieuw ) als\nRegeling heeft waarde (eerste hypotheek (nieuw), interne oversluiting, oversluiting andere geldgever, tweede of hoger in rang hypotheek)\n',
  `BelastingBox` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BelastingBoxType\n',
  `NrBestaandeHyp` varchar(20) DEFAULT NULL,
  `NrBestaandLeningdeel` varchar(35) DEFAULT NULL,
  `RefDebiteurNAWData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit',
  `ProductNaam` varchar(35) DEFAULT NULL,
  `CodeDeelMij` varchar(255) DEFAULT NULL COMMENT 'Maatschappij Waardelijst CodeDeelMijType\n',
  `DuurInMnd` decimal(3,0) NOT NULL,
  `LeningDeelBedrag` decimal(14,2) NOT NULL,
  `AflossingsVorm` varchar(255) NOT NULL COMMENT 'Waardelijst AflossingsVormType',
  `CodeRenteMij` varchar(255) DEFAULT NULL COMMENT 'Waardelijst CodeRenteMijType\n',
  `RenteAfspraak` varchar(255) NOT NULL COMMENT 'Waardelijst RenteAfspraakType',
  `RenteVastInMnd` decimal(3,0) NOT NULL,
  `RenteBedenkTijd` varchar(255) DEFAULT NULL COMMENT 'Waardelijst RenteBedenktijdType',
  `RenteBedenkTijdInMnd` decimal(3,0) DEFAULT NULL COMMENT 'Conditie:\nRenteBedenkTijdInMnd is verplicht als RenteBedenkTijd heeft waarde (vooraf, achteraf )',
  `RenteMiddeling` tinyint(1) DEFAULT NULL,
  `DisagioPct` decimal(14,3) DEFAULT NULL,
  `DisagioBedrag` decimal(14,2) DEFAULT NULL,
  `BetalingsTermijn` varchar(255) NOT NULL COMMENT 'Waardelijst BetalingsTermijnType\n',
  `BetalingAchteraf` tinyint(1) NOT NULL,
  `RentePct` decimal(14,3) NOT NULL,
  `EffectieveRentePerc` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het effectieve rentepercentage voor dit leningdeel \nVerplicht in OX-bericht',
  `ProvisieBedrag` decimal(14,2) DEFAULT NULL,
  `RenteAfspraakOmschr` varchar(100) DEFAULT NULL,
  `RentePctBovenMarge` decimal(14,3) DEFAULT NULL,
  `RentePctOnderMarge` decimal(14,3) DEFAULT NULL,
  `PctConsumptief` decimal(14,3) DEFAULT NULL,
  `ConsumptiefBedrag` decimal(14,2) DEFAULT NULL,
  `RenteAftrekEindDt` datetime DEFAULT NULL,
  `OfferteRente` varchar(255) DEFAULT NULL COMMENT 'Waardelijst OfferteRenteType',
  `RenteUitFLH` tinyint(1) DEFAULT NULL,
  `OpnamebedragNot` decimal(14,2) DEFAULT NULL,
  `FiscaalRegime` varchar(255) DEFAULT NULL COMMENT 'Waardelijst FiscaleRegimeType\n',
  `KortingsRegeling` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-5)',
  `FinancieleDekking` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-9)\n\nConditie:\nFinancieleDekking is verplicht als AflossingsVorm heeft waarde (Levensverzekering)',
  `BancaireDekking` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\n\nBancaireDekking is verplicht als\nAflossingsVorm heeft waarde\n(Spaarrekening)',
  `HypotheekOpties` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)',
  `KredietAfspraak` int(11) DEFAULT NULL COMMENT 'Entiteit  (0-99)',
  `Lening_idLening` int(11) NOT NULL,
  PRIMARY KEY (`idLeningDeel`),
  KEY `fk_LeningDeel_Lening1` (`Lening_idLening`),
  KEY `fk_LeningDeel_PartijNAWData1` (`RefDebiteurNAWData`),
  CONSTRAINT `fk_LeningDeel_Lening1` FOREIGN KEY (`Lening_idLening`) REFERENCES `Lening` (`idLening`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_LeningDeel_PartijNAWData1` FOREIGN KEY (`RefDebiteurNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LeningDeel`
--

LOCK TABLES `LeningDeel` WRITE;
/*!40000 ALTER TABLE `LeningDeel` DISABLE KEYS */;
/*!40000 ALTER TABLE `LeningDeel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logging`
--

DROP TABLE IF EXISTS `Logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logging` (
  `idLogging` int(11) NOT NULL,
  `LoggingDt` datetime NOT NULL,
  `LoggingTijd` datetime NOT NULL,
  `DossierNr` int(11) DEFAULT NULL,
  `Document` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLogging`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logging`
--

LOCK TABLES `Logging` WRITE;
/*!40000 ALTER TABLE `Logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logging_heeft_Gebruiker`
--

DROP TABLE IF EXISTS `Logging_heeft_Gebruiker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logging_heeft_Gebruiker` (
  `Logging_idLogging` int(11) NOT NULL,
  `Gebruiker_idGebruiker` int(11) NOT NULL,
  KEY `fk_Logging_heeft_Gebruiker_Logging1` (`Logging_idLogging`),
  KEY `fk_Logging_heeft_Gebruiker_Gebruiker1` (`Gebruiker_idGebruiker`),
  CONSTRAINT `fk_Logging_heeft_Gebruiker_Gebruiker1` FOREIGN KEY (`Gebruiker_idGebruiker`) REFERENCES `Gebruiker` (`idGebruiker`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Logging_heeft_Gebruiker_Logging1` FOREIGN KEY (`Logging_idLogging`) REFERENCES `Logging` (`idLogging`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logging_heeft_Gebruiker`
--

LOCK TABLES `Logging_heeft_Gebruiker` WRITE;
/*!40000 ALTER TABLE `Logging_heeft_Gebruiker` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logging_heeft_Gebruiker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `MXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MXBerichtStatusSpecificatie` (
  `idMXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusMXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusMXBerichtType \n',
  PRIMARY KEY (`idMXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MXBerichtStatusSpecificatie`
--

LOCK TABLES `MXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `MXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `MXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MaatwerkOplSpec`
--

DROP TABLE IF EXISTS `MaatwerkOplSpec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MaatwerkOplSpec` (
  `idMaatwerkOplSpec` int(11) NOT NULL,
  `RefPartijNAWData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit',
  `MaatwerkOplCodeMij` varchar(255) NOT NULL COMMENT 'Maatschappij Waardelijst MaatwerkOplCodeMijType',
  `MaatwerkOplToelichting` varchar(255) DEFAULT NULL,
  `Lening_idLening` int(11) NOT NULL,
  `PartijNAWData_idPartijNAWData` int(11) NOT NULL,
  PRIMARY KEY (`idMaatwerkOplSpec`),
  KEY `fk_MaatwerkOplSpec_Lening1` (`Lening_idLening`),
  KEY `fk_MaatwerkOplSpec_PartijNAWData1` (`RefPartijNAWData`),
  CONSTRAINT `fk_MaatwerkOplSpec_Lening1` FOREIGN KEY (`Lening_idLening`) REFERENCES `Lening` (`idLening`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MaatwerkOplSpec_PartijNAWData1` FOREIGN KEY (`RefPartijNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MaatwerkOplSpec`
--

LOCK TABLES `MaatwerkOplSpec` WRITE;
/*!40000 ALTER TABLE `MaatwerkOplSpec` DISABLE KEYS */;
/*!40000 ALTER TABLE `MaatwerkOplSpec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeldingTekstRegels`
--

DROP TABLE IF EXISTS `MeldingTekstRegels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeldingTekstRegels` (
  `idMeldingTekstRegels` int(11) NOT NULL,
  `Tekstregel` varchar(255) DEFAULT NULL,
  `Tekstregel2` varchar(255) DEFAULT NULL,
  `Tekstregel3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMeldingTekstRegels`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeldingTekstRegels`
--

LOCK TABLES `MeldingTekstRegels` WRITE;
/*!40000 ALTER TABLE `MeldingTekstRegels` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeldingTekstRegels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mutatie`
--

DROP TABLE IF EXISTS `Mutatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mutatie` (
  `idMutatie` int(11) NOT NULL,
  `CodeMutatie` varchar(255) NOT NULL COMMENT 'Waardelijst CodeMutatieType',
  `Toelichting` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMutatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mutatie`
--

LOCK TABLES `Mutatie` WRITE;
/*!40000 ALTER TABLE `Mutatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mutatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NBWO`
--

DROP TABLE IF EXISTS `NBWO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NBWO` (
  `idNBWO` int(11) NOT NULL,
  `AangevraagdObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n',
  `ResultaatObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  `ReferentieObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  PRIMARY KEY (`idNBWO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NBWO`
--

LOCK TABLES `NBWO` WRITE;
/*!40000 ALTER TABLE `NBWO` DISABLE KEYS */;
/*!40000 ALTER TABLE `NBWO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHG`
--

DROP TABLE IF EXISTS `NHG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHG` (
  `idNHG` int(11) NOT NULL,
  `Kenmerk` varchar(255) DEFAULT NULL,
  `FinanciersNummerNHG` varchar(35) DEFAULT NULL,
  `StatusMelding` varchar(255) DEFAULT NULL,
  `NHGLening` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `NHGObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `NHGKosten` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `NHGEigenaar` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)',
  `NHGInkomensToets` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  PRIMARY KEY (`idNHG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHG`
--

LOCK TABLES `NHG` WRITE;
/*!40000 ALTER TABLE `NHG` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGEigenaar`
--

DROP TABLE IF EXISTS `NHGEigenaar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGEigenaar` (
  `idNHGEigenaar` int(11) NOT NULL,
  `PensioenJaar` decimal(2,0) DEFAULT NULL,
  `InkomenBijAanvang` decimal(14,2) DEFAULT NULL,
  `TotaalVerplichting` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`idNHGEigenaar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGEigenaar`
--

LOCK TABLES `NHGEigenaar` WRITE;
/*!40000 ALTER TABLE `NHGEigenaar` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGEigenaar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGInkomensToets`
--

DROP TABLE IF EXISTS `NHGInkomensToets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGInkomensToets` (
  `idNHGInkomensToets` int(11) NOT NULL,
  `BedragNHG` decimal(14,2) DEFAULT NULL,
  `BasisLeningNHG` decimal(14,2) DEFAULT NULL,
  `IndicatieLeningsbedragRuimteNHG` decimal(14,2) DEFAULT NULL,
  `NHGPeriode` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `ExtraAflossing` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  PRIMARY KEY (`idNHGInkomensToets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGInkomensToets`
--

LOCK TABLES `NHGInkomensToets` WRITE;
/*!40000 ALTER TABLE `NHGInkomensToets` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGInkomensToets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGKosten`
--

DROP TABLE IF EXISTS `NHGKosten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGKosten` (
  `idNHGKosten` int(11) NOT NULL,
  `BijkomendeKostenNHG` decimal(14,2) DEFAULT NULL,
  `BijkomendeKostenPctNHG` decimal(14,3) DEFAULT NULL,
  `KoopsomGenormeerd` decimal(14,2) DEFAULT NULL,
  `Koopsom` decimal(14,2) DEFAULT NULL,
  `MaxBedragKwaliteitsverbeteringEBV` decimal(14,2) DEFAULT NULL,
  `MaxLeningBedragWaarde` decimal(14,2) DEFAULT NULL,
  `OVWaarde` decimal(14,2) DEFAULT NULL,
  `TotaleKosten` decimal(14,2) DEFAULT NULL,
  `GrensDepotKwaliteitsverbeteringEBV` decimal(14,2) DEFAULT NULL,
  `GrensDepotKwaliteitsverbetering` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`idNHGKosten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGKosten`
--

LOCK TABLES `NHGKosten` WRITE;
/*!40000 ALTER TABLE `NHGKosten` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGKosten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGLening`
--

DROP TABLE IF EXISTS `NHGLening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGLening` (
  `idNHGLening` int(11) NOT NULL,
  `HoofdsomNHG` decimal(14,2) NOT NULL,
  `ProvisieNHG` decimal(14,2) NOT NULL,
  `MinOverlijdensrisicoNHG` decimal(14,2) NOT NULL,
  `LeningnummerNHG` varchar(255) NOT NULL,
  `AflossingsvrijDeelNHG` decimal(14,2) NOT NULL,
  `LooptijdInMaandenNHG` decimal(4,0) NOT NULL,
  `EindDatumNHG` datetime NOT NULL,
  `RenteVastPeriodeNHG` decimal(4,0) NOT NULL,
  `ToetsRentePctNHG` decimal(14,3) NOT NULL,
  `ToetsRenteChfNHG` decimal(14,3) NOT NULL,
  `NHGLeningdeel` int(11) NOT NULL COMMENT 'Entiteit (1-1)',
  PRIMARY KEY (`idNHGLening`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGLening`
--

LOCK TABLES `NHGLening` WRITE;
/*!40000 ALTER TABLE `NHGLening` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGLening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGLeningDeel`
--

DROP TABLE IF EXISTS `NHGLeningDeel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGLeningDeel` (
  `idNHGLeningDeel` int(11) NOT NULL,
  `ToetsRentePctNHG` decimal(14,3) NOT NULL,
  `EindDatumNHG` datetime NOT NULL,
  `MaandlastNHG` decimal(14,2) NOT NULL,
  PRIMARY KEY (`idNHGLeningDeel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGLeningDeel`
--

LOCK TABLES `NHGLeningDeel` WRITE;
/*!40000 ALTER TABLE `NHGLeningDeel` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGLeningDeel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGObject`
--

DROP TABLE IF EXISTS `NHGObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGObject` (
  `idNHGObject` int(11) NOT NULL,
  `Gemeente` varchar(30) DEFAULT NULL,
  `PlaatsNaam` varchar(35) DEFAULT NULL,
  `GemeenteCode` varchar(255) DEFAULT NULL,
  `GemDeelnameNHG` tinyint(1) DEFAULT NULL,
  `GemDeelnemerKwalVerb` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idNHGObject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGObject`
--

LOCK TABLES `NHGObject` WRITE;
/*!40000 ALTER TABLE `NHGObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHGPeriode`
--

DROP TABLE IF EXISTS `NHGPeriode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHGPeriode` (
  `idNHGPeriode` int(11) NOT NULL,
  `ToegestaneMaandlastNHG` decimal(14,2) DEFAULT NULL,
  `MaandlastNHG` decimal(14,2) DEFAULT NULL,
  `RuimteNHG` decimal(14,2) DEFAULT NULL,
  `StartMaand` decimal(2,0) DEFAULT NULL,
  `EindMaand` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`idNHGPeriode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHGPeriode`
--

LOCK TABLES `NHGPeriode` WRITE;
/*!40000 ALTER TABLE `NHGPeriode` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHGPeriode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NXBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `NXBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NXBerichtStatusSpecificatie` (
  `idNXBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusNXBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusNXBerichtType ',
  PRIMARY KEY (`idNXBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NXBerichtStatusSpecificatie`
--

LOCK TABLES `NXBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `NXBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `NXBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notaris`
--

DROP TABLE IF EXISTS `Notaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notaris` (
  `idNotaris` int(11) NOT NULL,
  `RefContactPersoonData` int(11) DEFAULT NULL COMMENT 'Geeft de naam van de entiteit waarin de NAW gegevens van de contactpersoon zijn opgenomen.',
  `BedrijfsNaam` varchar(100) NOT NULL,
  `CodeNotaris` varchar(255) DEFAULT NULL COMMENT 'Waardelijst NotarisType\nGeeft de rol van notaris waarvan de gegevens worden doorgegeven.',
  `TelefoonNrWerk` decimal(11,0) DEFAULT NULL COMMENT 'Telefoonnummer waarop de partij per telefoon te bereiken is. (Alleen cijfers toegestaan, geen spatie of andere leestekens, 1 of 2 voorloopnullen toegestaan, geen beperking op aantal cijfers)',
  `NotarisNummer` decimal(6,0) DEFAULT NULL COMMENT 'Inschrijfnummer van de notaris bij de KNB.',
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idNotaris`),
  KEY `fk_Notaris_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_Notaris_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notaris`
--

LOCK TABLES `Notaris` WRITE;
/*!40000 ALTER TABLE `Notaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `Notaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Object`
--

DROP TABLE IF EXISTS `Object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Object` (
  `idObject` int(11) NOT NULL,
  `CodeObject` varchar(255) NOT NULL COMMENT 'Waardelijst CodeObjectType',
  `Onderpand` varchar(255) NOT NULL COMMENT 'Waardelijst OnderpandType',
  `StraatNaam` varchar(100) DEFAULT NULL COMMENT 'StraatNaam is verplicht als Onderpand heeft waarde (bestaand, bestaand verbouw)',
  `HuisNr` decimal(5,0) DEFAULT NULL COMMENT 'HuisNr is verplicht als Onderpand heeft waarde (bestaand, bestaand verbouw)',
  `HuisNrToevoeging` varchar(10) DEFAULT NULL,
  `Postcode` varchar(10) DEFAULT NULL COMMENT 'Postcode is verplicht als Onderpand heeft waarde (bestaand, bestaand verbouw)',
  `PlaatsNaam` varchar(35) NOT NULL COMMENT 'Gemeente is verplicht als NHG is waar',
  `Gemeente` varchar(35) DEFAULT NULL,
  `Land` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType',
  `BouwPlanNr` varchar(35) DEFAULT NULL COMMENT 'BouwPlanNr is verplicht als Onderpand heeft waarde (nieuw)',
  `SituatieNr` varchar(35) DEFAULT NULL COMMENT 'SituatieNr is verplicht als Onderpand heeft waarde (nieuw)',
  `EigenBewoning` tinyint(1) NOT NULL,
  `CodeVerhuur` varchar(255) DEFAULT NULL COMMENT 'Waardelijst VerhuurType',
  `Huurinkomsten` decimal(14,2) DEFAULT NULL,
  `PercVerhuur` decimal(14,3) DEFAULT NULL,
  `EindVerhuurDt` datetime DEFAULT NULL,
  `AfkoopExPartner` decimal(14,2) DEFAULT NULL,
  `Vruchtgebruik` tinyint(1) DEFAULT NULL,
  `EigenaarBewonersAantal` decimal(1,0) DEFAULT NULL,
  `Erfpacht` tinyint(1) NOT NULL,
  `ErfpachtEeuwigDurend` tinyint(1) DEFAULT NULL COMMENT 'ErfpachtEeuwigDurend is verplicht als Erfpacht is waar',
  `ErfpachtBeginDt` datetime DEFAULT NULL,
  `ErfpachtEindDt` datetime DEFAULT NULL COMMENT 'ErfpachtEindDt is verplicht als ErfpachtEeuwigDurend is onwaar',
  `ErfpachtCanon` decimal(14,2) DEFAULT NULL,
  `ErfpachtAfkoopsom` decimal(14,2) DEFAULT NULL COMMENT 'ErfpachtAfkoopsom is verplicht als\nErfpachtMeeFinancieren is waar',
  `ErfpachtMeeFinancieren` tinyint(1) DEFAULT NULL COMMENT 'ErfpachtMeeFinancieren is verplicht als\nErfpacht is waar',
  `ErfpachtPartJN` tinyint(1) DEFAULT NULL,
  `SubsidieRegeling` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SubsidieRegelingType',
  `SubsidieRegelingBedrag` decimal(14,2) DEFAULT NULL,
  `SubsidieRegelingPeriodiekJaarBedrag` decimal(14,2) DEFAULT NULL,
  `BouwJaar` decimal(4,0) DEFAULT NULL COMMENT 'BouwJaar is verplicht als NHG is waar EN Onderpand heeft waarde (bestaand, bestaand verbouw )',
  `AppartementsRecht` tinyint(1) DEFAULT NULL COMMENT 'AppartementsRecht is verplicht als NHG is waar',
  `BedragKwaliteitsverbeteringEBV` decimal(14,2) DEFAULT NULL,
  `HoofdVerblijf` tinyint(1) DEFAULT NULL,
  `TaxatieAanwezig` tinyint(1) DEFAULT NULL,
  `BronWaardebepaling` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BronWaardebepalingType',
  `OorspronkelijkeWaardeWoning` decimal(14,2) DEFAULT NULL,
  `TaxatieDt` datetime DEFAULT NULL,
  `KostenTaxatie` decimal(14,2) DEFAULT NULL,
  `AfkoopsomToekOhd` decimal(14,2) DEFAULT NULL,
  `OnderhoudsToestand` varchar(255) DEFAULT NULL COMMENT 'Waardelijst OnderhoudsToestandType\n',
  `Bouwaard` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BouwaardType',
  `MarktWaarde` decimal(14,2) DEFAULT NULL COMMENT 'MarktWaarde is verplicht als Onderpand heeft waarde (bestaand, bestaand verbouw)',
  `Koopsom` decimal(14,2) DEFAULT NULL COMMENT 'Koopsom is verplicht als AankoopWoningJN is waar',
  `RoerendeZaken` decimal(14,2) DEFAULT NULL,
  `KostenKoper` tinyint(1) DEFAULT NULL,
  `KoperHuurder` tinyint(1) DEFAULT NULL,
  `WOZWaarde` decimal(14,2) DEFAULT NULL,
  `WOZWaardeTaxatieDt` datetime DEFAULT NULL,
  `AchterstalligOnderhoud` decimal(14,2) DEFAULT NULL COMMENT 'AchterstalligOnderhoud is verplicht als NHG is waar EN Onderpand heeft waarde\n(bestaand, bestaand verbouw)',
  `VerbouwingsKosten` decimal(14,2) DEFAULT NULL COMMENT 'MarktWaardeKosten is verplicht als Onderpand heeft waarde (bestaand verbouw)',
  `MarktWaardeNaVerb` decimal(14,2) DEFAULT NULL COMMENT 'MarktWaardeNaVerb is verplicht als Onderpand heeft waarde (bestaand verbouw)',
  `VerbouwingsDepot` decimal(14,2) DEFAULT NULL,
  `RenteLeningViaVerbouwingsDepotJN` tinyint(1) DEFAULT NULL,
  `ZelfBouw` tinyint(1) DEFAULT NULL COMMENT 'ZelfBouw is verplicht als Onderpand heeft waarde (nieuw)',
  `KoopsomGrond` decimal(14,2) DEFAULT NULL,
  `RenteVerlies` decimal(14,2) DEFAULT NULL,
  `HypInclRenteVerlies` tinyint(1) DEFAULT NULL,
  `Meerwerk` decimal(14,2) DEFAULT NULL,
  `OpleveringsDt` datetime DEFAULT NULL,
  `BouwRente` decimal(14,2) DEFAULT NULL,
  `ServiceKosten` decimal(14,2) DEFAULT NULL,
  `KostenLeveringsAkteSpec` decimal(14,2) DEFAULT NULL,
  `MakelaarsKostenSpec` decimal(14,2) DEFAULT NULL,
  `OverdrachtsBelastingSpec` decimal(14,2) DEFAULT NULL,
  `VerkoopOnderVoorwaardenJN` tinyint(1) DEFAULT NULL,
  `VerkoopOnderVoorwaardenConstructie` varchar(255) DEFAULT NULL COMMENT 'Waardelijst\nVerkoopOnderVoorwaardenConstructieType',
  `EnergieKlasse` varchar(255) DEFAULT NULL COMMENT 'Waardelijst EnergieKlasseType',
  `PercentageBedrijfsgedeelte` decimal(14,3) DEFAULT NULL,
  `PercentageBedrijfsGedeelteNaVerb` decimal(14,3) DEFAULT NULL,
  `OntbVwdnDt` datetime DEFAULT NULL,
  `KostenBouwkundigeKeuring` decimal(14,2) DEFAULT NULL,
  `PremieOpstalverzekeringPerJaar` decimal(14,2) DEFAULT NULL,
  `Lening` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `KadastraleAanduiding` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)',
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idObject`),
  KEY `fk_Object_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_Object_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Object`
--

LOCK TABLES `Object` WRITE;
/*!40000 ALTER TABLE `Object` DISABLE KEYS */;
/*!40000 ALTER TABLE `Object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Offerte`
--

DROP TABLE IF EXISTS `Offerte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Offerte` (
  `idOfferte` int(11) NOT NULL,
  `Header` int(11) NOT NULL COMMENT 'Entiteit (1-1)\n',
  `OfferteData` int(11) NOT NULL COMMENT 'Entiteit (1-1)',
  `Hypotheekgever` int(11) NOT NULL COMMENT 'Entiteit (1-9)',
  `PartijNAWData` int(11) NOT NULL COMMENT 'Entiteit (1-99)',
  `Object` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\n\nConditie:\nObject is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag ) \n',
  `Lening` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nLening is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag ) \n',
  `FinancieleDekking` int(11) DEFAULT NULL COMMENT 'Entiteit (0-9)\nConditie:\nFinancieleDekking is verplicht als ResponsOpBerichtSoort heeft waarde (LevenAanvraag ) \n',
  `KredietAanbieding` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)\nConditie:\nKredietAanbieding is verplicht als ResponsOpBerichtSoort heeft waarde (KredietAanvraag ) \n',
  `PrintDoc` int(11) NOT NULL COMMENT 'Entiteit (1-99)',
  `TekstRegels` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nLet op gebruik van deze entiteit kan tot vertraging leiden bij de ontvanger. Entiteit maakt per 1-12-2010 geen onderdeel meer uit van generieke set. \n',
  PRIMARY KEY (`idOfferte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Offerte`
--

LOCK TABLES `Offerte` WRITE;
/*!40000 ALTER TABLE `Offerte` DISABLE KEYS */;
/*!40000 ALTER TABLE `Offerte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OfferteData`
--

DROP TABLE IF EXISTS `OfferteData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OfferteData` (
  `idOfferteData` int(11) NOT NULL,
  `Financier` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MaatschappyType\nConditie:\nFinancier is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag, KredietAanvraag ) \n',
  `Plaatsnaam` varchar(35) DEFAULT NULL COMMENT 'Conditie:\nPlaatsNaam is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag, KredietAanvraag ) \n',
  `KvKNummer` decimal(8,0) DEFAULT NULL COMMENT 'Conditie:\nKvKnummer is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag, KredietAanvraag ) \n',
  `VestigingsNummer` decimal(12,0) DEFAULT NULL,
  `AcceptatieDt` datetime DEFAULT NULL COMMENT 'Conditie:\nAcceptatieDt is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag, KredietAanvraag ) \n',
  `GeldigheidsDt` datetime DEFAULT NULL COMMENT 'Conditie:\nGeldigheidsDt is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag, KredietAanvraag ) \n',
  `OfferteVerlenging` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de offerte verlengd kan worden (J) of niet (N) \n',
  `Kenmerk` varchar(255) NOT NULL COMMENT 'Het kenmerk waarmee de verzendende partij communiceert (kan Leningnummer / Dossiernummer / Offertenummer zijn) \n',
  `ResponsOpBerichtSoort` varchar(255) NOT NULL COMMENT 'Waardelijst BerichtSoortType',
  PRIMARY KEY (`idOfferteData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OfferteData`
--

LOCK TABLES `OfferteData` WRITE;
/*!40000 ALTER TABLE `OfferteData` DISABLE KEYS */;
/*!40000 ALTER TABLE `OfferteData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Onderneming`
--

DROP TABLE IF EXISTS `Onderneming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Onderneming` (
  `idOnderneming` int(11) NOT NULL,
  `IngangsDtOnderneming` datetime NOT NULL,
  `EindDtOnderneming` datetime DEFAULT NULL,
  `KvKnummer` decimal(8,0) DEFAULT NULL,
  `RSIN` decimal(9,0) DEFAULT NULL,
  `VestigingsNummer` decimal(12,0) DEFAULT NULL,
  `InkomenPrognoseLopendJr` decimal(14,2) DEFAULT NULL,
  `Inkomenzelfstandige` decimal(14,2) DEFAULT NULL,
  `Inkomen1jr` decimal(14,2) DEFAULT NULL,
  `Inkomen2jr` decimal(14,2) DEFAULT NULL,
  `Inkomen3jr` decimal(14,2) DEFAULT NULL,
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\n',
  `PctInkomenMeetellen` decimal(14,3) DEFAULT NULL,
  `DuurInMndMeetellen` decimal(3,0) DEFAULT NULL,
  `Inkomsten_idInkomsten` int(11) NOT NULL,
  PRIMARY KEY (`idOnderneming`),
  KEY `fk_Onderneming_Inkomsten1` (`Inkomsten_idInkomsten`),
  CONSTRAINT `fk_Onderneming_Inkomsten1` FOREIGN KEY (`Inkomsten_idInkomsten`) REFERENCES `Inkomsten` (`idInkomsten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Onderneming`
--

LOCK TABLES `Onderneming` WRITE;
/*!40000 ALTER TABLE `Onderneming` DISABLE KEYS */;
/*!40000 ALTER TABLE `Onderneming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ondertekening`
--

DROP TABLE IF EXISTS `Ondertekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ondertekening` (
  `idOndertekening` int(11) NOT NULL,
  `RefGeraadpleegdBron` int(11) DEFAULT NULL COMMENT 'Verwijzing naar de Bron die ondertekend is met deze handtekening \n',
  `HandTekening` varchar(255) DEFAULT NULL COMMENT 'HandTekening van degene die het bericht heeft verzonden \n',
  `CertificaatNr` varchar(100) DEFAULT NULL COMMENT 'Het nummer van het certificaat waarmee het bericht is verstuurd \n',
  PRIMARY KEY (`idOndertekening`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ondertekening`
--

LOCK TABLES `Ondertekening` WRITE;
/*!40000 ALTER TABLE `Ondertekening` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ondertekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organisatie`
--

DROP TABLE IF EXISTS `Organisatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organisatie` (
  `idOrganisatie` int(11) NOT NULL,
  `KvKNr` decimal(8,0) DEFAULT NULL,
  `RSIN` decimal(9,0) DEFAULT NULL,
  `VestigingsNr` decimal(12,0) DEFAULT NULL,
  `InschrijvingsDt` datetime DEFAULT NULL,
  `UitschrijvingsDt` datetime DEFAULT NULL,
  `IndicatieIngeschrevenJN` tinyint(1) DEFAULT NULL,
  `AantalWerkzamePersonen` decimal(6,0) DEFAULT NULL,
  `RechtsVorm` varchar(100) DEFAULT NULL,
  `HoofdActiviteit` varchar(100) DEFAULT NULL,
  `TelefoonNrWerk` varchar(25) DEFAULT NULL,
  `VestigingDt` datetime DEFAULT NULL,
  `RechtspersoonVestigingSindsDt` datetime DEFAULT NULL,
  `SBI` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)\n',
  `HandelsNaam` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1000)',
  `Adres` int(11) DEFAULT NULL COMMENT 'Entiteit (0-10)',
  PRIMARY KEY (`idOrganisatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organisatie`
--

LOCK TABLES `Organisatie` WRITE;
/*!40000 ALTER TABLE `Organisatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organisatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OverallResultaat`
--

DROP TABLE IF EXISTS `OverallResultaat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OverallResultaat` (
  `idOverallResultaat` int(11) NOT NULL,
  `SoortToets` varchar(25) DEFAULT NULL,
  `ToetsResultaat` varchar(25) DEFAULT NULL,
  `ToetsResultaatOmschr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idOverallResultaat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OverallResultaat`
--

LOCK TABLES `OverallResultaat` WRITE;
/*!40000 ALTER TABLE `OverallResultaat` DISABLE KEYS */;
/*!40000 ALTER TABLE `OverallResultaat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Overige`
--

DROP TABLE IF EXISTS `Overige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Overige` (
  `idOverige` int(11) NOT NULL,
  `SoortOverigeInkomsten` int(11) NOT NULL COMMENT 'Waardelijst SoortOverigeInkomstenType\nGeeft het soort overige inkomsten aan.',
  `SoortOverigeInkomstenOmschr` varchar(100) DEFAULT NULL COMMENT 'Vrije omschrijving van de overige inkomsten. Mag alleen gebruikt worden indien de omschrijving niet in de keuzelijst voorkomt.\n\nConditie:\nSoortOverigeInkomstenOmschr is verplicht als SoortOverigeInkomsten heeft waarde\n(Anders )',
  `BrutoJaarBedragOverigeInkomsten` decimal(14,2) NOT NULL COMMENT 'Totaal bruto jaarbedrag van de overige inkomenssoort aan.\nConditie:\nBrutoJaarBedragOverigeInkomsten is groter dan 0.00',
  `IngangsDtOverigeInkomsten` datetime DEFAULT NULL COMMENT 'Geeft de ingangsdatum van de overige inkomsten aan.',
  `EindDtOverigeInkomsten` datetime DEFAULT NULL COMMENT 'Geef de einddatum van de overige inkomsten aan.',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\n\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten.',
  `PctInkomenMeetellen` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het percentage van het inkomen dat meegeteld moet worden ter bepaling van de leencapaciteit. Alleen opgeven als afwijkt van 100%.',
  `DuurInMndMeetellen` decimal(3,0) DEFAULT NULL COMMENT 'Geeft de specifieke looptijd in maanden waar een percentage van het inkomen moet meegeteld worden ter bepaling van de leencapaciteit. Alleen opgeven indien niet gelijk is aan duur hypotheek.',
  `Inkomsten_idInkomsten` int(11) NOT NULL,
  PRIMARY KEY (`idOverige`),
  KEY `fk_Overige_Inkomsten1` (`Inkomsten_idInkomsten`),
  CONSTRAINT `fk_Overige_Inkomsten1` FOREIGN KEY (`Inkomsten_idInkomsten`) REFERENCES `Inkomsten` (`idInkomsten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Overige`
--

LOCK TABLES `Overige` WRITE;
/*!40000 ALTER TABLE `Overige` DISABLE KEYS */;
/*!40000 ALTER TABLE `Overige` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartijNAWData`
--

DROP TABLE IF EXISTS `PartijNAWData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartijNAWData` (
  `idPartijNAWData` int(11) NOT NULL,
  `SoortPartij` varchar(255) NOT NULL COMMENT 'Waardelijst SoortPartijType\nGeeft aan of partij een natuurlijk persoon is of een rechtspersoon',
  `BedrijfsNaam` varchar(100) DEFAULT NULL COMMENT 'De achternaam zonder tussenvoegsel. Bij natuurlijk persoon naam ingeven zoals ingeschreven bij GBA.\n\nConditie:\nAchterNaam is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `AchterNaam` varchar(100) DEFAULT NULL COMMENT 'De achternaam zonder tussenvoegsel. Bij natuurlijk persoon naam ingeven zoals ingeschreven bij GBA.\n\nConditie:\nAchterNaam is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `VoorNaam` varchar(35) DEFAULT NULL COMMENT 'Dit betreft de volledige eerste voornaam van de natuurlijke persoon.\n\nConditie:\nVoorNaam is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `TussenVoegsels` varchar(10) DEFAULT NULL COMMENT 'De tussenvoegsels behorende bij de achternaam.',
  `GeboorteNaamJN` varchar(1) DEFAULT NULL COMMENT 'Geeft aan of er sprake is van een\nGeboorteAchternaam bij deze persoon\n\nConditie:\nGeboorteNaamJN is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `GebAchterNaam` varchar(100) DEFAULT NULL COMMENT 'De geboortenaam van de partij.',
  `GebTussenVoegsels` varchar(10) DEFAULT NULL COMMENT 'De tussenvoegsels behorende bij de geboortenaam',
  `Nationaliteit` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nNationaliteit code (ISO Landenlijst 3166, versie 1 met aanvullend versie 3 voor vervallen gebieden). Noot: versie 1 bevat tweeletterige codes, versie 3 bevat vierletterige (!) codes.',
  `GeboortePlaats` varchar(35) DEFAULT NULL COMMENT 'De geboorteplaats van de natuurlijke persoon',
  `GeboorteLand` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nHet geboorteland van de natuurlijke persoon. (ISO Landenlijst 3166, versie 1 met aanvullend versie 3 voor vervallen gebieden). Noot: versie 1 bevat tweeletterige codes, versie 3 bevat vierletterige (!) codes.\n',
  `VoorLetters` varchar(15) DEFAULT NULL COMMENT 'Voorletter(s), in hoofdletters. Afwijkende voorletters als Th dienen letterlijk overgenomen te worden. Bijvoorbeeld: Theodoor Jan Carolus kan genoteerd worden als ThJC\n\nConditie:\nVoorLetters is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `Geslacht` varchar(255) DEFAULT NULL COMMENT 'Waardelijst GeslachtType\nHet geslacht van de natuurlijke persoon\n\nConditie:\nGeslacht is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `GeboorteDt` datetime DEFAULT NULL COMMENT 'De geboortedatum van de betreffende persoon.\n\nConditie:\nGeboorteDt is verplicht als SoortPartij heeft waarde (natuurlijk persoon)',
  `OverledenJN` tinyint(1) DEFAULT NULL,
  `StraatNaam` varchar(100) NOT NULL COMMENT 'Straatnaam, indien sprake is van een correspondentie adres kan ook de aanduiding ''postbus'' gebruikt worden.',
  `HuisNr` decimal(5,0) NOT NULL COMMENT 'Huisnummer, indien sprake is van een correspondentie adres kan dit ook een postbusnummer zijn.',
  `HuisNrToevoeging` varchar(10) DEFAULT NULL COMMENT 'Huisnummertoevoeging, bijvoorbeeld I, Huis, zwart etc..',
  `Postcode` varchar(10) NOT NULL COMMENT 'Postcode, behorend bij ingevulde straatnaam, huisnummer of bij ingevuld postbusnummer. Voor\nNederland 6 posities lang, zonder spatie ertussen.\nLength?',
  `PlaatsNaam` varchar(35) NOT NULL COMMENT 'Geeft de plaatsnaam.\n\nHebben we hier geen postcode-tabel?',
  `Land` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nSO Landenlijst 3166, versie 1 met aanvullend versie 3 voor vervallen gebieden. Noot: versie 1 bevat tweeletterige codes, versie 3 bevat vierletterige (!) codes.\n',
  `E-mailadres` varchar(255) DEFAULT NULL COMMENT 'Waardelijst VoortitelType\nVoortitel (b.v. ing)',
  `RSIN` decimal(9,0) NOT NULL COMMENT 'Rechtspersonen Samenwerkingsverbanden Informatie Nummer (RSIN). Vanuit de Belastingdienst is een groeipad aangegeven voor het vastleggen van de RSIN voor niet-natuurlijke personen: Uiterlijk in het jaar 2018 over het belastingjaar 2017 vermelden alle financiële instellingen het RSIN in plaats van het Fiscaal nummer of het KvK-nummer. \n',
  `VoorTitel` varchar(255) DEFAULT NULL COMMENT 'Waardelijst VoortitelType\nVoortitel (b.v. ing)',
  `RekeningNr` varchar(25) DEFAULT NULL COMMENT 'Het IBAN rekeningnummer van de partij. Alleen hoofdletters toegestaan, invoeren zonder spaties.',
  `KadastralePersoonsNr` decimal(10,0) DEFAULT NULL COMMENT 'Identificatiecode geleverd door het Automatisering Kadastrale Registratie systeem. \n',
  `KadastraleIdentificatie` decimal(15,0) DEFAULT NULL COMMENT 'De Kadaster identificatie persoon is een door het Kadaster toegekende landelijk uniek nummer aan een persoon. \n',
  `BelastingPlichtigInBuitenland` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPartijNAWData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartijNAWData`
--

LOCK TABLES `PartijNAWData` WRITE;
/*!40000 ALTER TABLE `PartijNAWData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartijNAWData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasseerGegevens`
--

DROP TABLE IF EXISTS `PasseerGegevens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasseerGegevens` (
  `idPasseerGegevens` int(11) NOT NULL,
  `ProductNaam` varchar(35) DEFAULT NULL,
  `HypotheekBedrag` decimal(14,2) NOT NULL COMMENT 'Hoogte bedrag van de totale hypotheek (som leningdelen) \n',
  `LeningDeel` int(11) DEFAULT NULL COMMENT 'Entiteit (1-9)\nEen {leningdeel} is (een gedeelte van) een [lening], dat tegen voor dat gedeelte vastgestelde [voorwaarden] zoals een [aflosvorm] en [renteafspraak] wordt verstrekt. Het kan voorkomen, dat een [leningovereenkomst] precies één {leningdeel} omvat. ',
  PRIMARY KEY (`idPasseerGegevens`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasseerGegevens`
--

LOCK TABLES `PasseerGegevens` WRITE;
/*!40000 ALTER TABLE `PasseerGegevens` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasseerGegevens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pensioen`
--

DROP TABLE IF EXISTS `Pensioen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pensioen` (
  `idPensioen` int(11) NOT NULL,
  `PensioenLeeftijd` decimal(2,0) DEFAULT NULL COMMENT 'Geeft aan de leeftijd waarop aanvrager verwacht met pensioen te gaan. Indien de exacte datum bekend is dient het veld IngangsDtPensioen gevuld te worden.',
  `PensioenInkomen` decimal(14,2) NOT NULL COMMENT 'Het (verwachte) pensioeninkomen bruto per jaar van de hypotheekgever (exclusief AOW, dat dient ingevoerd te worden onder de entiteit Uitkering).\nConditie:\nPensioenInkomen is groter dan 0.00',
  `IngangsDtPensioen` datetime NOT NULL COMMENT 'Geeft een exacte datum van ingang van het pensioen aan.',
  `EindDtPensioen` datetime DEFAULT NULL COMMENT 'Geeft de einddatum van het pensioen aan.',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\n\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten.',
  `PctInkomenMeetellen` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het percentage van het inkomen dat meegeteld moet worden ter bepaling van de leencapaciteit. Alleen opgeven als afwijkt van 100%',
  `DuurInMndMeetellen` decimal(3,0) DEFAULT NULL COMMENT 'Geeft de specifieke looptijd in maanden waar een percentage van het inkomen moet meegeteld worden ter bepaling van de leencapaciteit. Alleen opgeven indien niet gelijk is aan duur hypotheek.',
  `Inkomsten_idInkomsten` int(11) NOT NULL,
  PRIMARY KEY (`idPensioen`),
  KEY `fk_Pensioen_Inkomsten1` (`Inkomsten_idInkomsten`),
  CONSTRAINT `fk_Pensioen_Inkomsten1` FOREIGN KEY (`Inkomsten_idInkomsten`) REFERENCES `Inkomsten` (`idInkomsten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pensioen`
--

LOCK TABLES `Pensioen` WRITE;
/*!40000 ALTER TABLE `Pensioen` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pensioen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PremieAfspraken`
--

DROP TABLE IF EXISTS `PremieAfspraken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PremieAfspraken` (
  `idPremieAfspraken` int(11) NOT NULL,
  `SoortPremie` int(11) NOT NULL COMMENT 'Waardelijst PremieType\n\nConditie:\nSoortPremie heeft waarde (Risicopremie normaal, Premie totaal normaal, Storting) als CodeFinancieleDekking heeft waarde (levensverzekering, (zelfstandige) risicoverzekering, Erf/lijfrente)\n',
  `AanvangsstortingMeeFinancieren` tinyint(1) DEFAULT NULL,
  `AanvangNaIngangsDtInMnd` datetime DEFAULT NULL,
  `DuurInMnd` decimal(3,0) NOT NULL,
  `PremieBedrag` decimal(14,2) NOT NULL,
  `BetalingsTermijn` varchar(255) NOT NULL COMMENT 'Waardelijst BetalingsTermijnType\n',
  `RefDebiteurNAWData` int(11) NOT NULL COMMENT 'Referentie entiteit',
  `PremieUitDepot` decimal(14,2) DEFAULT NULL,
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  PRIMARY KEY (`idPremieAfspraken`),
  KEY `fk_PremieAfspraken_FinancieleDekking1` (`FinancieleDekking_idFinancieleDekking`),
  CONSTRAINT `fk_PremieAfspraken_FinancieleDekking1` FOREIGN KEY (`FinancieleDekking_idFinancieleDekking`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PremieAfspraken`
--

LOCK TABLES `PremieAfspraken` WRITE;
/*!40000 ALTER TABLE `PremieAfspraken` DISABLE KEYS */;
/*!40000 ALTER TABLE `PremieAfspraken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PremieDepot`
--

DROP TABLE IF EXISTS `PremieDepot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PremieDepot` (
  `idPremieDepot` int(11) NOT NULL,
  `BedragDepot` decimal(14,2) NOT NULL,
  `DuurInMnd` decimal(3,0) DEFAULT NULL,
  `RenteVergoedingInMnd` decimal(3,0) DEFAULT NULL,
  `RentePct` decimal(14,3) DEFAULT NULL,
  `SoortDepot` varchar(255) DEFAULT NULL COMMENT 'Waardelijst DepotSoortType',
  `KeuzeDepot` varchar(255) DEFAULT NULL COMMENT 'Waardelijst DepotKeuzeType',
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  PRIMARY KEY (`idPremieDepot`),
  KEY `fk_PremieDepot_FinancieleDekking1` (`FinancieleDekking_idFinancieleDekking`),
  CONSTRAINT `fk_PremieDepot_FinancieleDekking1` FOREIGN KEY (`FinancieleDekking_idFinancieleDekking`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PremieDepot`
--

LOCK TABLES `PremieDepot` WRITE;
/*!40000 ALTER TABLE `PremieDepot` DISABLE KEYS */;
/*!40000 ALTER TABLE `PremieDepot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrintDoc`
--

DROP TABLE IF EXISTS `PrintDoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrintDoc` (
  `idPrintDoc` int(11) NOT NULL,
  `BestandType` varchar(255) NOT NULL COMMENT 'Waardelijst BestandTypeType',
  `Encoding` varchar(255) NOT NULL COMMENT 'Waardelijst EncodingType',
  `EncodedData` longblob NOT NULL COMMENT 'Dit veld bevat de offerte welke gecodeerd in het bericht wordt opgenomen. \n',
  `DocSoort` varchar(255) NOT NULL COMMENT 'Waardelijst DocSoortType \n',
  `DocSoortOmschr` varchar(100) DEFAULT NULL COMMENT 'Conditie:\nDocSoortOmschr is verplicht als DocSoort heeft waarde (Overig ) \n',
  PRIMARY KEY (`idPrintDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrintDoc`
--

LOCK TABLES `PrintDoc` WRITE;
/*!40000 ALTER TABLE `PrintDoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `PrintDoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrintDoc_heeft_Logging`
--

DROP TABLE IF EXISTS `PrintDoc_heeft_Logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrintDoc_heeft_Logging` (
  `Logging_idLogging` int(11) NOT NULL,
  `PrintDoc_idPrintDoc` int(11) NOT NULL,
  KEY `fk_PrintDoc_heeft_Logging_Logging1` (`Logging_idLogging`),
  KEY `fk_PrintDoc_heeft_Logging_PrintDoc1` (`PrintDoc_idPrintDoc`),
  CONSTRAINT `fk_PrintDoc_heeft_Logging_Logging1` FOREIGN KEY (`Logging_idLogging`) REFERENCES `Logging` (`idLogging`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PrintDoc_heeft_Logging_PrintDoc1` FOREIGN KEY (`PrintDoc_idPrintDoc`) REFERENCES `PrintDoc` (`idPrintDoc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrintDoc_heeft_Logging`
--

LOCK TABLES `PrintDoc_heeft_Logging` WRITE;
/*!40000 ALTER TABLE `PrintDoc_heeft_Logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `PrintDoc_heeft_Logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProvisieKeuze`
--

DROP TABLE IF EXISTS `ProvisieKeuze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProvisieKeuze` (
  `idProvisieKeuze` int(11) NOT NULL COMMENT 'Out of Scope',
  `ProvisieKeuzeAfwijkend` tinyint(1) DEFAULT NULL,
  `PercentageAfsluit` decimal(14,3) DEFAULT NULL,
  `Lening_idLening` int(11) NOT NULL,
  PRIMARY KEY (`idProvisieKeuze`),
  KEY `fk_ProvisieKeuze_Lening1` (`Lening_idLening`),
  CONSTRAINT `fk_ProvisieKeuze_Lening1` FOREIGN KEY (`Lening_idLening`) REFERENCES `Lening` (`idLening`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProvisieKeuze`
--

LOCK TABLES `ProvisieKeuze` WRITE;
/*!40000 ALTER TABLE `ProvisieKeuze` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProvisieKeuze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AOSoortType`
--

DROP TABLE IF EXISTS `RF_AOSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AOSoortType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AOSoortType`
--

LOCK TABLES `RF_AOSoortType` WRITE;
/*!40000 ALTER TABLE `RF_AOSoortType` DISABLE KEYS */;
INSERT INTO `RF_AOSoortType` VALUES ('01','Vaste AO uitkering','Vaste AO uitkering'),('02','Tijdelijke AO uitkering','Tijdelijke AO uitkering');
/*!40000 ALTER TABLE `RF_AOSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AanleverMomentType`
--

DROP TABLE IF EXISTS `RF_AanleverMomentType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AanleverMomentType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AanleverMomentType`
--

LOCK TABLES `RF_AanleverMomentType` WRITE;
/*!40000 ALTER TABLE `RF_AanleverMomentType` DISABLE KEYS */;
INSERT INTO `RF_AanleverMomentType` VALUES ('01','Voor indicatief rentevoorstel','Het document moet ontvangen worden voordat het indicatieve rentevoorstel verzonden kan worden. '),('02','Voor bindende offerte','Het document moet ontvangen worden voordat de bindende offerte verzonden kan worden.'),('03','Na bindende offerte en voor passeren','Het document moet ontvangen worden nadat de bindende offerte is uitgebracht, maar voor de beoordeling van het dossier.'),('04','Na passeren','Het document mag aangeleverd worden na het passeren van de hypotheekakte.');
/*!40000 ALTER TABLE `RF_AanleverMomentType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AanvullendeVerzendwijzeType`
--

DROP TABLE IF EXISTS `RF_AanvullendeVerzendwijzeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AanvullendeVerzendwijzeType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AanvullendeVerzendwijzeType`
--

LOCK TABLES `RF_AanvullendeVerzendwijzeType` WRITE;
/*!40000 ALTER TABLE `RF_AanvullendeVerzendwijzeType` DISABLE KEYS */;
INSERT INTO `RF_AanvullendeVerzendwijzeType` VALUES ('01','Post','Post'),('02','Fax','Fax'),('03','Email','Email'),('04','Extranet','Extranet'),('99','Anders','Anders');
/*!40000 ALTER TABLE `RF_AanvullendeVerzendwijzeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AdressoortType`
--

DROP TABLE IF EXISTS `RF_AdressoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AdressoortType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AdressoortType`
--

LOCK TABLES `RF_AdressoortType` WRITE;
/*!40000 ALTER TABLE `RF_AdressoortType` DISABLE KEYS */;
INSERT INTO `RF_AdressoortType` VALUES ('01','Onderpand','onderpandadres'),('02','Correspondentie','correspondentieadres');
/*!40000 ALTER TABLE `RF_AdressoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AdviesTypeType`
--

DROP TABLE IF EXISTS `RF_AdviesTypeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AdviesTypeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AdviesTypeType`
--

LOCK TABLES `RF_AdviesTypeType` WRITE;
/*!40000 ALTER TABLE `RF_AdviesTypeType` DISABLE KEYS */;
INSERT INTO `RF_AdviesTypeType` VALUES ('01','Execution only',NULL),('02','Advies',NULL),('03','Bemiddeling',NULL),('04','Advies & Bemiddeling',NULL);
/*!40000 ALTER TABLE `RF_AdviesTypeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AdvieskostenVormType`
--

DROP TABLE IF EXISTS `RF_AdvieskostenVormType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AdvieskostenVormType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AdvieskostenVormType`
--

LOCK TABLES `RF_AdvieskostenVormType` WRITE;
/*!40000 ALTER TABLE `RF_AdvieskostenVormType` DISABLE KEYS */;
INSERT INTO `RF_AdvieskostenVormType` VALUES ('01','Voldoen uit eigen middelen','Voldoen uit eigen middelen'),('02','Meefinancieren in de hypotheek','Meefinancieren in de hypotheek');
/*!40000 ALTER TABLE `RF_AdvieskostenVormType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AflosPercentageType`
--

DROP TABLE IF EXISTS `RF_AflosPercentageType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AflosPercentageType` (
  `Code` int(11) NOT NULL,
  `Waarde` decimal(65,30) DEFAULT NULL,
  `Omschrijving` decimal(65,30) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AflosPercentageType`
--

LOCK TABLES `RF_AflosPercentageType` WRITE;
/*!40000 ALTER TABLE `RF_AflosPercentageType` DISABLE KEYS */;
INSERT INTO `RF_AflosPercentageType` VALUES (10,0.010000000000000000000000000000,0.010000000000000000000000000000),(15,0.015000000000000000000000000000,0.015000000000000000000000000000),(20,0.020000000000000000000000000000,0.020000000000000000000000000000);
/*!40000 ALTER TABLE `RF_AflosPercentageType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_AflossingsVormType`
--

DROP TABLE IF EXISTS `RF_AflossingsVormType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_AflossingsVormType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_AflossingsVormType`
--

LOCK TABLES `RF_AflossingsVormType` WRITE;
/*!40000 ALTER TABLE `RF_AflossingsVormType` DISABLE KEYS */;
INSERT INTO `RF_AflossingsVormType` VALUES ('01','Annuiteit','Annuiteit'),('02','Lineair','Lineair'),('03','Levensverzekering','Levensverzekering'),('05','Aflossingsvrij','Aflossingsvrij'),('09','Krediet of bankhypotheek','Krediet of bankhypotheek'),('10','Beleggingshypotheek','Beleggingshypotheek'),('13','Spaarrekening','Spaarrekening');
/*!40000 ALTER TABLE `RF_AflossingsVormType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BelastingBoxType`
--

DROP TABLE IF EXISTS `RF_BelastingBoxType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BelastingBoxType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(5) DEFAULT NULL,
  `Omschrijving` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BelastingBoxType`
--

LOCK TABLES `RF_BelastingBoxType` WRITE;
/*!40000 ALTER TABLE `RF_BelastingBoxType` DISABLE KEYS */;
INSERT INTO `RF_BelastingBoxType` VALUES ('01','Box 1','Box 1'),('02','Box 3','Box 3');
/*!40000 ALTER TABLE `RF_BelastingBoxType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BeleggingProfielMijType`
--

DROP TABLE IF EXISTS `RF_BeleggingProfielMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BeleggingProfielMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BeleggingProfielMijType`
--

LOCK TABLES `RF_BeleggingProfielMijType` WRITE;
/*!40000 ALTER TABLE `RF_BeleggingProfielMijType` DISABLE KEYS */;
INSERT INTO `RF_BeleggingProfielMijType` VALUES ('AA001','zeer defensief','zeer defensief'),('AA002','defensief','defensief'),('AA003','matig defensief','matig defensief'),('AA004','matig offensief','matig offensief'),('AA005','offensief','offensief'),('AA006','zeer offensief','zeer offensief'),('AE002','Defensief','Defensief'),('AE004','Neutraal','Neutraal'),('AE006','Offensief','Offensief'),('AE007','Zeer offensief','Zeer offensief'),('AE008','Terughoudend','Terughoudend'),('AE009','Ondernemend','Ondernemend'),('AE010','Avontuurlijk','Avontuurlijk'),('IN001','Zeer defensief','Zeer defensief'),('IN002','Defensief','Defensief'),('IN003','Neutraal','Neutraal'),('IN004','Offensief','Offensief'),('IN005','Zeer offensief','Zeer offensief'),('RG001','Geel (defensief)','Geel (defensief)'),('RG002','Oranje (neutraal)','Oranje (neutraal)'),('RG003','Rood (offensief)','Rood (offensief)'),('RG004','Paars (zeer offensief)','Paars (zeer offensief)'),('SN003','Geel (defensief)','Geel (defensief)'),('SN004','Oranje (neutraal)','Oranje (neutraal)'),('SN005','Rood (offensief)','Rood (offensief)'),('SN006','Paars (zeer offensief)','Paars (zeer offensief)');
/*!40000 ALTER TABLE `RF_BeleggingProfielMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BeleggingProfielUitkomstType`
--

DROP TABLE IF EXISTS `RF_BeleggingProfielUitkomstType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BeleggingProfielUitkomstType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BeleggingProfielUitkomstType`
--

LOCK TABLES `RF_BeleggingProfielUitkomstType` WRITE;
/*!40000 ALTER TABLE `RF_BeleggingProfielUitkomstType` DISABLE KEYS */;
INSERT INTO `RF_BeleggingProfielUitkomstType` VALUES ('01','Zeer defensief','Zeer defensief'),('02','Defensief','Defensief'),('03','Gematigd','Gematigd'),('04','Neutraal','Neutraal'),('05','Gematigd offensief','Gematigd offensief'),('06','Offensief','Offensief'),('07','Zeer offensief','Zeer offensief');
/*!40000 ALTER TABLE `RF_BeleggingProfielUitkomstType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BerekeningsUitgangspuntType`
--

DROP TABLE IF EXISTS `RF_BerekeningsUitgangspuntType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BerekeningsUitgangspuntType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BerekeningsUitgangspuntType`
--

LOCK TABLES `RF_BerekeningsUitgangspuntType` WRITE;
/*!40000 ALTER TABLE `RF_BerekeningsUitgangspuntType` DISABLE KEYS */;
INSERT INTO `RF_BerekeningsUitgangspuntType` VALUES ('01','Van premie naar kapitaal','Van premie naar kapitaal'),('02','Van kapitaal naar premie','Van kapitaal naar premie');
/*!40000 ALTER TABLE `RF_BerekeningsUitgangspuntType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BerekeningswijzeTermijnBedragType`
--

DROP TABLE IF EXISTS `RF_BerekeningswijzeTermijnBedragType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BerekeningswijzeTermijnBedragType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BerekeningswijzeTermijnBedragType`
--

LOCK TABLES `RF_BerekeningswijzeTermijnBedragType` WRITE;
/*!40000 ALTER TABLE `RF_BerekeningswijzeTermijnBedragType` DISABLE KEYS */;
INSERT INTO `RF_BerekeningswijzeTermijnBedragType` VALUES ('01','Uitgaande van kredietlimiet','Uitgaande van kredietlimiet'),('02','Uitgaande van hoogst bereikte saldo','Uitgaande van hoogst bereikte saldo'),('03','Uitgaande van uitstaand saldo','Uitgaande van uitstaand saldo'),('04','Vast incassobedrag inclusief rente','Vast incassobedrag inclusief rente'),('05','Uitgaande van uitstaand saldo + rente afgelopen maand','Uitgaande van uitstaand saldo + rente afgelopen maand'),('06','Vast incassobedrag exclusief rente','Vast incassobedrag exclusief rente'),('07','Alleen rente','Alleen rente');
/*!40000 ALTER TABLE `RF_BerekeningswijzeTermijnBedragType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BerichtSoortType`
--

DROP TABLE IF EXISTS `RF_BerichtSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BerichtSoortType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BerichtSoortType`
--

LOCK TABLES `RF_BerichtSoortType` WRITE;
/*!40000 ALTER TABLE `RF_BerichtSoortType` DISABLE KEYS */;
INSERT INTO `RF_BerichtSoortType` VALUES ('AX','OfferteAanvraag',NULL),('DA','DocumentAanvraagBericht',NULL),('DX','DocumentBericht',NULL),('EA','ExterneBronAanvraag',NULL),('EX','ExterneBronBericht',NULL),('GX','NhgMelding',NULL),('IA','InformatieAanvraagBericht',NULL),('IX ','InformatieBericht',NULL),('KX','KredietAanvraag',NULL),('LX','LevenAanvraag',NULL),('MX','BeheerVerzoek',NULL),('NX','NotarisOpdracht',NULL),('OX','Offerte',NULL),('SX','StatusMelding',NULL),('TX','TaxatieAanvraag',NULL);
/*!40000 ALTER TABLE `RF_BerichtSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BeroepType`
--

DROP TABLE IF EXISTS `RF_BeroepType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BeroepType` (
  `Code` varchar(4) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BeroepType`
--

LOCK TABLES `RF_BeroepType` WRITE;
/*!40000 ALTER TABLE `RF_BeroepType` DISABLE KEYS */;
INSERT INTO `RF_BeroepType` VALUES ('0111','Docenten hoger onderwijs en hoogleraren',NULL),('0112','Docenten beroepsgerichte vakken secundair onderwijs',NULL),('0113','Docenten algemene vakken secundair onderwijs',NULL),('0114','Leerkrachten basisonderwijs',NULL),('0115','Onderwijskundigen en overige docenten',NULL),('0121','Sportinstructeurs',NULL),('0131','Leidsters kinderopvang en onderwijsassistenten',NULL),('0211','Bibliothecaressen en conservatoren',NULL),('0212','Auteurs en taalkundigen',NULL),('0213','Journalisten',NULL),('0214','Beeldend kunstenaars',NULL),('0215','Uitvoerend kunstenaars',NULL),('0221','Grafisch vormgevers en productontwerpers',NULL),('0222','Fotografen en interieurontwerpers',NULL),('0311','Adviseurs marketing, public relations en sales',NULL),('0321','Vertegenwoordigers en inkopers',NULL),('0331','Winkeliers en teamleiders detailhandel',NULL),('0332','Verkoopmedewerkers detailhandel',NULL),('0333','Kassamedewerkers',NULL),('0334','Callcentermedewerkers outbound en overige verkopers',NULL),('0411','Accountants',NULL),('0412','Financieel specialisten en economen',NULL),('0413','Bedrijfskundigen en organisatieadviseurs',NULL),('0414','Beleidsadviseurs',NULL),('0415','Specialisten personeels- en loopbaanontwikkeling',NULL),('0421','Boekhouders',NULL),('0422','Zakelijke dienstverleners',NULL),('0423','Directiesecretaresses',NULL),('0431','Administratief medewerkers',NULL),('0432','Secretaresses',NULL),('0433','Receptionisten en telefonisten',NULL),('0434','Boekhoudkundig medewerkers',NULL),('0435','Transportplanners en logistiek medewerkers',NULL),('0511','Algemeen directeuren',NULL),('0521','Managers zakelijke en administratieve dienstverleners',NULL),('0522','Managers verkoop en marketing',NULL),('0531','Managers productie',NULL),('0532','Managers logistiek',NULL),('0533','Managers ICT',NULL),('0534','Managers zorginstellingen',NULL),('0535','Managers onderwijs',NULL),('0536','Managers gespecialiseerde dienstverlening',NULL),('0541','Managers horeca',NULL),('0542','Managers detail- en groothandel',NULL),('0543','Managers commerciële en persoonlijke dienstverlening',NULL),('0551','Managers z.n.d.',NULL),('0611','Overheidsbestuurders',NULL),('0612','Overheidsambtenaren',NULL),('0621','Juristen',NULL),('0631','Politie-inspecteurs',NULL),('0632','Politie en brandweer',NULL),('0633','Beveligingspersoneel',NULL),('0634','Militaire beroepen',NULL),('0711','Biologen en natuurwetenschappera',NULL),('0712','Ingenieurs (geen elektrotechniek)',NULL),('0713','Elektrotechnisch ingenieurs',NULL),('0714','Architecten',NULL),('0721','Technici bouwkunde en natuur',NULL),('0722','Productieleiders industrie en bouw',NULL),('0723','Procesoperators',NULL),('0731','Bouwarbeiders ruwbouw',NULL),('0732','Timmerlieden',NULL),('0733','Bouwarbeiders afbouw',NULL),('0734','Loodgieters en pijpfitters',NULL),('0735','Schilders en metaalspuiters',NULL),('0741','Metaalbewerkers en constructiewerkers',NULL),('0742','Lassers en plaatwerkers',NULL),('0743','Automonteurs',NULL),('0744','Machinemonteurs',NULL),('0751','Slagers',NULL),('0752','Bakkers',NULL),('0753','Productcontroleurs',NULL),('0754','Meubelmakers, kleermakers en stoffeerders',NULL),('0755','Medewerkers drukkerij en kunstnijverheid',NULL),('0761','Elektriciens en elektronicamonteurs',NULL),('0771','Productiemachinebedieners',NULL),('0772','Assemblagemedewerkers',NULL),('0781','Hulpkrachten bouw en industrie',NULL),('0811','Software- en applicatieontwikkelaars',NULL),('0812','Databank- en netwerkspecialisten',NULL),('0821','Gebruikersondersteuning ICT',NULL),('0822','Radio- en televisietechnici',NULL),('0911','Land- en bosbouwers',NULL),('0912','Hoveniers, tuinders en kwekers',NULL),('0913','Veetelers',NULL),('0921','Hulpkrachten landbouw',NULL),('1011','Artsen',NULL),('1012','Gespecialiseerd verpleegkundigen',NULL),('1013','Fysiotherapeuten',NULL),('1021','Maatschappelijk werkers',NULL),('1022','Psychologen en sociologen',NULL),('1031','Laboranten',NULL),('1032','Apothekersassistenten',NULL),('1033','Verpleegkundigen (mbo)',NULL),('1034','Medisch praktijkassistenten',NULL),('1035','Medisch vakspecialisten',NULL),('1041','Sociaal werkers, groeps- en woonbegeleiders',NULL),('1051','Verzorgenden',NULL),('1111','Reisbegeleiders',NULL),('1112','Koks',NULL),('1113','Kelners en barpersoneel',NULL),('1114','Kappers en schoonheidsspecialisten',NULL),('1115','Conciërges en teamleiders schoonmaak',NULL),('1116','Verleners van overige persoonlijke diensten',NULL),('1121','Schoonmakers',NULL),('1122','Keukenhulpen',NULL),('1211','Dekofficieren en piloten',NULL),('1212','Chauffeurs auto\'s, taxi\'s en bestelwagens',NULL),('1213','Buschauffeurs en trambestuurders',NULL),('1214','Vrachtwagenchauffeurs',NULL),('1215','Bedieners mobiele machines',NULL),('1221','Laders, lossers en vakkenvullers',NULL),('1222','Vuilnisophalers en dagbladenbezorgers',NULL);
/*!40000 ALTER TABLE `RF_BeroepType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BestandTypeType`
--

DROP TABLE IF EXISTS `RF_BestandTypeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BestandTypeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BestandTypeType`
--

LOCK TABLES `RF_BestandTypeType` WRITE;
/*!40000 ALTER TABLE `RF_BestandTypeType` DISABLE KEYS */;
INSERT INTO `RF_BestandTypeType` VALUES ('PDF','PDF-file','PDF-file'),('TIFF','TIFF-file','TIFF-file');
/*!40000 ALTER TABLE `RF_BestandTypeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BetalingsTermijnType`
--

DROP TABLE IF EXISTS `RF_BetalingsTermijnType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BetalingsTermijnType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BetalingsTermijnType`
--

LOCK TABLES `RF_BetalingsTermijnType` WRITE;
/*!40000 ALTER TABLE `RF_BetalingsTermijnType` DISABLE KEYS */;
INSERT INTO `RF_BetalingsTermijnType` VALUES ('01','per maand','per maand'),('02','per 2 maanden','per 2 maanden'),('03','per kwartaal','per kwartaal'),('06','per halfjaar','per halfjaar'),('12','per jaar','per jaar'),('99','eenmalig','eenmalig');
/*!40000 ALTER TABLE `RF_BetalingsTermijnType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BetrouwbaarheidsKlasseType`
--

DROP TABLE IF EXISTS `RF_BetrouwbaarheidsKlasseType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BetrouwbaarheidsKlasseType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(5) DEFAULT NULL,
  `Omschrijving` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BetrouwbaarheidsKlasseType`
--

LOCK TABLES `RF_BetrouwbaarheidsKlasseType` WRITE;
/*!40000 ALTER TABLE `RF_BetrouwbaarheidsKlasseType` DISABLE KEYS */;
INSERT INTO `RF_BetrouwbaarheidsKlasseType` VALUES ('01','A','A'),('02','B','B'),('03','C','C'),('04','D','D');
/*!40000 ALTER TABLE `RF_BetrouwbaarheidsKlasseType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BoeteBetaalwijzeType`
--

DROP TABLE IF EXISTS `RF_BoeteBetaalwijzeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BoeteBetaalwijzeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BoeteBetaalwijzeType`
--

LOCK TABLES `RF_BoeteBetaalwijzeType` WRITE;
/*!40000 ALTER TABLE `RF_BoeteBetaalwijzeType` DISABLE KEYS */;
INSERT INTO `RF_BoeteBetaalwijzeType` VALUES ('01','Rentemiddelen',NULL),('02','Boete afkoop',NULL),('03','Combinatie','Combinatie van boete afkoop en rentemiddelen');
/*!40000 ALTER TABLE `RF_BoeteBetaalwijzeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BouwAardType`
--

DROP TABLE IF EXISTS `RF_BouwAardType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BouwAardType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BouwAardType`
--

LOCK TABLES `RF_BouwAardType` WRITE;
/*!40000 ALTER TABLE `RF_BouwAardType` DISABLE KEYS */;
INSERT INTO `RF_BouwAardType` VALUES ('01','(Grotendeels) steen','(Grotendeels) steen'),('02','Deels hout, deels steen','Deels hout, deels steen'),('03','(Grotendeels) hout','(Grotendeels) hout'),('04','Beton','Beton'),('05','Staal','Staal'),('99','Overig','Overig');
/*!40000 ALTER TABLE `RF_BouwAardType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BouwDepotType`
--

DROP TABLE IF EXISTS `RF_BouwDepotType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BouwDepotType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BouwDepotType`
--

LOCK TABLES `RF_BouwDepotType` WRITE;
/*!40000 ALTER TABLE `RF_BouwDepotType` DISABLE KEYS */;
INSERT INTO `RF_BouwDepotType` VALUES ('01 ','Nieuw bouw',NULL),('02','Zelfbouw',NULL),('03','Verbouw',NULL);
/*!40000 ALTER TABLE `RF_BouwDepotType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BronWaardeBepalingType`
--

DROP TABLE IF EXISTS `RF_BronWaardeBepalingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BronWaardeBepalingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BronWaardeBepalingType`
--

LOCK TABLES `RF_BronWaardeBepalingType` WRITE;
/*!40000 ALTER TABLE `RF_BronWaardeBepalingType` DISABLE KEYS */;
INSERT INTO `RF_BronWaardeBepalingType` VALUES ('01','Taxatierapport','Taxatierapport'),('02','WOZ','WOZ'),('03','Koop overeenkomst','Koop overeenkomst'),('04','Koop-/aanneem overeenkomst','Koop-/aanneem overeenkomst'),('05','Geveltaxatie','Geveltaxatie'),('06','Stichtingskosten','Stichtingskosten'),('07','Modelmatige taxatie','Modelmatige taxatie');
/*!40000 ALTER TABLE `RF_BronWaardeBepalingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_BurgelijkeStaatType`
--

DROP TABLE IF EXISTS `RF_BurgelijkeStaatType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_BurgelijkeStaatType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_BurgelijkeStaatType`
--

LOCK TABLES `RF_BurgelijkeStaatType` WRITE;
/*!40000 ALTER TABLE `RF_BurgelijkeStaatType` DISABLE KEYS */;
INSERT INTO `RF_BurgelijkeStaatType` VALUES ('01','Gehuwd (gemeenschap van goederen)','Gehuwd (gemeenschap van goederen)'),('02','Gehuwd met huwelijkse voorwaarden','Gehuwd met huwelijkse voorwaarden'),('03','Alleenstaand','Alleenstaand'),('04','Samenwonend met samenlevingscontract','Samenwonend met samenlevingscontract'),('05','Samenwonend zonder samenlevingscontract','Samenwonend zonder samenlevingscontract'),('06','Partnerregistratie in gemeenschap van goederen','Partnerregistratie in gemeenschap van goederen'),('07','Partnerregistratie onder registratievoorwaarden','Partnerregistratie onder registratievoorwaarden'),('08','Gehuwd volgens buitenlands recht','Gehuwd volgens buitenlands recht');
/*!40000 ALTER TABLE `RF_BurgelijkeStaatType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeBancaireDekkingMijType`
--

DROP TABLE IF EXISTS `RF_CodeBancaireDekkingMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeBancaireDekkingMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeBancaireDekkingMijType`
--

LOCK TABLES `RF_CodeBancaireDekkingMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeBancaireDekkingMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeBancaireDekkingMijType` VALUES ('AZ001','Allianz Plus Hypotheekrekening','Allianz Plus Hypotheekrekening'),('AZ002','Allianz Plus Rekening','Allianz Plus Rekening'),('CB001','Centraal Beheer Thuis Hypotheek Bankspaarrekening','Centraal Beheer Thuis Hypotheek Bankspaarrekening'),('HQ001','Solide Koers Bankspaar','Solide Koers Bankspaar'),('HQ002','Solide Koers Beleggingsrekening','Solide Koers Beleggingsrekening'),('OO001','Solide Koers Beleggingsrekening','Solide Koers Beleggingsrekening');
/*!40000 ALTER TABLE `RF_CodeBancaireDekkingMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeBancaireDekkingType`
--

DROP TABLE IF EXISTS `RF_CodeBancaireDekkingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeBancaireDekkingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeBancaireDekkingType`
--

LOCK TABLES `RF_CodeBancaireDekkingType` WRITE;
/*!40000 ALTER TABLE `RF_CodeBancaireDekkingType` DISABLE KEYS */;
INSERT INTO `RF_CodeBancaireDekkingType` VALUES ('01','Spaarrekening','Spaarrekening'),('02','Beleggingsrekening (alleen fondsen)','Beleggingsrekening (alleen fondsen)'),('03','Effectenrekening (losse aandelen)','Effectenrekening (losse aandelen)');
/*!40000 ALTER TABLE `RF_CodeBancaireDekkingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeDeelMijType`
--

DROP TABLE IF EXISTS `RF_CodeDeelMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeDeelMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeDeelMijType`
--

LOCK TABLES `RF_CodeDeelMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeDeelMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeDeelMijType` VALUES ('AA001','ABN AMRO Annuïteiten hypotheek','ABN AMRO Annuïteiten hypotheek'),('AA002','ABN AMRO Levensverzekeringhypotheek','ABN AMRO Levensverzekeringhypotheek'),('AA003','ABN AMRO Aflossingsvrije hypotheek','ABN AMRO Aflossingsvrije hypotheek'),('AA004','ABN AMRO Personal Business Hypotheek','ABN AMRO Personal Business Hypotheek'),('AA005','ABN AMRO Lineaire hypotheek','ABN AMRO Lineaire hypotheek'),('AA006','ABN AMRO Meegroeihypotheek','ABN AMRO Meegroeihypotheek'),('AA007','ABN AMRO Spaargroeihypotheek','ABN AMRO Spaargroeihypotheek'),('AA008','ABN AMRO Startzekerhypotheek','ABN AMRO Startzekerhypotheek'),('AA009','ABN AMRO BankSpaarhypotheek','ABN AMRO BankSpaarhypotheek'),('AA010','ABN AMRO Kapitaalgroei hypotheek','ABN AMRO Kapitaalgroei hypotheek'),('AA011','ABN AMRO Spaarhypotheek','ABN AMRO Spaarhypotheek'),('AA013','ABN AMRO Schenkingsannuiteit','ABN AMRO Schenkingsannuiteit'),('AA014','ABN AMRO Aflossingsvrij met verpanding','ABN AMRO Aflossingsvrij met verpanding'),('AA015','ABN AMRO Opbouw Hypotheek','ABN AMRO Opbouw Hypotheek'),('AA016','ABN AMRO Restschuld hypotheek annuitair',NULL),('AA017','ABN AMRO Restschuld hypotheek lineair',NULL),('AA018','ABN AMRO Krediet hypotheek','ABN AMRO Krediet hypotheek'),('AA019','ABN AMRO Opeet hypotheek','ABN AMRO Opeet hypotheek'),('AA020','ABN AMRO Meerkeuze hypotheek','ABN AMRO Meerkeuze hypotheek'),('AA021','ABN AMRO Woon balans hypotheek','ABN AMRO Woon balans hypotheek'),('AA022','ABN AMRO Hybride hypotheek','ABN AMRO Hybride hypotheek'),('AA023','ABN AMRO SpaarInterlloyd','ABN AMRO SpaarInterlloyd'),('AB001','ABP Aflossingsvrije hypotheek','ABP Aflossingsvrije hypotheek'),('AB002','ABP Annuïteitenhypotheek','ABP Annuïteitenhypotheek'),('AB003','ABP Levenhypotheek','ABP Levenhypotheek'),('AB004','ABP Levenhypotheek met beleggingsrekening','ABP Levenhypotheek met beleggingsrekening'),('AB005','ABP Lineaire hypotheek','ABP Lineaire hypotheek'),('AB006','ABP Spaarhypotheek','ABP Spaarhypotheek'),('AE001','Aegon Aflossingsvrije hypotheek','Aegon Aflossingsvrije hypotheek'),('AE002','Aegon Annuïteitenhypotheek','Aegon Annuïteitenhypotheek'),('AE003','Aegon Levenhypotheek','Aegon Levenhypotheek'),('AE006','Aegon Spaarhypotheek','Aegon Spaarhypotheek'),('AE008','Aegon BankspaarHypotheek','Aegon BankspaarHypotheek'),('AE009','Aegon Lineaire Hypotheek','Aegon Lineaire Hypotheek'),('AQ001','Attens Hypotheken Aflossingsvrij',NULL),('AQ002','Attens Hypotheken Annuïteit',NULL),('AQ003','Attens Hypotheken Lineair',NULL),('AQ004','Attens Hypotheken Groene Annuïteit',NULL),('AR001','Argenta Annuiteit','Argenta Annuiteit'),('AR002','Argenta Leven','Argenta Leven'),('AR003','Argenta Aflossingsvrij','Argenta Aflossingsvrij'),('AR004','Argenta Belegrekening','Argenta Belegrekening'),('AR005','Argenta Spaarhypotheek','Argenta Spaarhypotheek'),('AR006','Argenta Special Line Spaarhypotheek','Argenta Special Line Spaarhypotheek'),('AR007','Argenta Spectrum Leven','Argenta Spectrum Leven'),('AR008','Argenta Spectrum Belegrekening','Argenta Spectrum Belegrekening'),('AR009','Argenta Spectrum Spaarhypotheek','Argenta Spectrum Spaarhypotheek'),('AR010','Argenta Spectrum Annuiteit Extra','Argenta Spectrum Annuiteit Extra'),('AR011','Argenta Spectrum Kosten Koper Lineair','Argenta Spectrum Kosten Koper Lineair'),('AR012','Argenta Lineair','Argenta Lineair'),('AU001','ASR Annuiteitenhypotheek','ASR Annuiteitenhypotheek'),('AU002','ASR Lineaire hypotheek','ASR Lineaire hypotheek'),('AU003','ASR Aflossingsvrije hypotheek','ASR Aflossingsvrije hypotheek'),('AU004','ASR Spaarhypotheek','ASR Spaarhypotheek'),('AU005','ASR Levenhypotheek','ASR Levenhypotheek'),('AU007','ASR Overbruggingskrediet','ASR Overbruggingskrediet'),('AU010','Restschuldfinanciering Annuitair','Restschuldfinanciering Annuitair'),('AU011','Restschuldfinanciering Lineair','Restschuldfinanciering Lineair'),('AW001','Annuïteiten Hypotheek',NULL),('AW002','Lineaire Hypotheek',NULL),('AW003','Aflossingsvrije Hypotheek',NULL),('AW004','Restschuldfinanciering Annuïteit',NULL),('AW005','Restschuldfinanciering Lineair',NULL),('AZ001','Allianz Design Spaarhypotheek','Allianz Design Spaarhypotheek'),('AZ004','Allianz Plus Hypotheek','Allianz Plus Hypotheek'),('AZ007','Aflossingsvrij','Aflossingsvrij'),('AZ008','Annuïtair','Annuïtair'),('AZ009','Lineair','Lineair'),('BB001','bijBouwe Aflossingsvrij',NULL),('BB002','bijBouwe Annuitair',NULL),('BB003','bijBouwe Lineair',NULL),('BB004','bijBouwe Online Aflossingsvrij',NULL),('BB005','bijBouwe Online Annuitair',NULL),('BB006','bijBouwe Online Lineair',NULL),('BL001','BLG Annuïteitenhypotheek','BLG Annuïteitenhypotheek'),('BL002','BLG Aflossingsvrije Hypotheek','BLG Aflossingsvrije Hypotheek'),('BL003','BLG Levenhypotheek','BLG Levenhypotheek'),('BL004','BLG Beleggingshypotheek','BLG Beleggingshypotheek'),('BL005','BLG Spaarhypotheek','BLG Spaarhypotheek'),('BL006','BLG Bankspaarhypotheek','BLG Bankspaarhypotheek'),('BL007','BLG Lineaire Hypotheek','BLG Lineaire Hypotheek'),('BL008','BLG Restschuldfinanciering','BLG Restschuldfinanciering'),('BN001','Annuiteiten Hypotheek','Annuiteiten Hypotheek'),('BN003','Aflossingsvrije Hypotheek','Aflossingsvrije Hypotheek'),('BN004','Lineaire Hypotheek','Lineaire Hypotheek'),('BN005','Belegging Hypotheek','Belegging Hypotheek'),('BN006','Hybride Spaar Hypotheek','Hybride Spaar Hypotheek'),('BN007','Hybride Hypotheek','Hybride Hypotheek'),('BN008','Universal Life Hypotheek','Universal Life Hypotheek'),('BN009','ReserVie Hypotheek','ReserVie Hypotheek'),('BN010','SpaarInvest Hypotheek','SpaarInvest Hypotheek'),('BN011','Life Invest Hypotheek','Life Invest Hypotheek'),('BN012','Spaarverzekering Hypotheek','Spaarverzekering Hypotheek'),('BN013','Bankspaar Hypotheek','Bankspaar Hypotheek'),('BN014','Hybride Bankspaar Hypotheek','Hybride Bankspaar Hypotheek'),('BO001','BOS Annuïteiten hypotheek','BOS Annuïteiten hypotheek'),('BO002','BOS Unit Linked hypotheek','BOS Unit Linked hypotheek'),('BO003','BOS Aflossingsvrije hypotheek','BOS Aflossingsvrije hypotheek'),('BO004','BOS Spaar/Leven hypotheek','BOS Spaar/Leven hypotheek'),('BO005','BOS Effectenhypotheek','BOS Effectenhypotheek'),('BO006','BOS Leven hypotheek','BOS Leven hypotheek'),('BO007','BOS Unit Linked Special hypotheek','BOS Unit Linked Special hypotheek'),('BO008','BOS Universal Life hypotheek','BOS Universal Life hypotheek'),('BO009','BOS Spaarvast hypotheek','BOS Spaarvast hypotheek'),('BO010','BOS Lineair hypotheek','BOS Lineair hypotheek'),('BO011','BOS Hybride hypotheek','BOS Hybride hypotheek'),('CB001','Centraal Beheer Thuis Hypotheek Aflossingsvrij',NULL),('CB002','Centraal Beheer Thuis Hypotheek Annuïteit',NULL),('CB003','Centraal Beheer Thuis Hypotheek Lineair',NULL),('CB004','Centraal Beheer Thuis Hypotheek Bankspaar',NULL),('DL001','Delta Lloyd Annuiteit','Delta Lloyd Annuiteit'),('DL003','Delta Lloyd Fixe / Aflossingsvrij','Delta Lloyd Fixe / Aflossingsvrij'),('DL006','Delta Lloyd Lineair','Delta Lloyd Lineair'),('DL007','Delta Lloyd Effectplus','Delta Lloyd Effectplus'),('DL011','Delta Lloyd Externe polis','Delta Lloyd Externe polis'),('DL012','Delta Lloyd CombiPlus','Delta Lloyd CombiPlus'),('DL033','Delta Lloyd ZekerPlus Rekening','Delta Lloyd ZekerPlus Rekening'),('DL034','Delta Lloyd Hypotheek SpaarVerzekering','Delta Lloyd Hypotheek SpaarVerzekering'),('DL036','Restschuld Annuïtair terugbetalen','Restschuld Annuïtair terugbetalen'),('DL037','Restschuld Lineair terugbetalen','Restschuld Lineair terugbetalen'),('FH001','Hybride','Hybride'),('FH002','Leven','Leven'),('FH003','Annuiteit','Annuiteit'),('FH004','Aflossingsvrij','Aflossingsvrij'),('FH005','Spaarverzekering','Spaarverzekering'),('FH007','Vermogens Opbouw Hypotheek','Vermogens Opbouw Hypotheek'),('FH008','Krediet','Krediet'),('FH009','Verzilverkrediet','Verzilverkrediet'),('FH010','Bankspaar','Bankspaar'),('FH011','Lineair','Lineair'),('FH012','Florius Restschuld hypotheek',NULL),('FH013','Florius Restschuld hypotheek lineair',NULL),('HQ001','Aflossingsvrije Hypotheek','Aflossingsvrije Hypotheek'),('HQ002','Annuïtaire Hypotheek','Annuïtaire Hypotheek'),('HQ003','LevenHypotheek','LevenHypotheek'),('HQ004','SpaarBeter Hypotheek','SpaarBeter Hypotheek'),('HQ005','BeleggersHypotheek','BeleggersHypotheek'),('HQ006','Lineaire Hypotheek','Lineaire Hypotheek'),('HQ008','Bankspaar Hypotheek','Bankspaar Hypotheek'),('HQ009','HQ VoordeelExtra Aflossingsvrij','HQ VoordeelExtra Aflossingsvrij'),('HQ010','HQ VoordeelExtra Annuïteit','HQ VoordeelExtra Annuïteit'),('HQ011','HQ VoordeelExtra Lineair','HQ VoordeelExtra Lineair'),('HT001','Hypotrust Aflossingsvrij','Hypotrust Aflossingsvrij'),('HT002','Hypotrust Annuïteit','Hypotrust Annuïteit'),('HT003','Hypotrust Lineair','Hypotrust Lineair'),('HT004','Hypotrust Leven','Hypotrust Leven'),('HT005','Hypotrust SpaarToekomstHypotheek','Hypotrust SpaarToekomstHypotheek'),('HT006','Hypotrust Spaar-Optie-Hypotheek','Hypotrust Spaar-Optie-Hypotheek'),('HT007','Hypotrust Beleggershypotheek','Hypotrust Beleggershypotheek'),('HT008','Zeker Weten Hypotheek Spaarhypotheek','Zeker Weten Hypotheek Spaarhypotheek'),('HT009','Hypotrust Trend Aflossingsvrij','Hypotrust Trend Aflossingsvrij'),('HT010','Hypotrust Trend Annuiteit','Hypotrust Trend Annuiteit'),('HT011','Hypotrust Trend Lineair','Hypotrust Trend Lineair'),('HT012','Hypotrust Trend Leven','Hypotrust Trend Leven'),('HT013','Hypotrust Trend Spaar','Hypotrust Trend Spaar'),('HT014','Hypotrust Spaar OK Aflossingsvrij','Hypotrust Spaar OK Aflossingsvrij'),('HT015','Hypotrust Spaar OK Leven','Hypotrust Spaar OK Leven'),('HT016','Hypotrust Spaar OK Annuïteit','Hypotrust Spaar OK Annuïteit'),('HT017','Hypotrust Spaar OK Lineair','Hypotrust Spaar OK Lineair'),('HT018','Hypotrust Spaar OK Spaar','Hypotrust Spaar OK Spaar'),('HT019','Hypotrust OK Aflossingsvrij','Hypotrust OK Aflossingsvrij'),('HT020','Hypotrust OK Leven','Hypotrust OK Leven'),('HT021','Hypotrust OK Annuïteit','Hypotrust OK Annuïteit'),('HT022','Hypotrust OK Lineair','Hypotrust OK Lineair'),('HT023','Hypotrust OK Spaar','Hypotrust OK Spaar'),('HT024','Hypotrust Goede Start Annuïteit','Hypotrust Goede Start Annuïteit'),('HT025','Hypotrust Goede Start Lineair','Hypotrust Goede Start Lineair'),('HT026','Hypotrust Woon Bewust Aflossingsvrij','Hypotrust Woon Bewust Aflossingsvrij'),('HT027','Hypotrust Woon Bewust Annuïteit','Hypotrust Woon Bewust Annuïteit'),('HT028','Hypotrust Woon Bewust Lineair','Hypotrust Woon Bewust Lineair'),('HT029','Hypotrust ELAN Aflossingsvrij',NULL),('HT030','Hypotrust ELAN Annuïteit',NULL),('HT031','Hypotrust ELAN Lineair',NULL),('HT032','Hypotrust Comfort Standaard Aflossingsvrij',NULL),('HT033','Hypotrust Comfort Standaard Annuïteiten',NULL),('HT034','Hypotrust Comfort Standaard Lineair','Hypotrust Comfort Standaard Lineair'),('HT035','Hypotrust Comfort Standaard Leven','Hypotrust Comfort Standaard Leven'),('HT036','Hypotrust Comfort Profijt Aflossingsvrij','Hypotrust Comfort Profijt Aflossingsvrij'),('HT037','Hypotrust Comfort Profijt Annuïteiten','Hypotrust Comfort Profijt Annuïteiten'),('HT038','Hypotrust Comfort Profijt Lineair','Hypotrust Comfort Profijt Lineair'),('HT039','Hypotrust Comfort Profijt Leven',NULL),('IN001','Aflossingsvrije Hypotheek','Aflossingsvrije Hypotheek'),('IN002','Annuiteitenhypotheek','Annuiteitenhypotheek'),('IN003','Lineaire Hypotheek','Lineaire Hypotheek'),('IN004','Maatwerkhypotheek','Maatwerkhypotheek'),('IN005','Fondsenmix Hypotheek','Fondsenmix Hypotheek'),('IN006','Levenhypotheek','Levenhypotheek'),('IN007','Beleggershypotheek','Beleggershypotheek'),('IN008','Krediethypotheek','Krediethypotheek'),('IN009','Meerwaardehypotheek','Meerwaardehypotheek'),('IN010','Spaarhypotheek','Spaarhypotheek'),('IN011','Optimaalhypotheek','Optimaalhypotheek'),('IN012','Fondsenmix Hypotheek (Extra lenen)','Fondsenmix Hypotheek (Extra lenen)'),('IN013','Beleggershypotheek (Extra lenen)','Beleggershypotheek (Extra lenen)'),('IN014','Bankspaarhypotheek variant 1','Bankspaarhypotheek variant 1'),('IN015','Bankspaarhypotheek variant 2','Bankspaarhypotheek variant 2'),('IN016','Bankspaarhypotheek','Bankspaarhypotheek'),('IN017','Restschuldfinanciering Annuitair','Restschuldfinanciering Annuitair'),('IN018','Restschuldfinanciering Lineair','Restschuldfinanciering Lineair'),('IQ001','IQWOON Aflossingsvrij',NULL),('IQ002','IQWOON Annuïteit',NULL),('IQ003','IQWOON Lineair',NULL),('IQ004','IQWOON Leven',NULL),('LB001','Van Lanschot Annuïteitenhypotheek','Van Lanschot Annuïteitenhypotheek'),('LB002','Van Lanschot Lineaire hypotheek','Van Lanschot Lineaire hypotheek'),('LB003','Van Lanschot Aflossingsvrije hypotheek','Van Lanschot Aflossingsvrije hypotheek'),('LB004','Van Lanschot Lineair restschuldhypotheek','Van Lanschot Lineair restschuldhypotheek'),('LB005','Van Lanschot Levenhypotheek','Van Lanschot Levenhypotheek'),('LB006','Van Lanschot BeursHypotheek','Van Lanschot BeursHypotheek'),('LB007','Van Lanschot VermogensHypotheek','Van Lanschot VermogensHypotheek'),('LB008','Van Lanschot Spaarhypotheek','Van Lanschot Spaarhypotheek'),('LB009','Van Lanschot Nationale Nederlanden','Van Lanschot Nationale Nederlanden'),('LB010','Van Lanschot Royal Bridge','Van Lanschot Royal Bridge'),('LB011','Van Lanschot Royal Future Hypotheek','Van Lanschot Royal Future Hypotheek'),('LB012','Van Lanschot Spaarhypotheek Avéro','Van Lanschot Spaarhypotheek Avéro'),('LB013','Van Lanschot VrijVermogenHypotheek','Van Lanschot VrijVermogenHypotheek'),('LB014','Van Lanschot CourantHypotheek eigen woning','Van Lanschot CourantHypotheek eigen woning'),('LB015','Van Lanschot CourantHypotheek Consumptief','Van Lanschot CourantHypotheek Consumptief'),('LB016','Van Lanschot Geldlening Onroerend Goed','Van Lanschot Geldlening Onroerend Goed'),('LL001','Lloyds Bank Annuïteiten Hypotheek','Lloyds Bank Annuïteiten Hypotheek'),('LL002','Lloyds Bank Aflossingsvrije Hypotheek','Lloyds Bank Aflossingsvrije Hypotheek'),('LL003','Lloyds Bank Overbrugginskrediet','Lloyds Bank Overbrugginskrediet'),('LL004','Lloyds Bank Lineaire Hypotheek','Lloyds Bank Lineaire Hypotheek'),('LL005','Lloyds Bank Spaarhypotheek','Lloyds Bank Spaarhypotheek'),('LL006','Lloyds Bank Levenhypotheek','Lloyds Bank Levenhypotheek'),('LL501','BOS Annuïteiten hypotheek','BOS Annuïteiten hypotheek'),('LL502','BOS Unit Linked hypotheek','BOS Unit Linked hypotheek'),('LL503','BOS Aflossingsvrije hypotheek','BOS Aflossingsvrije hypotheek'),('LL504','BOS Spaar/Leven hypotheek','BOS Spaar/Leven hypotheek'),('LL505','BOS Effectenhypotheek','BOS Effectenhypotheek'),('LL506','BOS Leven hypotheek','BOS Leven hypotheek'),('LL507','BOS Unit Linked Special hypotheek','BOS Unit Linked Special hypotheek'),('LL508','BOS Universal Life hypotheek','BOS Universal Life hypotheek'),('LL509','BOS Spaarvast hypotheek','BOS Spaarvast hypotheek'),('LL510','BOS Lineair hypotheek','BOS Lineair hypotheek'),('LL511','BOS Hybride hypotheek','BOS Hybride hypotheek'),('ME001','Merius Annuïteit','Merius Annuïteit'),('ME002','Merius Lineair','Merius Lineair'),('ME003','Merius Aflossingsvrij','Merius Aflossingsvrij'),('MT001','Aflossingsvrij','Aflossingsvrij'),('MT002','Annuiteit','Annuiteit'),('MT003','Lineair','Lineair'),('MY001','Annuiteit','Annuiteit'),('MY002','Leven','Leven'),('MY003','Spaar','Spaar'),('MY004','Aflossingsvrij','Aflossingsvrij'),('MY005','Belegging','Belegging'),('MY006','Leven 2','Leven 2'),('MY008','Bankspaar','Bankspaar'),('NI001','NIBC Direct Annuiteit','NIBC Direct Annuiteit'),('NI002','NIBC Direct Aflossingsvrij','NIBC Direct Aflossingsvrij'),('NI003','NIBC Direct Lineair','NIBC Direct Lineair'),('NI004','NIBC Direct Restschuld Lineair',NULL),('NI005','NIBC Direct Restschuld Annuïteit',NULL),('NI006','NIBC Direct Starters Annuiteit',NULL),('NI007','NIBC Direct Starters Lineair',NULL),('NI008','NIBC Direct Extra Annuïteit',NULL),('NI009','NIBC Direct Extra Aflossingsvrij',NULL),('NI010','NIBC Direct Extra Lineair',NULL),('NN001','Optimaal Spaarhypotheek','Optimaal Spaarhypotheek'),('NN002','Spaarhypotheek','Spaarhypotheek'),('NN003','Fondsenhypotheek','Fondsenhypotheek'),('NN004','Levenhypotheek','Levenhypotheek'),('NN006','Aflossingsvrije hypotheek','Aflossingsvrije hypotheek'),('NN007','Annuïtaire hypotheek','Annuïtaire hypotheek'),('NN008','Lineaire hypotheek','Lineaire hypotheek'),('NN009','Flexibel Lenen hypotheek','Flexibel Lenen hypotheek'),('NN010','Overbruggingskrediet','Overbruggingskrediet'),('NN012','BankSpaar Plus hypotheek','BankSpaar Plus hypotheek'),('OO001','SKP Aflossingsvrije hypotheek','SKP Aflossingsvrije hypotheek'),('OO002','SKP Annuïtaire hypotheek','SKP Annuïtaire hypotheek'),('OO003','SKP Levenhypotheek','SKP Levenhypotheek'),('OO004','SKP Spaarhypotheek','SKP Spaarhypotheek'),('OO005','SKP Beleggershypotheek','SKP Beleggershypotheek'),('OO006','SKP Flex Spaar Hypotheek','SKP Flex Spaar Hypotheek'),('OO007','SKP Overbruggingshypotheek','SKP Overbruggingshypotheek'),('OO008','SKP Lineaire Hypotheek','SKP Lineaire Hypotheek'),('OV001','Obvion Aflossingsvrije hypotheek','Obvion Aflossingsvrije hypotheek'),('OV002','Obvion Annuïteitenhypotheek','Obvion Annuïteitenhypotheek'),('OV003','Obvion Levenhypotheek','Obvion Levenhypotheek'),('OV004','Obvion Levenhypotheek met beleggingsrekening','Obvion Levenhypotheek met beleggingsrekening'),('OV005','Obvion Lineaire hypotheek','Obvion Lineaire hypotheek'),('OV010','Obvion Spaarhypotheek','Obvion Spaarhypotheek'),('OV013','Obvion SpaarGerusthypotheek','Obvion SpaarGerusthypotheek'),('RB001','Rabobank Annuïteitenhypotheek','Rabobank Annuïteitenhypotheek'),('RB002','Rabobank Lineaire Hypotheek','Rabobank Lineaire Hypotheek'),('RB003','Rabobank Aflossingsvrije hypotheek','Rabobank Aflossingsvrije hypotheek'),('RB004','Rabo OpbouwHypotheek Sparen','Rabo OpbouwHypotheek Sparen'),('RB005','Rabobank KeuzePlus Hypotheek','Rabobank KeuzePlus Hypotheek'),('RG001','Beleggingshypotheek',NULL),('RG002','Spaarhypotheek (REAAL)','Spaarhypotheek (REAAL)'),('RG003','Aflossingsvrije hypotheek','Aflossingsvrije hypotheek'),('RG004','Liniaire hypotheek','Liniaire hypotheek'),('RG005','Annuitaire hypotheek','Annuitaire hypotheek'),('RG006','Spaarhypotheek (AXA)','Spaarhypotheek (AXA)'),('RG007','Aflossingsvrij/Levenhypotheek','Aflossingsvrij/Levenhypotheek'),('RG008','Spaarrekeninghypotheek','Spaarrekeninghypotheek'),('RG009','Beleggingsrekening Hypotheek',NULL),('RG101','Budget Beleggingshypotheek',NULL),('RG102','Budget Spaarhypotheek (REAAL)','Budget Spaarhypotheek (REAAL)'),('RG103','Budget Aflossingsvrije hypotheek','Budget Aflossingsvrije hypotheek'),('RG104','Budget Liniaire hypotheek','Budget Liniaire hypotheek'),('RG105','Budget Annuitaire hypotheek','Budget Annuitaire hypotheek'),('RG106','Budget Spaarhypotheek (AXA)','Budget Spaarhypotheek (AXA)'),('RG107','Budget Aflossingsvrij/Levenhypotheek','Budget Aflossingsvrij/Levenhypotheek'),('RG108','Budget Spaarrekeninghypotheek','Budget Spaarrekeninghypotheek'),('RG109','Budget Beleggingsrekening Hypotheek',NULL),('RG110','Regiobank Budget Restschuldfinanciering','Regiobank Budget Restschuldfinanciering'),('SF001','Start Lineair','Start Lineair'),('SF002','Start Annuiteit','Start Annuiteit'),('SN001','SNS Rendement Hypotheek','SNS Rendement Hypotheek'),('SN003','SNS Spaar Hypotheek Plus','SNS Spaar Hypotheek Plus'),('SN005','SNS Extra Ruimte Hypotheek','SNS Extra Ruimte Hypotheek'),('SN006','SNS Aflossingsvrije Hypotheek','SNS Aflossingsvrije Hypotheek'),('SN007','SNS Lineaire Hypotheek','SNS Lineaire Hypotheek'),('SN008','SNS Annuitaire Hypotheek','SNS Annuitaire Hypotheek'),('SN011','SNS Hypotheek met Duurzame ASN Fondsen','SNS Hypotheek met Duurzame ASN Fondsen'),('SN012','SNS AflossingsVrij met Verpande Verzekering','SNS AflossingsVrij met Verpande Verzekering'),('SN013','SNS Spaarrekening Hypotheek','SNS Spaarrekening Hypotheek'),('SN014','SNS Beleggingsrekening Hypotheek','SNS Beleggingsrekening Hypotheek'),('SN101','SNS Budget Rendement Hypotheek','SNS Budget Rendement Hypotheek'),('SN103','SNS Budget Spaar Hypotheek Plus','SNS Budget Spaar Hypotheek Plus'),('SN106','SNS Budget Aflossingsvrije Hypotheek','SNS Budget Aflossingsvrije Hypotheek'),('SN107','SNS Budget Lineaire Hypotheek','SNS Budget Lineaire Hypotheek'),('SN108','SNS Budget Annuitaire Hypotheek','SNS Budget Annuitaire Hypotheek'),('SN111','SNS Budget Hyp. met Duurz. ASN Fondsen','SNS Budget Hyp. met Duurz. ASN Fondsen'),('SN112','SNS Budget Afl.Vrij met Verpande Verz.','SNS Budget Afl.Vrij met Verpande Verz.'),('SN113','SNS Budget Spaarrekening Hypotheek','SNS Budget Spaarrekening Hypotheek'),('SN114','SNS Budget Beleggingsrekening Hypotheek','SNS Budget Beleggingsrekening Hypotheek'),('SN115','SNS Budget Restschuldfinanciering','SNS Budget Restschuldfinanciering'),('SY001','Syntrus Achmea Aflossingsvrij','Syntrus Achmea Aflossingsvrij'),('SY002','Syntrus Achmea Annuïteit','Syntrus Achmea Annuïteit'),('SY003','Syntrus Achmea Leven','Syntrus Achmea Leven'),('SY004','Syntrus Achmea Lineair','Syntrus Achmea Lineair'),('SY005','Syntrus Achmea Spaar','Syntrus Achmea Spaar'),('TB001','Annuïteit','Annuïteit'),('TB002','Lineair','Lineair'),('TB003','Aflossingsvrij','Aflossingsvrij'),('TH001','Annuïteit','Annuïteit'),('TH002','Aflosvrij','Aflosvrij'),('TH003','Lineair','Lineair'),('TH004','Optimaal annuïteit H1',NULL),('TH005','Optimaal annuïteit H2',NULL),('TL001','Tellius Hypotheken Aflossingsvrij','Tellius Hypotheken Aflossingsvrij'),('TL002','Tellius Hypotheken Annuïteit','Tellius Hypotheken Annuïteit'),('TL003','Tellius Hypotheken Lineair','Tellius Hypotheken Lineair'),('VE001','Venn Annuïteiten Hypotheek','Venn Annuïteiten Hypotheek'),('VE002','Venn Lineaire Hypotheek','Venn Lineaire Hypotheek'),('VE003','Venn Aflossingsvrije Hypotheek','Venn Aflossingsvrije Hypotheek'),('WF001','Aflossingsvrije hypotheek','Aflossingsvrije hypotheek'),('WF002','Annuiteitenhypotheek','Annuiteitenhypotheek'),('WF003','Beleggen Preferent','Beleggen Preferent'),('WF005','Levenhypotheek','Levenhypotheek'),('WF006','Lineaire hypotheek','Lineaire hypotheek'),('WF008','Spaarhypotheek','Spaarhypotheek'),('WF012','Beleggingshypotheek','Beleggingshypotheek'),('WF013','Hybride Hypotheek','Hybride Hypotheek'),('WF014','Unit Linked Hypotheek','Unit Linked Hypotheek'),('WF015','Bankspaarhypotheek','Bankspaarhypotheek'),('WF016','Restschuld Annuïtair',NULL),('WF017','Restschuld Lineair',NULL),('WF018','Woongenot Aflossingsvrij','Woongenot Aflossingsvrij'),('WF019','Woongenot Annuïteit','Woongenot Annuïteit'),('WF020','Woongenot Lineair','Woongenot Lineair'),('WF021','Woongenot Leven','Woongenot Leven'),('WF022','Woongenot Bankspaar','Woongenot Bankspaar');
/*!40000 ALTER TABLE `RF_CodeDeelMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeDekkingMijType`
--

DROP TABLE IF EXISTS `RF_CodeDekkingMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeDekkingMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeDekkingMijType`
--

LOCK TABLES `RF_CodeDekkingMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeDekkingMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeDekkingMijType` VALUES ('AU002','ASR Risicoverzekering Gelijkblijvend','ASR Risicoverzekering Gelijkblijvend'),('AU003','ASR Risicoverzekering Annuitair dalend','ASR Risicoverzekering Annuitair dalend'),('AU004','ASR Risicoverzekering Lineair Dalend','ASR Risicoverzekering Lineair Dalend'),('AZ001','Allianz Design Spaarhypotheekverzekering','Allianz Design Spaarhypotheekverzekering'),('AZ004','Allianz Plus Hypotheekrekening','Allianz Plus Hypotheekrekening'),('AZ005','Allianz Plus Rekening','Allianz Plus Rekening'),('AZ010','Allianz Design Risico (uitgefaseerd, niet meer gebruiken)','Allianz Design Risico (uitgefaseerd, niet meer gebruiken)'),('AZ011','Allianz Overlijdensrisicoverzekering','Allianz Overlijdensrisicoverzekering'),('FH001','Hybride Extra','Hybride Extra'),('HQ001',' SpaarBeter Verzekering',' SpaarBeter Verzekering'),('HQ002','Solide Koers Beleggingsrekening','Solide Koers Beleggingsrekening'),('HT001','Spaar Toekomst Verzekering','Spaar Toekomst Verzekering'),('HT003','Zeker Weten Spaarverzekering','Zeker Weten Spaarverzekering'),('HT004','Hypotrust Trend Spaarverzekering','Hypotrust Trend Spaarverzekering'),('HT005','Hypotrust Spaar OK Spaarverzekering','Hypotrust Spaar OK Spaarverzekering'),('HT006','Hypotrust OK Spaarverzekering','Hypotrust OK Spaarverzekering'),('NN001','Traditionele Levensverzekering','Traditionele Levensverzekering'),('NN002','Beleggingsverzekering (unit-linked)','Beleggingsverzekering (unit-linked)'),('OO001','Solide Koers Spaarverzekering','Solide Koers Spaarverzekering'),('OO002','Solide Koers beleggersverzekering','Solide Koers beleggersverzekering'),('OO003','Solide Koers Flex Spaarverzekering','Solide Koers Flex Spaarverzekering'),('OO004','Levensverzekering','Levensverzekering');
/*!40000 ALTER TABLE `RF_CodeDekkingMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeFinancieleDekkingType`
--

DROP TABLE IF EXISTS `RF_CodeFinancieleDekkingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeFinancieleDekkingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeFinancieleDekkingType`
--

LOCK TABLES `RF_CodeFinancieleDekkingType` WRITE;
/*!40000 ALTER TABLE `RF_CodeFinancieleDekkingType` DISABLE KEYS */;
INSERT INTO `RF_CodeFinancieleDekkingType` VALUES ('01','levensverzekering','levensverzekering'),('04','(zelfstandige) risicoverzekering','(zelfstandige) risicoverzekering'),('06','Erf/lijfrente','Erf/lijfrente'),('07','Spaarverzekering','Spaarverzekering'),('08','Beleggingsverzekering','Beleggingsverzekering'),('09','Hybride verzekering','Hybride verzekering'),('10','Uitvaartverzekering','Uitvaartverzekering'),('11','Woonlastenverzekering','Woonlastenverzekering');
/*!40000 ALTER TABLE `RF_CodeFinancieleDekkingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeFondsMijType`
--

DROP TABLE IF EXISTS `RF_CodeFondsMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeFondsMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeFondsMijType`
--

LOCK TABLES `RF_CodeFondsMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeFondsMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeFondsMijType` VALUES ('AE001','Equity Fund','Equity Fund'),('AE002','Rente Fund','Rente Fund'),('AE003','Mix Fund','Mix Fund'),('AE005','Levensloop Hypotheek Rekening','Levensloop Hypotheek Rekening'),('AE006','Equity Holland Fund','Equity Holland Fund'),('AE007','Deposito Fund','Deposito Fund'),('AE012','Index Plus Fund','Index Plus Fund'),('AE017','Garantie Click 95 Fund','Garantie Click 95 Fund'),('AU001','ASR Euro Aandelenfonds','ASR Euro Aandelenfonds'),('AU002','ASR Euro Staatsobligatiefonds','ASR Euro Staatsobligatiefonds'),('AU003','ASR Euro Bedrijfsobligatiefonds','ASR Euro Bedrijfsobligatiefonds'),('AU004','ASR Geldmarktfonds','ASR Geldmarktfonds'),('AU005','ASR Aandelenfonds','ASR Aandelenfonds'),('AU006','ASR Europa Vastgoedfonds','ASR Europa Vastgoedfonds'),('AU007','ASR Liquiditeitenfonds','ASR Liquiditeitenfonds'),('AU008','ASR Obligatiefonds','ASR Obligatiefonds'),('AU009','ASR Mixfonds','ASR Mixfonds'),('AU010','ASR Nederlandfonds','ASR Nederlandfonds'),('AU011','ASR Europafonds','ASR Europafonds'),('AU012','ASR Aziefonds','ASR Aziefonds'),('AU013','ASR Amerikafonds','ASR Amerikafonds'),('AU014','ASR Solide Mixfonds','ASR Solide Mixfonds'),('AU015','ASR Hypotheekrente Rekening','ASR Hypotheekrente Rekening'),('AU016','BNP Paribas OBAM','BNP Paribas OBAM'),('AZ001','Allianz Plus Zeer Defensieve Portefeuille','Allianz Plus Zeer Defensieve Portefeuille'),('AZ002','Allianz Plus Defensieve Portefeuille','Allianz Plus Defensieve Portefeuille'),('AZ003','Allianz Plus Neutrale Portefeuille','Allianz Plus Neutrale Portefeuille'),('AZ004','Allianz Plus Offensieve Portefeuille','Allianz Plus Offensieve Portefeuille'),('AZ005','Allianz Plus Zeer Offensieve Portefeuille','Allianz Plus Zeer Offensieve Portefeuille'),('AZ007','Allianz Plus Hypotheekrentefaciliteit','Allianz Plus Hypotheekrentefaciliteit'),('AZ032','Spaarfaciliteit','Spaarfaciliteit'),('HQ001','HQ - Allianz Plus Zeer Defensieve Portefeuille','HQ - Allianz Plus Zeer Defensieve Portefeuille'),('HQ002','HQ - Allianz Plus Defensieve Portefeuille','HQ - Allianz Plus Defensieve Portefeuille'),('HQ003','HQ - Allianz Plus Neutrale Portefeuille','HQ - Allianz Plus Neutrale Portefeuille'),('HQ004','HQ - Allianz Plus Offensieve Portefeuille','HQ - Allianz Plus Offensieve Portefeuille'),('HQ005','HQ - Allianz Plus Zeer Offensieve Portefeuille','HQ - Allianz Plus Zeer Offensieve Portefeuille'),('HQ006','HQ - Allianz Plus Hypotheekrentefaciliteit','HQ - Allianz Plus Hypotheekrentefaciliteit'),('IN001','ING Dynamic Mix Fund III','ING Dynamic Mix Fund III'),('IN002','ING Dynamic Mix Fund IV','ING Dynamic Mix Fund IV'),('IN003','ING Dynamic Mix Fund V','ING Dynamic Mix Fund V'),('IN004','Pakket Vastgoed Neutraal','Pakket Vastgoed Neutraal'),('IN005','Pakket Vastgoed Offensief','Pakket Vastgoed Offensief'),('IN006','Pakket Vastgoed Zeer offensief','Pakket Vastgoed Zeer offensief'),('IN007','Pakket Duurzaam Neutraal','Pakket Duurzaam Neutraal'),('IN008','Pakket Duurzaam Offensief','Pakket Duurzaam Offensief'),('IN009','Pakket Duurzaam Zeer offensief','Pakket Duurzaam Zeer offensief'),('IN010','Pakket Dividend Neutraal','Pakket Dividend Neutraal'),('IN011','Pakket Dividend Offensief','Pakket Dividend Offensief'),('IN012','Pakket Dividend Zeer offensief','Pakket Dividend Zeer offensief'),('NN001','NN Aandelen Fonds','NN Aandelen Fonds'),('NN002','NN Continu Click Fonds','NN Continu Click Fonds'),('NN003','NN Europa Fonds','NN Europa Fonds'),('NN004','NN EuropaRente Fonds','NN EuropaRente Fonds'),('NN005','NN Geldmarkt Fonds','NN Geldmarkt Fonds'),('NN006','NN InterRente Fonds','NN InterRente Fonds'),('NN007','NN Mix Fonds','NN Mix Fonds'),('NN008','NN Nederland Fonds','NN Nederland Fonds'),('NN009','NN Protected Mix Fonds 70','NN Protected Mix Fonds 70'),('NN010','NN Rente Fonds','NN Rente Fonds'),('NN011','NN Vastgoed Fonds','NN Vastgoed Fonds'),('NN012','NN Verre Oosten Fonds','NN Verre Oosten Fonds'),('RG001','SNS Optimaal Geel','SNS Optimaal Geel'),('RG002','SNS Optimaal Oranje','SNS Optimaal Oranje'),('RG003','SNS Optimaal Rood','SNS Optimaal Rood'),('RG004','SNS Optimaal Paars','SNS Optimaal Paars'),('RG005','Optimaal Paars 1','Optimaal Paars 1'),('RG006','Optimaal Paars 2','Optimaal Paars 2'),('SN001','SNS Optimaal Geel','SNS Optimaal Geel'),('SN002','SNS Optimaal Oranje','SNS Optimaal Oranje'),('SN003','SNS Optimaal Rood','SNS Optimaal Rood'),('SN004','SNS Optimaal Paars','SNS Optimaal Paars'),('SN005','SNS Liquiditeitenfonds','SNS Liquiditeitenfonds'),('SN006','ASN Obligatiefonds','ASN Obligatiefonds'),('SN007','ASN Aandelenfonds','ASN Aandelenfonds'),('SN008','ASN Mixfonds','ASN Mixfonds'),('SN009','ASN Milieu & Waterfonds','ASN Milieu & Waterfonds'),('SN010','ASN Small & Midcapfonds','ASN Small & Midcapfonds'),('SN011','SNS Spaardeelrekening','SNS Spaardeelrekening'),('SN022','ASN Keuzemandje Paars 1','ASN Keuzemandje Paars 1'),('SN023','ASN Keuzemandje Paars 2','ASN Keuzemandje Paars 2'),('WF007','Woonfonds Spaarhypotheek Rente Fonds','Woonfonds Spaarhypotheek Rente Fonds'),('WF012','Nederlands Aandelenfonds II','Nederlands Aandelenfonds II'),('WF013','Wereld Aandelenfonds','Wereld Aandelenfonds'),('WF014','Euro Obligatiefonds','Euro Obligatiefonds'),('WF015','Garantiefonds','Garantiefonds'),('WF016','Mixfonds II','Mixfonds II'),('WF017','Mixfonds III','Mixfonds III'),('WF018','AEX Indexfonds II','AEX Indexfonds II'),('WF019','Euro Indexfonds','Euro Indexfonds'),('WF020','Euro Liquiditeitenfonds','Euro Liquiditeitenfonds');
/*!40000 ALTER TABLE `RF_CodeFondsMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeHypotheekOptiesMijType`
--

DROP TABLE IF EXISTS `RF_CodeHypotheekOptiesMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeHypotheekOptiesMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeHypotheekOptiesMijType`
--

LOCK TABLES `RF_CodeHypotheekOptiesMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeHypotheekOptiesMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeHypotheekOptiesMijType` VALUES ('AA00 ','Huisbankierkorting','Huisbankierkorting'),('FH001','Florius Favorieten Rentekorting','Florius Favorieten Rentekorting'),('FH003','Florius Actie Arrangement-1','Florius Actie Arrangement-1'),('FH004','Florius Actie Arrangement-2','Florius Actie Arrangement-2'),('IN012','ActieveBetaalKlant','ActieveBetaalKlant'),('NN001','Basisvariant','Basisvariant'),('NN004','Geen basisvariant','Geen basisvariant'),('RG002','Passeren op korte termijn','Passeren op korte termijn'),('RG004','RegioBank Privérekening','RegioBank Privérekening'),('SN012','Passeren op korte termijn','Passeren op korte termijn'),('SN016','SNS Privérekening','SNS Privérekening');
/*!40000 ALTER TABLE `RF_CodeHypotheekOptiesMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeKredietMijType`
--

DROP TABLE IF EXISTS `RF_CodeKredietMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeKredietMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeKredietMijType`
--

LOCK TABLES `RF_CodeKredietMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeKredietMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeKredietMijType` VALUES ('CE001','Flexibel Plan','Flexibel Plan'),('CE002','Persoonlijk Plan','Persoonlijk Plan'),('CE003','WOZ-krediet','WOZ-krediet'),('CE004','Flexibel Plan met ORD','Flexibel Plan met ORD'),('CE005','Persoonlijk Plan met ORD','Persoonlijk Plan met ORD'),('CE006','WOZ-krediet met ORD','WOZ-krediet met ORD'),('CE007','Rentevast Plan','Rentevast Plan'),('CE008','Restschuldkrediet','Restschuldkrediet'),('DM001','Persoonlijke Lening','Persoonlijke Lening'),('DM002','Persoonlijke Lening Huiseigenaar','Persoonlijke Lening Huiseigenaar'),('DM003','Doorlopend  Krediet','Doorlopend  Krediet'),('DM004','Doorlopend  Krediet Huiseigenaar','Doorlopend  Krediet Huiseigenaar'),('DM005','Doorlopend  Krediet Flex & Zeker','Doorlopend  Krediet Flex & Zeker'),('DM006','Doorlopend  Krediet Huiseigenaar Flex & Zeker','Doorlopend  Krediet Huiseigenaar Flex & Zeker'),('IT001','Interbank Doorlopend Krediet',NULL),('IT002','Interbank Persoonlijke Lening',NULL),('IT003','Interbank Woning Voordeel Financiering','Interbank Woning Voordeel Financiering'),('IT004','Interbank Beter Wonen Financiering','Interbank Beter Wonen Financiering'),('IT005','Interbank Restschuldfinanciering','Interbank Restschuldfinanciering');
/*!40000 ALTER TABLE `RF_CodeKredietMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeLeningDeelType`
--

DROP TABLE IF EXISTS `RF_CodeLeningDeelType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeLeningDeelType` (
  `Code` int(11) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeLeningDeelType`
--

LOCK TABLES `RF_CodeLeningDeelType` WRITE;
/*!40000 ALTER TABLE `RF_CodeLeningDeelType` DISABLE KEYS */;
INSERT INTO `RF_CodeLeningDeelType` VALUES (1,'Nieuw','Nieuw'),(2,'Meeneem (zelfde geldgever, ander object)','Meeneem (zelfde geldgever, ander object)'),(3,'Doorgeef (Zelfde geldgever, zelfde  object, andere hypotheekgever)','Doorgeef (Zelfde geldgever, zelfde  object, andere hypotheekgever)'),(4,'Omzetting (andere aflosvorm)','Omzetting (andere aflosvorm)'),(5,'Verhoging (hoger geldbedrag)','Verhoging (hoger geldbedrag)');
/*!40000 ALTER TABLE `RF_CodeLeningDeelType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeLeningMijType`
--

DROP TABLE IF EXISTS `RF_CodeLeningMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeLeningMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeLeningMijType`
--

LOCK TABLES `RF_CodeLeningMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeLeningMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeLeningMijType` VALUES ('AA001','ABN AMRO Woninghypotheek','ABN AMRO Woninghypotheek'),('AA009','ABN AMRO Extra Hypotheek','ABN AMRO Extra Hypotheek'),('AA010','ABN AMRO Budget Hypotheek','ABN AMRO Budget Hypotheek'),('AA011','ABN AMRO Extra Budget Hypotheek','ABN AMRO Extra Budget Hypotheek'),('AA012','ABN AMRO Basis Hypotheek – 2','ABN AMRO Basis Hypotheek – 2'),('AA013','ABN AMRO Basis Hypotheek – 4','ABN AMRO Basis Hypotheek – 4'),('AA014','Woning Hypotheek (0% afsluitkosten)','Woning Hypotheek (0% afsluitkosten)'),('AA015','Budget Hypotheek (0% afsluitkosten)','Budget Hypotheek (0% afsluitkosten)'),('AA016','ABN AMRO Private Banking Woning Hypotheek','ABN AMRO Private Banking Woning Hypotheek'),('AA017','ABN AMRO Private Banking Extra Hypotheek','ABN AMRO Private Banking Extra Hypotheek'),('AA018','ABN AMRO Private Banking Budget Hypotheek','ABN AMRO Private Banking Budget Hypotheek'),('AA019','ABN AMRO Private Banking Extra Budget Hypotheek','ABN AMRO Private Banking Extra Budget Hypotheek'),('AB001','ABP Hypotheek','ABP Hypotheek'),('AE001','Aegon Aflossingsvrije hypotheek','Aegon Aflossingsvrije hypotheek'),('AE002','Aegon Annuïteitenhypotheek','Aegon Annuïteitenhypotheek'),('AE003','Aegon Levenhypotheek','Aegon Levenhypotheek'),('AE006','Aegon Spaarhypotheek','Aegon Spaarhypotheek'),('AE007','Aegon Combinatiehypotheek','Aegon Combinatiehypotheek'),('AE009','Aegon BankspaarHypotheek','Aegon BankspaarHypotheek'),('AE010','Aegon Lineaire Hypotheek','Aegon Lineaire Hypotheek'),('AQ001','Attens Hypotheek',NULL),('AR001','Argenta Hypotheek','Argenta Hypotheek'),('AR002','Argenta Light Hypotheek','Argenta Light Hypotheek'),('AR003','Argenta Special Line Hypotheek','Argenta Special Line Hypotheek'),('AR004','Argenta Spectrum Hypotheek','Argenta Spectrum Hypotheek'),('AR005','Argenta Spectrum Annuiteit Extra Hypotheek','Argenta Spectrum Annuiteit Extra Hypotheek'),('AU001','ASR WelThuis Hypotheek','ASR WelThuis Hypotheek'),('AW001','Abel hypotheken',NULL),('AZ001','Allianz & BNP Paribas Hypotheek','Allianz & BNP Paribas Hypotheek'),('AZ002','Allianz Hypotheek','Allianz Hypotheek'),('BB001','bijBouwe Hypotheek',NULL),('BB002','bijBouwe Online Hypotheek',NULL),('BL001','BLG Hypotheek','BLG Hypotheek'),('BL003','BLG Recreatiehypotheek','BLG Recreatiehypotheek'),('BN001','UCB Hypotheek','UCB Hypotheek'),('BN002','UCB Excellence Hypotheek','UCB Excellence Hypotheek'),('BN003','Beta Plus Hypotheek','Beta Plus Hypotheek'),('BN004','UCB Excellence Voordeel Hypotheek','UCB Excellence Voordeel Hypotheek'),('BN005','UCB PLUS+UNIEK Hypotheek','UCB PLUS+UNIEK Hypotheek'),('BN006','Liberté Hypotheek','Liberté Hypotheek'),('BN007','Liberté Voordeel Hypotheek','Liberté Voordeel Hypotheek'),('BN008','Confidence Hypotheek','Confidence Hypotheek'),('BN009','Confidence Voordeel Hypotheek','Confidence Voordeel Hypotheek'),('BN011','PLUS+UNIEK Voordeel Hypotheek','PLUS+UNIEK Voordeel Hypotheek'),('BN012','Excellence Hypotheek','Excellence Hypotheek'),('BN014','WoonGerust hypotheek','WoonGerust hypotheek'),('BN015','WoonGerust+ hypotheek','WoonGerust+ hypotheek'),('BN016','Hypotheekshop Netto Plus (BNPParibasPF)','Hypotheekshop Netto Plus (BNPParibasPF)'),('BO001','Bank of Scotland Hypotheek','Bank of Scotland Hypotheek'),('BO002','Bank of Scotland Economy Hypotheek','Bank of Scotland Economy Hypotheek'),('BO003','Bank of Scotland Easy Hypotheek','Bank of Scotland Easy Hypotheek'),('BO004','Bank of Scotland Budget Hypotheek','Bank of Scotland Budget Hypotheek'),('CB001','Centraal Beheer Thuis Hypotheek','Centraal Beheer Thuis Hypotheek'),('DL001','Delta Lloyd Hypotheek','Delta Lloyd Hypotheek'),('DL005','Delta Lloyd Hypotheek Personeel','Delta Lloyd Hypotheek Personeel'),('DL011','Solide Koers Hypotheek','Solide Koers Hypotheek'),('DL015','DrieSterrenHypotheek','DrieSterrenHypotheek'),('DL016','Varianova Hypotheek','Varianova Hypotheek'),('DL017','Delta Lloyd Budget Hypotheek','Delta Lloyd Budget Hypotheek'),('DL018','Solide Koers Budget Hypotheek','Solide Koers Budget Hypotheek'),('DL019','Delta Lloyd Nieuwbouw Hypotheek','Delta Lloyd Nieuwbouw Hypotheek'),('DL020','Hypotheekshop Netto Plus','Hypotheekshop Netto Plus'),('DL021','DrieSterrenHypotheek Personeel','DrieSterrenHypotheek Personeel'),('DL022','Delta Lloyd Plus Hypotheek',NULL),('FH004','Florius Verzilver Hypotheek','Florius Verzilver Hypotheek'),('FH007','Florius Profijt Drie+Drie (0% afsluitkosten)','Florius Profijt Drie+Drie (0% afsluitkosten)'),('FH009','Florius Profijt Twaalf (0% afsluitkosten)','Florius Profijt Twaalf (0% afsluitkosten)'),('HQ001','HQ','HQ'),('HQ002','HQ Profijt','HQ Profijt'),('HQ003','HQ VoordeelExtra','HQ VoordeelExtra'),('HT001','Hypotrust','Hypotrust'),('HT002','Hypotrust Profijt','Hypotrust Profijt'),('HT007','Zeker Weten Hypotheek','Zeker Weten Hypotheek'),('HT008','Zeker Weten Hypotheek Profijt','Zeker Weten Hypotheek Profijt'),('HT009','Zeker Weten Startershypotheek','Zeker Weten Startershypotheek'),('HT010','Zeker Weten Startershypotheek Profijt','Zeker Weten Startershypotheek Profijt'),('HT011','Zeker Weten Budgethypotheek','Zeker Weten Budgethypotheek'),('HT012','Zeker Weten BudgetStartershypotheek','Zeker Weten BudgetStartershypotheek'),('HT013','Hypotrust Budget','Hypotrust Budget'),('HT014','Hypotrust Trend','Hypotrust Trend'),('HT015','Hypotrust Spaar OK Hypotheek','Hypotrust Spaar OK Hypotheek'),('HT016','Hypotrust OK Hypotheek','Hypotrust OK Hypotheek'),('HT017','Hypotrust Goede Start Hypotheek','Hypotrust Goede Start Hypotheek'),('HT018','Hypotrust Woon Bewust Hypotheek','Hypotrust Woon Bewust Hypotheek'),('HT019','Hypotrust ELAN Hypotheek',NULL),('HT020','Hypotrust Comfort Standaard',NULL),('HT021','Hypotrust Comfort Profijt',NULL),('IN001','Reguliere hypotheek','Reguliere hypotheek'),('IN003','Watervilla hypotheek','Watervilla hypotheek'),('IQ001','IQWOON Hypotheek',NULL),('LB001','Van Lanschot Hypotheek','Van Lanschot Hypotheek'),('LL001','Lloyds Bank Hypotheek','Lloyds Bank Hypotheek'),('LL501','Bank of Scotland Hypotheek','Bank of Scotland Hypotheek'),('LL502','Bank of Scotland Economy Hypotheek','Bank of Scotland Economy Hypotheek'),('LL503','Bank of Scotland Easy Hypotheek','Bank of Scotland Easy Hypotheek'),('LL504','Bank of Scotland Budget Hypotheek','Bank of Scotland Budget Hypotheek'),('ME001','Merius Hypotheek','Merius Hypotheek'),('MT001','Munt Hypotheek','Munt Hypotheek'),('MY001','MoneYou','MoneYou'),('MY002','MoneYou T','MoneYou T'),('MY003','MoneYou AAB','MoneYou AAB'),('MY004','MoneYou Hypohuis','MoneYou Hypohuis'),('MY005','MoneYou collectief','MoneYou collectief'),('MY007','Wereld internethypotheek','Wereld internethypotheek'),('MY008','MoneYou Easy - 2 MYintern (0% afsluitprovisie)','MoneYou Easy - 2 MYintern (0% afsluitprovisie)'),('MY009','MoneYou Easy - 4 MYintern (0% afsluitprovisie)','MoneYou Easy - 4 MYintern (0% afsluitprovisie)'),('MY010','MoneYou Easy - 2 (0% afsluitprovisie)','MoneYou Easy - 2 (0% afsluitprovisie)'),('MY011','MoneYou Easy - 4 (0% afsluitprovisie)','MoneYou Easy - 4 (0% afsluitprovisie)'),('MY012','MoneYou Easy - 2','MoneYou Easy - 2'),('MY013','MoneYou Easy - 4','MoneYou Easy - 4'),('MY014','MoneYou Easy Collectief - 2','MoneYou Easy Collectief - 2'),('MY015','MoneYou Easy Collectief - 4','MoneYou Easy Collectief - 4'),('MY016','MY InternetPlus Hypotheek - 2','MY InternetPlus Hypotheek - 2'),('MY017','MY InternetPlus Hypotheek - 4','MY InternetPlus Hypotheek - 4'),('MY018','MoneYou Internet Hypotheek - 2','MoneYou Internet Hypotheek - 2'),('MY019','MoneYou Internet Hypotheek - 4','MoneYou Internet Hypotheek - 4'),('MY020','MoneYou Plus Hypotheek - 2','MoneYou Plus Hypotheek - 2'),('MY021','MoneYou Plus Hypotheek - 4','MoneYou Plus Hypotheek - 4'),('NI001','NIBC Direct Hypotheek','NIBC Direct Hypotheek'),('NI002','NIBC Direct Starters Hypotheek',NULL),('NI003','NIBC Direct Extra',NULL),('NI004','NIBC Direct Investeringshypotheek',NULL),('NN004','Reguliere Hypotheek','Reguliere Hypotheek'),('NN005','Startershypotheek','Startershypotheek'),('OO001','SKP','SKP'),('OO003','SKP Profijt','SKP Profijt'),('OV001','Obvion Hypotheek','Obvion Hypotheek'),('OV003','Obvion Basis Hypotheek','Obvion Basis Hypotheek'),('OV004','StartGerusthypotheek met Starters Renteregeling','StartGerusthypotheek met Starters Renteregeling'),('OV005','Obvion Compact Hypotheek','Obvion Compact Hypotheek'),('OV006','StartGerusthypotheek Light met Starters Renteregeling','StartGerusthypotheek Light met Starters Renteregeling'),('RA010','Leef je leven hypotheek','Leef je leven hypotheek'),('RB001','Rabobank Hypotheek','Rabobank Hypotheek'),('RG001','Budgethypotheek','Budgethypotheek'),('SF001','Start Hypotheek','Start Hypotheek'),('SN006','SNS Hypotheek','SNS Hypotheek'),('SN007','SNS Budget Hypotheek','SNS Budget Hypotheek'),('SY001','Syntrus Achmea Comforthypotheek','Syntrus Achmea Comforthypotheek'),('SY002','Syntrus Achmea Basishypotheek','Syntrus Achmea Basishypotheek'),('TB001','Triodos Hypotheek','Triodos Hypotheek'),('TH001','Tulp Annuïteit Hypotheek','Tulp Annuïteiten Hypotheek'),('TH002','Tulp Optimaal Hypotheek',NULL),('TL001','Tellius Toekomstvast Hypotheek','Tellius Toekomstvast Hypotheek'),('VE001','Venn Hypotheek','Venn Hypotheek'),('WF001','Woonfonds Hypotheek','Woonfonds Hypotheek'),('WF008','Woonfonds Voordeellijn','Woonfonds Voordeellijn'),('WF011','Woonfonds Starters Renteregeling','Woonfonds Starters Renteregeling'),('WF012','Woonfonds Woongenot Hypotheek','Woonfonds Woongenot Hypotheek');
/*!40000 ALTER TABLE `RF_CodeLeningMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeLopendeDekkingType`
--

DROP TABLE IF EXISTS `RF_CodeLopendeDekkingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeLopendeDekkingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(5) DEFAULT NULL,
  `Omschrijving` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeLopendeDekkingType`
--

LOCK TABLES `RF_CodeLopendeDekkingType` WRITE;
/*!40000 ALTER TABLE `RF_CodeLopendeDekkingType` DISABLE KEYS */;
INSERT INTO `RF_CodeLopendeDekkingType` VALUES ('01','KEW','KEW'),('02','SEW','SEW'),('03','BEW','BEW');
/*!40000 ALTER TABLE `RF_CodeLopendeDekkingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeMutatieType`
--

DROP TABLE IF EXISTS `RF_CodeMutatieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeMutatieType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeMutatieType`
--

LOCK TABLES `RF_CodeMutatieType` WRITE;
/*!40000 ALTER TABLE `RF_CodeMutatieType` DISABLE KEYS */;
INSERT INTO `RF_CodeMutatieType` VALUES ('01','Toevoegen Korting','Toevoegen Korting'),('02','Tussentijdse aanpassing topopslag','Tussentijdse aanpassing topopslag'),('03','Volmachtomzetting wijzigen RVP','Volmachtomzetting wijzigen RVP'),('04','Wijzigen RVP','Wijzigen RVP'),('05','Volmacht verwerken rentelimiet','Volmacht verwerken rentelimiet'),('06','Omzetting looptijd','Omzetting looptijd'),('07','Incassowijziging hypotheek','Incassowijziging hypotheek'),('08','Opdracht omzetten var rente','Opdracht omzetten var rente'),('09','Verzoek voor Opgave','Verzoek voor Opgave'),('10','Wijzigen NAW Gegevens','Wijzigen NAW Gegevens'),('11','Ontslag hoofdelijke schuldenaarschap','Ontslag hoofdelijke schuldenaarschap'),('12','Toevoegen hoofdelijk schuldenaar','Toevoegen hoofdelijk schuldenaar'),('13','Overlijden','Overlijden'),('14','Polismutaties','Polismutaties'),('15','(Gedeeltelijke) Aflossing','(Gedeeltelijke) Aflossing'),('16','Splitsing Leningdelen','Splitsing Leningdelen'),('17','Samenvoeging Leningdelen','Samenvoeging Leningdelen'),('18','Bestaande Lening onder NHG','Bestaande Lening onder NHG'),('19','Bouwdepot declaratie','Bouwdepot declaratie'),('20','Wijzigen Aflosvorm','Wijzigen Aflosvorm'),('21','Wijzigen hoofdelijk aansprakelijkheid','Wijzigen hoofdelijk aansprakelijkheid'),('22','Verhoging','Verhoging');
/*!40000 ALTER TABLE `RF_CodeMutatieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeObjectType`
--

DROP TABLE IF EXISTS `RF_CodeObjectType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeObjectType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeObjectType`
--

LOCK TABLES `RF_CodeObjectType` WRITE;
/*!40000 ALTER TABLE `RF_CodeObjectType` DISABLE KEYS */;
INSERT INTO `RF_CodeObjectType` VALUES ('01','eengezinswoning','eengezinswoning'),('02','eengezinswoning met garage','eengezinswoning met garage'),('03','flat/appartement','flat/appartement'),('04','flat/appartement met garage','flat/appartement met garage'),('05','winkel-woonhuis','winkel-woonhuis'),('06','woonhuis met bedrijfsruimte','woonhuis met bedrijfsruimte'),('07','winkel','winkel'),('08','bedrijfspand','bedrijfspand'),('09','recreatiewoning','recreatiewoning'),('10','boerderij','boerderij'),('11','zakelijk onderpand','zakelijk onderpand'),('12','agrarische grond/bouwgrond','agrarische grond/bouwgrond'),('13','garage','garage'),('14','bouwkavel','bouwkavel'),('15','Woonschip','Woonschip'),('16','Pleziervaartuig','Pleziervaartuig');
/*!40000 ALTER TABLE `RF_CodeObjectType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeRenteMijType`
--

DROP TABLE IF EXISTS `RF_CodeRenteMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeRenteMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeRenteMijType`
--

LOCK TABLES `RF_CodeRenteMijType` WRITE;
/*!40000 ALTER TABLE `RF_CodeRenteMijType` DISABLE KEYS */;
INSERT INTO `RF_CodeRenteMijType` VALUES ('AE001','Vaste rente dagrente','Vaste rente dagrente'),('AE002','Vaste rente offerterente','Vaste rente offerterente'),('AE003','Variabele rente','Variabele rente'),('AR001','Variabele Rente','Variabele Rente'),('AR002','Vaste Rente','Vaste Rente'),('AZ001','Standaard voorwaarde','Standaard voorwaarde'),('AZ002','Rentebedenktijd','Rentebedenktijd'),('AZ003','Variabele rente','Variabele rente'),('BB001','bijBouwe Vaste Rente',NULL),('BB002','bijBouwe Variabele Rente',NULL),('BB003','bijBouwe Online Vaste Rente',NULL),('BB004','bijBouwe Online Variabele Rente',NULL),('BL001','BLG Rentevast','BLG Rentevast'),('BL003','BLG Variabele rente','BLG Variabele rente'),('BL005','BLG Plafondrente','BLG Plafondrente'),('BL007','BLG Middelrente','BLG Middelrente'),('CB001','Centraal Beheer Thuis Hypotheek Vaste Rente',NULL),('CB002','Centraal Beheer Thuis Hypotheek Variabele Rente',NULL),('HQ001','Standaard voorwaarde','Standaard voorwaarde'),('HQ003','Variabele rente','Variabele rente'),('HT003','VR Variabele Rente','VR Variabele Rente'),('HT006','BP Budgetproduct','BP Budgetproduct'),('HT007','SP Standaard Product','SP Standaard Product'),('HT009','Hypotrust Trend','Hypotrust Trend'),('HT010','Hypotrust Spaar OK Vaste Rente','Hypotrust Spaar OK Vaste Rente'),('HT011','Hypotrust Spaar OK Variabele Rente','Hypotrust Spaar OK Variabele Rente'),('HT012','Hypotrust OK Vaste Rente','Hypotrust OK Vaste Rente'),('HT013','Hypotrust OK Variabele Rente','Hypotrust OK Variabele Rente'),('HT014','Hypotrust Goede Start Vaste Rente','Hypotrust Goede Start Vaste Rente'),('HT015','Hypotrust Woon Bewust Vaste Rente','Hypotrust Woon Bewust Vaste Rente'),('HT016','Hypotrust Profijt Vaste Rente','Profijt Vaste Rente'),('HT017','Hypotrust Profijt Variabele Rente','Profijt Variabele Rente'),('HT018','Hypotrust ELAN Vaste Rente',NULL),('HT019','Hypotrust ELAN Variabele Rente',NULL),('HT020','Hypotrust Comfort Standaard Vast',NULL),('HT021','Hypotrust Comfort Standaard Variabel',NULL),('HT022','Hypotrust Comfort Profijt Vast',NULL),('IN001','Middelrente','Middelrente'),('IN002','Restant Rentevaste Periode','Restant Rentevaste Periode'),('IN003','Actuele Rente','Actuele Rente'),('IQ001','IQWOON Vaste Rente',NULL),('IQ002','IQWOON Variabele Rente',NULL),('NI001','NIBC Direct Vaste Rente',NULL),('NI002','NIBC Direct Variabele Rente',NULL),('NI003','NIBC Direct Starters Vaste Rente',NULL),('NI004','NIBC Direct Starters Variabele Rente',NULL),('NI005','NIBC Direct Extra Vaste Rente',NULL),('OO001','VR Variabele Rente','VR Variabele Rente'),('OO002','RA Rentebedenktijd achteraf','RA Rentebedenktijd achteraf'),('OO005','Vaste Rente','Vaste Rente'),('OV001','Flexibele rente','Flexibele rente'),('OV002','Variabele rente','Variabele rente'),('RG001','Rentevast','Rentevast'),('RG002','Rentedemper','Rentedemper'),('RG003','Variabele rente','Variabele rente'),('RG004','Plafondrente','Plafondrente'),('SN001','SNS Rentevast','SNS Rentevast'),('SN002','SNS Rentedemper','SNS Rentedemper'),('SN003','SNS Variabele Rente','SNS Variabele Rente'),('SN005','SNS Plafondrente','SNS Plafondrente'),('WF001','Vaste rente','Vaste rente'),('WF002','Voordeel WF','Voordeel WF'),('WF003','Kwaartaal-variabel','Kwaartaal-variabel'),('WF004','Woongenot Vaste Rente','Woongenot Vaste Rente'),('WF005','Woongenot Variabele Rente','Woongenot Variabele Rente');
/*!40000 ALTER TABLE `RF_CodeRenteMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_CodeUitkeringType`
--

DROP TABLE IF EXISTS `RF_CodeUitkeringType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_CodeUitkeringType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_CodeUitkeringType`
--

LOCK TABLES `RF_CodeUitkeringType` WRITE;
/*!40000 ALTER TABLE `RF_CodeUitkeringType` DISABLE KEYS */;
INSERT INTO `RF_CodeUitkeringType` VALUES ('01','Lineair dalend','Lineair dalend'),('02','annuitair dalend','annuitair dalend'),('03','gelijkblijvend','gelijkblijvend'),('04','1-jarig (jaarlijks vast te stellen)','1-jarig (jaarlijks vast te stellen)');
/*!40000 ALTER TABLE `RF_CodeUitkeringType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_DekkingsCodeType`
--

DROP TABLE IF EXISTS `RF_DekkingsCodeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_DekkingsCodeType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_DekkingsCodeType`
--

LOCK TABLES `RF_DekkingsCodeType` WRITE;
/*!40000 ALTER TABLE `RF_DekkingsCodeType` DISABLE KEYS */;
INSERT INTO `RF_DekkingsCodeType` VALUES ('01','Geen overlijdensdekking','Geen overlijdensdekking'),('05','110 % van de aanwezige fondswaarde','110 % van de aanwezige fondswaarde'),('07','Gelijkblijvend risicokapitaal','Gelijkblijvend risicokapitaal'),('08','Gelijkblijvend of 90 % fondswaarde','Gelijkblijvend of 90 % fondswaarde'),('10','Lineair dalend risicokapitaal','Lineair dalend risicokapitaal');
/*!40000 ALTER TABLE `RF_DekkingsCodeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_DepotKeuzeType`
--

DROP TABLE IF EXISTS `RF_DepotKeuzeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_DepotKeuzeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_DepotKeuzeType`
--

LOCK TABLES `RF_DepotKeuzeType` WRITE;
/*!40000 ALTER TABLE `RF_DepotKeuzeType` DISABLE KEYS */;
INSERT INTO `RF_DepotKeuzeType` VALUES ('01','Leeg',NULL),('02','Inkomensdepot',NULL),('03','Aflossingsdepot',NULL),('04','Rentedepot',NULL),('05','Premiedepot',NULL);
/*!40000 ALTER TABLE `RF_DepotKeuzeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_DepotSoortType`
--

DROP TABLE IF EXISTS `RF_DepotSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_DepotSoortType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_DepotSoortType`
--

LOCK TABLES `RF_DepotSoortType` WRITE;
/*!40000 ALTER TABLE `RF_DepotSoortType` DISABLE KEYS */;
INSERT INTO `RF_DepotSoortType` VALUES ('01','Alle vervolgpremies financieren','Alle vervolgpremies financieren'),('02','Alle vervolgpremies excl. Hoge premies','Alle vervolgpremies excl. Hoge premies'),('03','Alleen hoge premies financieren','Alleen hoge premies financieren'),('04','Depotbedrag, volledige gewone premie beperkte duur','Depotbedrag, volledige gewone premie beperkte duur');
/*!40000 ALTER TABLE `RF_DepotSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_DocSoortType`
--

DROP TABLE IF EXISTS `RF_DocSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_DocSoortType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_DocSoortType`
--

LOCK TABLES `RF_DocSoortType` WRITE;
/*!40000 ALTER TABLE `RF_DocSoortType` DISABLE KEYS */;
INSERT INTO `RF_DocSoortType` VALUES ('0','Offerte','Offerte'),('03','Fiscaal regime niet van toepassing',NULL),('1','Promotiemateriaal','Promotiemateriaal'),('10','Illustratieve aflossingstabel','Illustratieve aflossingstabel'),('11','ESIC formulier','ESIC formulier'),('12','Uitbetalingspecificatie','Uitbetalingspecificatie'),('13','Kostenoverzicht','Kostenoverzicht'),('14','Opgave notaris','Opgave notaris'),('15','SEPA incassomachtiging','SEPA incassomachtiging'),('16','Blanco verbouwingsspecificatie','Blanco verbouwingsspecificatie'),('17','Polis','Polis'),('18','Indicatief voorstel','Indicatief voorstel, voorloper van een offerte'),('19','ESIS','European Standard Information Sheet'),('2','Algemene voorwaarden','Algemene voorwaarden'),('3','Product informatie','Product informatie'),('4','Acceptatie voorwaarden','Acceptatie voorwaarden'),('5','Blanco gezondheidsverklaring','Blanco gezondheidsverklaring'),('6','Tarieveninformatie (ongestructureerd)','Tarieveninformatie (ongestructureerd)'),('7','Aanvraag bankgarantie','Aanvraag bankgarantie'),('8','Aanvraagformulier','Aanvraagformulier'),('9','Akte van Verpanding','Akte van Verpanding'),('99','Overig','Overig');
/*!40000 ALTER TABLE `RF_DocSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_DocumentStatusType`
--

DROP TABLE IF EXISTS `RF_DocumentStatusType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_DocumentStatusType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_DocumentStatusType`
--

LOCK TABLES `RF_DocumentStatusType` WRITE;
/*!40000 ALTER TABLE `RF_DocumentStatusType` DISABLE KEYS */;
INSERT INTO `RF_DocumentStatusType` VALUES ('01 ','Aan te leveren','Aan te leveren'),('02','In behandeling','In behandeling'),('03 ','Ontvangen','Ontvangen'),('04','Akkoord','Akkoord'),('06','Voorlopig akkoord','Voorlopig akkoord'),('07','Afgekeurd en opnieuw aan te leveren (zie toelichting)','Afgekeurd en opnieuw aan te leveren (zie toelichting)'),('08','Vervallen (zie toelichting)','Vervallen (zie toelichting)');
/*!40000 ALTER TABLE `RF_DocumentStatusType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_EncodingType`
--

DROP TABLE IF EXISTS `RF_EncodingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_EncodingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_EncodingType`
--

LOCK TABLES `RF_EncodingType` WRITE;
/*!40000 ALTER TABLE `RF_EncodingType` DISABLE KEYS */;
INSERT INTO `RF_EncodingType` VALUES ('B64','Base64-codering','Base64-codering');
/*!40000 ALTER TABLE `RF_EncodingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_EnergieKlasseType`
--

DROP TABLE IF EXISTS `RF_EnergieKlasseType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_EnergieKlasseType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_EnergieKlasseType`
--

LOCK TABLES `RF_EnergieKlasseType` WRITE;
/*!40000 ALTER TABLE `RF_EnergieKlasseType` DISABLE KEYS */;
INSERT INTO `RF_EnergieKlasseType` VALUES ('01','A++','A++'),('02','A+','A+'),('03','A','A'),('04','B','B'),('05','C','C'),('06','D','D'),('07','E','E'),('08','F','F'),('09','G','G'),('10','A+++','A+++'),('11','A++++','A++++'),('12','Energie Neutraal','Energie Neutraal'),('13','Nul-op-de-Meter','Nul-op-de-Meter');
/*!40000 ALTER TABLE `RF_EnergieKlasseType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_ExterneBronType`
--

DROP TABLE IF EXISTS `RF_ExterneBronType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_ExterneBronType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_ExterneBronType`
--

LOCK TABLES `RF_ExterneBronType` WRITE;
/*!40000 ALTER TABLE `RF_ExterneBronType` DISABLE KEYS */;
INSERT INTO `RF_ExterneBronType` VALUES ('01','Kadaster','Kadaster'),('02','BKR','BKR'),('03','CalCasa','CalCasa'),('04','NBWO','NBWO'),('05','KvK','KvK'),('06','Taxcon','Taxcon');
/*!40000 ALTER TABLE `RF_ExterneBronType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_FiscaleRegimeType`
--

DROP TABLE IF EXISTS `RF_FiscaleRegimeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_FiscaleRegimeType` (
  `Code` int(11) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_FiscaleRegimeType`
--

LOCK TABLES `RF_FiscaleRegimeType` WRITE;
/*!40000 ALTER TABLE `RF_FiscaleRegimeType` DISABLE KEYS */;
INSERT INTO `RF_FiscaleRegimeType` VALUES (1,'Voor 1-1-2013',NULL),(2,'Vanaf 1-1-2013',NULL),(3,'Fiscaal regime niet van toepassing',NULL);
/*!40000 ALTER TABLE `RF_FiscaleRegimeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_FiscaleVormType`
--

DROP TABLE IF EXISTS `RF_FiscaleVormType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_FiscaleVormType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_FiscaleVormType`
--

LOCK TABLES `RF_FiscaleVormType` WRITE;
/*!40000 ALTER TABLE `RF_FiscaleVormType` DISABLE KEYS */;
INSERT INTO `RF_FiscaleVormType` VALUES ('01','SEW','SEW'),('02','BEW','BEW'),('03','KEW','KEW'),('04','Kapitaalverzekering zonder eigen woningclausule','Kapitaalverzekering zonder eigen woningclausule');
/*!40000 ALTER TABLE `RF_FiscaleVormType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_FondsNaamCodeType`
--

DROP TABLE IF EXISTS `RF_FondsNaamCodeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_FondsNaamCodeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_FondsNaamCodeType`
--

LOCK TABLES `RF_FondsNaamCodeType` WRITE;
/*!40000 ALTER TABLE `RF_FondsNaamCodeType` DISABLE KEYS */;
INSERT INTO `RF_FondsNaamCodeType` VALUES ('AE001','Equity Fund','Equity Fund'),('AE002','Rente Fund','Rente Fund'),('AE003','Mix Fund','Mix Fund'),('AE005','Levensloop Hypotheek Rekening','Levensloop Hypotheek Rekening'),('AE006','Equity Holland Fund','Equity Holland Fund'),('AE007','Deposito Fund','Deposito Fund'),('AE012','Index Plus Fund','Index Plus Fund'),('AE017','Garantie Click 95 Fund','Garantie Click 95 Fund'),('NN001','NN Aandelen Fonds','NN Aandelen Fonds'),('NN002','NN Continu Click Fonds','NN Continu Click Fonds'),('NN003','NN Europa Fonds','NN Europa Fonds'),('NN004','NN EuropaRente Fonds','NN EuropaRente Fonds'),('NN005','NN Geldmarkt Fonds','NN Geldmarkt Fonds'),('NN006','NN InterRente Fonds','NN InterRente Fonds'),('NN007','NN Mix Fonds','NN Mix Fonds'),('NN008','NN Nederland Fonds','NN Nederland Fonds'),('NN009','NN Protected Mix Fonds 70','NN Protected Mix Fonds 70'),('NN010','NN Rente Fonds','NN Rente Fonds'),('NN011','NN Vastgoed Fonds','NN Vastgoed Fonds'),('NN012','NN Verre Oosten Fonds','NN Verre Oosten Fonds');
/*!40000 ALTER TABLE `RF_FondsNaamCodeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_FondsType`
--

DROP TABLE IF EXISTS `RF_FondsType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_FondsType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_FondsType`
--

LOCK TABLES `RF_FondsType` WRITE;
/*!40000 ALTER TABLE `RF_FondsType` DISABLE KEYS */;
INSERT INTO `RF_FondsType` VALUES ('01','deposito',NULL),('02','obligaties',NULL),('03','vastgoed',NULL),('04','mix en overigen',NULL),('05','aandelen',NULL);
/*!40000 ALTER TABLE `RF_FondsType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_GarantieType`
--

DROP TABLE IF EXISTS `RF_GarantieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_GarantieType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_GarantieType`
--

LOCK TABLES `RF_GarantieType` WRITE;
/*!40000 ALTER TABLE `RF_GarantieType` DISABLE KEYS */;
INSERT INTO `RF_GarantieType` VALUES ('01','NHG-garantie','NHG-garantie'),('02','gemeentegarantie','gemeentegarantie'),('03','geen garantie','geen garantie');
/*!40000 ALTER TABLE `RF_GarantieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_GeslachtType`
--

DROP TABLE IF EXISTS `RF_GeslachtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_GeslachtType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_GeslachtType`
--

LOCK TABLES `RF_GeslachtType` WRITE;
/*!40000 ALTER TABLE `RF_GeslachtType` DISABLE KEYS */;
INSERT INTO `RF_GeslachtType` VALUES ('M','mannelijk','mannelijk'),('V','vrouwelijk','vrouwelijk');
/*!40000 ALTER TABLE `RF_GeslachtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_HybrideDeelType`
--

DROP TABLE IF EXISTS `RF_HybrideDeelType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_HybrideDeelType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_HybrideDeelType`
--

LOCK TABLES `RF_HybrideDeelType` WRITE;
/*!40000 ALTER TABLE `RF_HybrideDeelType` DISABLE KEYS */;
INSERT INTO `RF_HybrideDeelType` VALUES ('01','Spaardeel','Spaardeel'),('02','Beleggingsdeel','Beleggingsdeel');
/*!40000 ALTER TABLE `RF_HybrideDeelType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_HypotheekGeverMutatieType`
--

DROP TABLE IF EXISTS `RF_HypotheekGeverMutatieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_HypotheekGeverMutatieType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_HypotheekGeverMutatieType`
--

LOCK TABLES `RF_HypotheekGeverMutatieType` WRITE;
/*!40000 ALTER TABLE `RF_HypotheekGeverMutatieType` DISABLE KEYS */;
INSERT INTO `RF_HypotheekGeverMutatieType` VALUES ('01','Toe te voegen','Toe te voegen'),('02','Te ontslaan','Te ontslaan'),('03','Te wijzigen','Te wijzigen'),('04','Bestaand','Bestaand');
/*!40000 ALTER TABLE `RF_HypotheekGeverMutatieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_IncassoWijzeType`
--

DROP TABLE IF EXISTS `RF_IncassoWijzeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_IncassoWijzeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_IncassoWijzeType`
--

LOCK TABLES `RF_IncassoWijzeType` WRITE;
/*!40000 ALTER TABLE `RF_IncassoWijzeType` DISABLE KEYS */;
INSERT INTO `RF_IncassoWijzeType` VALUES ('01','Incasso',NULL),('02','Overschrijven',NULL),('03','Acceptgiro',NULL),('04','IDeal',NULL);
/*!40000 ALTER TABLE `RF_IncassoWijzeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_InkomenPeriodeType`
--

DROP TABLE IF EXISTS `RF_InkomenPeriodeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_InkomenPeriodeType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_InkomenPeriodeType`
--

LOCK TABLES `RF_InkomenPeriodeType` WRITE;
/*!40000 ALTER TABLE `RF_InkomenPeriodeType` DISABLE KEYS */;
INSERT INTO `RF_InkomenPeriodeType` VALUES ('01','per maand','per maand'),('04','per 4 weken','per 4 weken'),('12','per jaar','per jaar'),('52','per week','per week');
/*!40000 ALTER TABLE `RF_InkomenPeriodeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_InlegType`
--

DROP TABLE IF EXISTS `RF_InlegType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_InlegType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_InlegType`
--

LOCK TABLES `RF_InlegType` WRITE;
/*!40000 ALTER TABLE `RF_InlegType` DISABLE KEYS */;
INSERT INTO `RF_InlegType` VALUES ('01','Periodieke inleg','Periodieke inleg'),('02','Eenmalige inleg','Eenmalige inleg'),('03','Periodieke onttrekking','Periodieke onttrekking'),('04','Eenmalige onttrekking','Eenmalige onttrekking');
/*!40000 ALTER TABLE `RF_InlegType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_KlantSegmentMijType`
--

DROP TABLE IF EXISTS `RF_KlantSegmentMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_KlantSegmentMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_KlantSegmentMijType`
--

LOCK TABLES `RF_KlantSegmentMijType` WRITE;
/*!40000 ALTER TABLE `RF_KlantSegmentMijType` DISABLE KEYS */;
INSERT INTO `RF_KlantSegmentMijType` VALUES ('IN005','Eigen personeel','Eigen personeel'),('SN001','Personeel SNS Reaal','Personeel SNS Reaal'),('WF001','Basis','Basis');
/*!40000 ALTER TABLE `RF_KlantSegmentMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_KlantSegmentType`
--

DROP TABLE IF EXISTS `RF_KlantSegmentType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_KlantSegmentType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_KlantSegmentType`
--

LOCK TABLES `RF_KlantSegmentType` WRITE;
/*!40000 ALTER TABLE `RF_KlantSegmentType` DISABLE KEYS */;
INSERT INTO `RF_KlantSegmentType` VALUES ('01','Private Banker','Private Banker'),('02','Basis','Basis'),('03','Top Kern','Top Kern'),('04','MKB','MKB'),('05','Eigen personeel','Eigen personeel'),('06','Personeel tussenpersoon','Personeel tussenpersoon'),('07','Personeel derden','Personeel derden');
/*!40000 ALTER TABLE `RF_KlantSegmentType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_LandType`
--

DROP TABLE IF EXISTS `RF_LandType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_LandType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_LandType`
--

LOCK TABLES `RF_LandType` WRITE;
/*!40000 ALTER TABLE `RF_LandType` DISABLE KEYS */;
INSERT INTO `RF_LandType` VALUES ('AD','Andorra',NULL),('AE','Verenigde Arabische Emiraten',NULL),('AF','Afghanistan',NULL),('AG','Antigua en Barbuda',NULL),('AI','Anguilla',NULL),('AIDJ','Afar- en Issaland',NULL),('AL','Albanië',NULL),('AM','Armenië',NULL),('ANHH','Nederlandse Antillen',NULL),('AO','Angola',NULL),('AQ','Antarctica',NULL),('AR','Argentinië',NULL),('AS','Amerikaans-Samoa',NULL),('AT','Oostenrijk',NULL),('AU','Australië',NULL),('AW','Aruba',NULL),('AX','Åland',NULL),('AZ','Azerbeidzjan',NULL),('BA','Bosnië Herzegovina',NULL),('BB','Barbados',NULL),('BD','Bangladesh',NULL),('BE','België',NULL),('BF','Burkina Faso',NULL),('BG','Bulgarije',NULL),('BH','Bahrein',NULL),('BI','Burundi',NULL),('BJ','Benin',NULL),('BL','Saint-Barthélemy',NULL),('BM','Bermuda',NULL),('BN','Brunei',NULL),('BO','Bolivia',NULL),('BQ','Bonaire, Sint Eustatius en Saba',NULL),('BQAQ','Brits Antarctisch Territorium',NULL),('BR','Brazilië',NULL),('BS','Bahama\'s',NULL),('BT','Bhutan',NULL),('BUMM','Birma',NULL),('BV','Bouveteiland',NULL),('BW','Botswana',NULL),('BY','Wit-Rusland',NULL),('BZ','Belize',NULL),('CA','Canada',NULL),('CC','Cocoseilanden',NULL),('CD','Congo-Kinshasa',NULL),('CF','Centraal-Afrikaanse Republiek',NULL),('CG','Congo-Brazzaville',NULL),('CH','Zwitserland',NULL),('CI','Ivoorkust',NULL),('CK','Cookeilanden',NULL),('CL','Chili',NULL),('CM','Kameroen',NULL),('CN','China',NULL),('CO','Colombia',NULL),('CR','Costa Rica',NULL),('CSHH','Tsjecho-Slowakije',NULL),('CSXX','Servië en Montenegro',NULL),('CTKI','Canton en Enderbury Eilanden',NULL),('CU','Cuba',NULL),('CV','Kaapverdië',NULL),('CW','Curaçao',NULL),('CX','Christmaseiland',NULL),('CY','Cyprus',NULL),('CZ','Tsjechië',NULL),('DDDE','DDR',NULL),('DE','Duitsland',NULL),('DJ','Djibouti',NULL),('DK','Denemarken',NULL),('DM','Dominica',NULL),('DO','Dominicaanse Republiek',NULL),('DYBJ','Dahomey',NULL),('DZ','Algerije',NULL),('EC','Ecuador',NULL),('EE','Estland',NULL),('EG','Egypte',NULL),('EH','Westelijke Sahara',NULL),('ER','Eritrea',NULL),('ES','Spanje',NULL),('ET','Ethiopië',NULL),('FI','Finland',NULL),('FJ','Fiji',NULL),('FK','Falklandeilanden',NULL),('FM','Micronesia',NULL),('FO','Faeröer',NULL),('FR','Frankrijk',NULL),('FXFR','La France métropolitaine',NULL),('GA','Gabon',NULL),('GB','Verenigd Koninkrijk',NULL),('GD','Grenada',NULL),('GE','Georgië',NULL),('GEHH','Gilbert- en Ellice-eilanden',NULL),('GF','Frans-Guyana',NULL),('GG','Guernsey',NULL),('GH','Ghana',NULL),('GI','Gibraltar',NULL),('GL','Groenland',NULL),('GM','Gambia',NULL),('GN','Guinee',NULL),('GP','Guadeloupe',NULL),('GQ','Equatoriaal-Guinea',NULL),('GR','Griekenland',NULL),('GS','Zuid-Georgia en de Zuidelijke Sandwicheilanden',NULL),('GT','Guatemala',NULL),('GU','Guam',NULL),('GW','Guinee-Bissau',NULL),('GY','Guyana',NULL),('HK','Hongkong',NULL),('HM','Heard en McDonaldeilanden',NULL),('HN','Honduras',NULL),('HR','Kroatië',NULL),('HT','Haïti',NULL),('HU','Hongarije',NULL),('HVBF','Opper-Volta',NULL),('ID','Indonesië',NULL),('IE','Ierland',NULL),('IL','Israël',NULL),('IM','Man',NULL),('IN','India',NULL),('IO','Brits Indische Oceaanterritorium',NULL),('IQ','Irak',NULL),('IR','Iran',NULL),('IS','IJsland',NULL),('IT','Italië',NULL),('JE','Jersey',NULL),('JM','Jamaica',NULL),('JO','Jordanië',NULL),('JP','Japan',NULL),('JT','Johnston-atol',NULL),('KE','Kenia',NULL),('KG','Kirgizië',NULL),('KH','Cambodja',NULL),('KI','Kiribati',NULL),('KM','Comoren',NULL),('KN','Saint Kitts en Nevis',NULL),('KP','Noord-Korea',NULL),('KR','Zuid-Korea',NULL),('KW','Koeweit',NULL),('KY','Kaaimaneilanden',NULL),('KZ','Kazachstan',NULL),('LA','Laos',NULL),('LB','Libanon',NULL),('LC','Saint Lucia',NULL),('LI','Liechtenstein',NULL),('LK','Sri Lanka',NULL),('LR','Liberia',NULL),('LS','Lesotho',NULL),('LT','Litouwen',NULL),('LU','Luxemburg',NULL),('LV','Letland',NULL),('LY','Libië',NULL),('MA','Marokko',NULL),('MC','Monaco',NULL),('MD','Moldavië',NULL),('ME','Montenegro',NULL),('MF','Sint-Maarten (FR)',NULL),('MG','Madagaskar',NULL),('MH','Marshalleilanden',NULL),('MI','Midway Eilanden',NULL),('MK','Macedonië',NULL),('ML','Mali',NULL),('MM','Myanmar',NULL),('MN','Mongolië',NULL),('MO','Macau',NULL),('MP','Noordelijke Marianen',NULL),('MQ','Martinique',NULL),('MR','Mauritanië',NULL),('MS','Montserrat',NULL),('MT','Malta',NULL),('MU','Mauritius',NULL),('MV','Maldiven',NULL),('MW','Malawi',NULL),('MX','Mexico',NULL),('MY','Maleisië',NULL),('MZ','Mozambique',NULL),('NA','Namibië',NULL),('NC','Nieuw-Caledonië',NULL),('NE','Niger',NULL),('NF','Norfolk',NULL),('NG','Nigeria',NULL),('NHVU','Nieuwe Hebriden',NULL),('NI','Nicaragua',NULL),('NL','Nederland',NULL),('NO','Noorwegen',NULL),('NP','Nepal',NULL),('NQAQ','Koningin Maudland',NULL),('NR','Nauru',NULL),('NTHH','Saoedi-Iraakse neutrale zone',NULL),('NU','Niue',NULL),('NZ','Nieuw-Zeeland',NULL),('OM','Oman',NULL),('PA','Panama',NULL),('PCHH','Trustgebied van de Pacifische Eilanden',NULL),('PE','Peru',NULL),('PF','Frans-Polynesië',NULL),('PG','Papoea-Nieuw-Guinea',NULL),('PH','Filipijnen',NULL),('PK','Pakistan',NULL),('PL','Polen',NULL),('PM','Saint-Pierre en Miquelon',NULL),('PN','Pitcairneilanden',NULL),('PR','Puerto Rico',NULL),('PS','Palestina',NULL),('PT','Portugal',NULL),('PUMM','Diverse pacifische eilanden van de V.S.',NULL),('PW','Palau',NULL),('PY','Paraguay',NULL),('PZPA','Panamakanaalzone',NULL),('QA','Qatar',NULL),('RE','Réunion',NULL),('RHZW','Rhodesië',NULL),('RO','Roemenië',NULL),('RS','Servië',NULL),('RU','Rusland',NULL),('RW','Rwanda',NULL),('SA','Saoedi-Arabië',NULL),('SB','Salomonseilanden',NULL),('SC','Seychellen',NULL),('SD','Soedan',NULL),('SE','Zweden',NULL),('SG','Singapore',NULL),('SH','Sint-Helena, Ascension en Tristan da Cunha',NULL),('SI','Slovenië',NULL),('SJ','Spitsbergen en Jan Mayen',NULL),('SK','Slowakije',NULL),('SKIN','Sikkim',NULL),('SL','Sierra Leone',NULL),('SM','San Marino',NULL),('SN','Senegal',NULL),('SO','Somalië',NULL),('SR','Suriname',NULL),('SS','Zuid-Soedan',NULL),('ST','Sao Tomé en Principe',NULL),('SUHH','Sovjet-Unie',NULL),('SV','El Salvador',NULL),('SX','Sint-Maarten (NL)',NULL),('SY','Syrië',NULL),('SZ','Swaziland',NULL),('TC','Turks- en Caicoseilanden',NULL),('TD','Tsjaad',NULL),('TF','Franse Zuidelijke en Antarctische Gebieden',NULL),('TG','Togo',NULL),('TH','Thailand',NULL),('TJ','Tadzjikistan',NULL),('TK','Tokelau',NULL),('TL','Oost-Timor',NULL),('TM','Turkmenistan',NULL),('TN','Tunesië',NULL),('TO','Tonga',NULL),('TPTL','Portugees Timor',NULL),('TR','Turkije',NULL),('TT','Trinidad en Tobago',NULL),('TV','Tuvalu',NULL),('TW','Taiwan',NULL),('TZ','Tanzania',NULL),('UA','Oekraïne',NULL),('UG','Oeganda',NULL),('UM','Kleine Pacifische eilanden van de Verenigde Staten',NULL),('US','Verenigde Staten',NULL),('UY','Uruguay',NULL),('UZ','Oezbekistan',NULL),('VA','Vaticaanstad',NULL),('VC','Saint Vincent en de Grenadines',NULL),('VD','Democratische Republiek van Vietnam',NULL),('VE','Venezuela',NULL),('VG','Britse Maagdeneilanden',NULL),('VI','Amerikaanse Maagdeneilanden',NULL),('VN','Vietnam',NULL),('VU','Vanuatu',NULL),('WF','Wallis en Futuna',NULL),('WK','Wake-eiland',NULL),('WS','Samoa',NULL),('YDYE','Zuid-Jemen',NULL),('YE','Jemen',NULL),('YT','Mayotte',NULL),('YUCS','Joegoslavië',NULL),('ZA','Zuid-Afrika',NULL),('ZM','Zambia',NULL),('ZRCD','Zaïre',NULL),('ZW','Zimbabwe',NULL);
/*!40000 ALTER TABLE `RF_LandType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_LegitimatieSoortType`
--

DROP TABLE IF EXISTS `RF_LegitimatieSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_LegitimatieSoortType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_LegitimatieSoortType`
--

LOCK TABLES `RF_LegitimatieSoortType` WRITE;
/*!40000 ALTER TABLE `RF_LegitimatieSoortType` DISABLE KEYS */;
INSERT INTO `RF_LegitimatieSoortType` VALUES ('EI','Europese identiteitskaart','Europese identiteitskaart'),('PP','Paspoort','Paspoort'),('RB','Rijbewijs','Rijbewijs'),('VI','Visum','Visum');
/*!40000 ALTER TABLE `RF_LegitimatieSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_LijfrenteClausuleType`
--

DROP TABLE IF EXISTS `RF_LijfrenteClausuleType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_LijfrenteClausuleType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_LijfrenteClausuleType`
--

LOCK TABLES `RF_LijfrenteClausuleType` WRITE;
/*!40000 ALTER TABLE `RF_LijfrenteClausuleType` DISABLE KEYS */;
INSERT INTO `RF_LijfrenteClausuleType` VALUES ('01','Kapitaal bij leven geclausuleerd','Kapitaal bij leven geclausuleerd'),('02','Kapitaal bij overlijden geclausuleerd','Kapitaal bij overlijden geclausuleerd'),('03','Kapitaal bij leven en overlijden geclausuleerd','Kapitaal bij leven en overlijden geclausuleerd');
/*!40000 ALTER TABLE `RF_LijfrenteClausuleType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_MaatschappijType`
--

DROP TABLE IF EXISTS `RF_MaatschappijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_MaatschappijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_MaatschappijType`
--

LOCK TABLES `RF_MaatschappijType` WRITE;
/*!40000 ALTER TABLE `RF_MaatschappijType` DISABLE KEYS */;
INSERT INTO `RF_MaatschappijType` VALUES ('AA','ABN AMRO Bank N.V.',NULL),('AB','ABP Hypotheken',NULL),('AC','Amstelstaete',NULL),('AD','Avéro Achmea Bancaire Diensten',NULL),('AE','AEGON Verzekeringen',NULL),('AF','De Amersfoortse',NULL),('AG','ABN AMRO Hypotheken Groep','ABN AMRO Hypotheken Groep'),('AH','Algemene Verzekering mij',NULL),('AI','Atrios',NULL),('AJ','Allianz Asset Management',NULL),('AK','ASN Bank',NULL),('AL','Alkmaar Hypotheken B.V.',NULL),('AM','AMEV Levensverzekeringen N.V.',NULL),('AN','Albank',NULL),('AO','AON Warranty Group',NULL),('AP','ACE Europe Life',NULL),('AQ','Attens Hypotheken',NULL),('AR','Argenta',NULL),('AS','Amstelhuys',NULL),('AT','Stichting Beleggingsrekening ANT Trust',NULL),('AU','ASR',NULL),('AV','Avero Achmea',NULL),('AW','Abel Hypotheken',NULL),('AX','Axa Beleggingen',NULL),('AY','Algemene Levensherverzekering Maatschappij',NULL),('AZ','Allianz',NULL),('BB','BijBouwe',NULL),('BC','Basic Life',NULL),('BD','Brand New Day Vermogensbeheer N.V.',NULL),('BF','Bouwfonds Hypotheken bv',NULL),('BI','Effectenbank Binck',NULL),('BL','BLG Hypotheken',NULL),('BN','BNP Paribas Personal Finance',NULL),('BO','BOS',NULL),('BP','Van Berkel Capital Partners',NULL),('BU','Combi BudgetPlus Hypotheken',NULL),('CA','Cardif',NULL),('CB','Centraal Beheer',NULL),('CD','CDK-Bank',NULL),('CE','Credivance',NULL),('CH','CombiVoordeel Hypotheken B.V.',NULL),('CI','Credit Life International N.V',NULL),('CO','Combi Hypotheken B.V.',NULL),('CP','Capitalum',NULL),('CR','Cordares',NULL),('CS','Callas',NULL),('CV','CVB Bank',NULL),('CX','Conservatrix N.V.',NULL),('DA','Dela Verzekeringen',NULL),('DB','Direktbank',NULL),('DC','DFM',NULL),('DE','DSB Leven',NULL),('DF','De Federale',NULL),('DL','Delta Lloyd',NULL),('DM','Defam',NULL),('DO','Dohmen & Otten Vermogensbeheer',NULL),('DS','DSB Bank',NULL),('DV','DBV',NULL),('DW','DWS Investments',NULL),('DZ','Dazure',NULL),('EB','EBO',NULL),('ED','EDC Assuradeuren B.V.',NULL),('EF','Efima Hypotheken B.V.',NULL),('EG','ERGO Life',NULL),('EH','Eerste Hollandse Leven',NULL),('EL','AXA Leven',NULL),('EP','EuropeLife',NULL),('EQ','ELQ Hypotheken',NULL),('ER','Erasmusleven N.V.',NULL),('ES','Estate',NULL),('EU','Eureffect',NULL),('EV','Elvia Verzekeringen',NULL),('FA','Financieel Bureau Academici',NULL),('FB','Friesland Bank',NULL),('FD','Fidelity Investments',NULL),('FE','Friesland Bank Securities',NULL),('FG','FlexGarant',NULL),('FH','Florius',NULL),('FI','Finata Bank',NULL),('FL','Falcon Leven N.V.',NULL),('FN','FNV Leden Verzekeringen',NULL),('FO','Fortis ASR Verzekeringsgroep N.V.',NULL),('FR','Fairgo',NULL),('FS','Finsys',NULL),('FT','FBTO',NULL),('FU','Fundselector',NULL),('FV','Final Trust Vermogensbeheer',NULL),('FZ','Forza Asset Management',NULL),('GB','Garantiebeheer',NULL),('GE','Gema',NULL),('GM','GMAC',NULL),('GO','Goudse Verzekeringen B.V.',NULL),('GV','Generali Verzekeringen',NULL),('HA','Hansard Europe Ltd',NULL),('HB','Holland Beleggings Groep',NULL),('HD','Hollandsche Bank Unie',NULL),('HE','Helvetia Verzekeringen',NULL),('HH','Hooge Huys Verzekeringen',NULL),('HL','Holland Woningfinanciering N.V.',NULL),('HM','Hamburg-Mannheimer',NULL),('HN','HNG Hypotheken',NULL),('HO','Houtvaart Hypotheken B.V.',NULL),('HQ','HQ Hypotheken',NULL),('HT','Hypotrust',NULL),('HU','Huizen',NULL),('HW','Hooge Huys Woningfonds',NULL),('HY','Hypinvest',NULL),('IA','Insinger Assetmanagement',NULL),('IB','Insinger de Beaufort N.V., Bank',NULL),('ID','idm bank',NULL),('IK','IKS',NULL),('IL','Interlloyd Levensverzekering Maatschappij N.V.',NULL),('IN','ING Bank',NULL),('IO','Innofin',NULL),('IP','Interpolis',NULL),('IQ','IQWOON',NULL),('IT','Interbank',NULL),('IV','International Value Management',NULL),('KB','Knab',NULL),('KC','Keijser Capital',NULL),('KL','Klaverblad Verzekeringen N.V.',NULL),('KN','Koninklijke Nedloyd',NULL),('LB','F. van Lanschot Bankiers',NULL),('LE','Levob Verzekeringen',NULL),('LG','Legal & General',NULL),('LH','LOGON Hypotheken',NULL),('LL','Lloyds Bank',NULL),('LO','London Verzekeringen',NULL),('LV','Leidscheverzekeringen',NULL),('LY','Loyalis',NULL),('MA','Matrix Asset Management',NULL),('ME','Merius',NULL),('MG','MGM International Assurance',NULL),('MH','Bank Mees & Hope',NULL),('MM','Mass Mutual Europe SA',NULL),('MN','MNF Bank Hypotheken',NULL),('MO','Monuta Levensverzekeringen N.V.',NULL),('MP','Mees Pierson',NULL),('MS','Morgan Stanley Investment Management',NULL),('MT','Munt Hypotheken',NULL),('MU','Muzen',NULL),('MY','MoneYou',NULL),('NA','Nationale Notaris',NULL),('NE','Noord Nederlands Effecten Kantoor',NULL),('NF',' Stichting NOG Hypotheekfonds',NULL),('NH','Nieuwe Hollandsche Lloyd',NULL),('NI','NIBC Direct Hypotheken B.V.',NULL),('NL','Nuts Levensverzekeringen van 1848 N.V.',NULL),('NN','Nationale Nederlanden Hypotheken',NULL),('NO','NOG Verzekeringen',NULL),('NP','Nationale HypotheekPas',NULL),('NR','Nieuw Rotterdam Verzekeringen B.V.',NULL),('NT','Nationale Hypotheek Maatschappij',NULL),('NU','Nieuwegein',NULL),('NV','Nationale Nederlanden Verzekeringen',NULL),('NW','Nationale Waarborg',NULL),('NY','Nederlandse Hypotheekbank N.V.',NULL),('NZ','NWWI',NULL),('OG','Onderlinge \'s Gravenhage U.A.',NULL),('OH','OHRA Verzekeringen',NULL),('OO','Oosteroever Hypotheken B.V.',NULL),('OP','Optimix',NULL),('OS','Ostrica B.V.',NULL),('OV','Obvion',NULL),('PA','PBA Hypotheken',NULL),('PB','Postbank N.V.',NULL),('PD','Palladyne Asset Management',NULL),('PL','Paerel Leven',NULL),('PM','PPGM Levensverzekeringen N.V.',NULL),('PP','Philips Pensioenfonds',NULL),('PQ','Proteq',NULL),('PR','Prudential Leven N.V.',NULL),('PV','PVF Hypotheken',NULL),('QL','Quantum Leven',NULL),('QT','Qent Hypotheken',NULL),('QU','Quion',NULL),('RA','REAAL Leven',NULL),('RB','Rabo-hypotheekbank N.V.',NULL),('RC','Robeco',NULL),('RD','Reaal Bancaire Diensten',NULL),('RE','Reaal Hypotheken B.V.',NULL),('RG','RegioBank',NULL),('RH','Rijnlandse Hypotheekbank',NULL),('RI','Robein',NULL),('RL','Royal Levensverzekerings Mij. N.V.',NULL),('RO','Roparco N.V.',NULL),('RR','Royal Residentie',NULL),('RV','RVS Leven',NULL),('RW','REAAL Woningfonds',NULL),('SA','Royal & SunAlliance',NULL),('SB','Stichting Bedrijfspensioenfonds Zorgverzekeraars',NULL),('SC','Schretlen',NULL),('SE','Seyst',NULL),('SF','Selectief Hypotheken',NULL),('SH','Sparck Hypotheken',NULL),('SI','Simon A. Cohen',NULL),('SL','Spaarbank Limburg',NULL),('SN','SNS Bank',NULL),('SP','Spoorwegpensioenfonds',NULL),('SR','Stad Rotterdam N.V.',NULL),('ST','Stad en Land',NULL),('SY','Syntrus Achmea Hypotheken',NULL),('TA','Triple Assets Investment Services',NULL),('TB','Triodos Bank N.V.',NULL),('TC','Bank Ten Cate & Cie',NULL),('TD','Today\'s Beheer',NULL),('TH','Tulp Hypotheken',NULL),('TL','Tellius Hypotheken',NULL),('TO','Todays Tomorrow B.V.',NULL),('TP','TradingPort Vermogensbeheer',NULL),('TT','Taxatheek',NULL),('TU','Tiel Utrecht',NULL),('TV','TAF',NULL),('UA','N.V. Levensverzekerings Mij UAP-Nederland',NULL),('UB','UBO',NULL),('UC','UCB',NULL),('UL','Universal Leven',NULL),('UN','Unigarant Verzekeringen',NULL),('UV','Univé Verzekeringen',NULL),('VC','Victorie Hypotheken',NULL),('VE','Venn Hypotheken',NULL),('VH','Vezeno Hypotheken N.V.',NULL),('VI','Vierlander Effecten',NULL),('VN','Van Nierop',NULL),('VO','VORSORGE Luxemburg Lebensversicherung',NULL),('VS','VSB-Bank N.V.',NULL),('VV','VVAA Levensverzekeringen N.V.',NULL),('WF','Woonfonds Hypotheken',NULL),('WH','Wilgenhaege Vermogensbeheer',NULL),('WI','Winterthur Verzekeringen',NULL),('WN','Woonnexxt',NULL),('WO','Woudsend Verzekeringen N.V.',NULL),('WU','Westland/Utrecht Hypotheken',NULL),('WV','Woonvoordeel',NULL),('XX','maatschappij onbekend',NULL),('ZA','Zwolsche Algemeene',NULL),('ZL','Zwitserleven',NULL),('ZU','Zurich Leven',NULL),('ZW','Zwaluw',NULL),('ZZ','Anders',NULL);
/*!40000 ALTER TABLE `RF_MaatschappijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_MaatwerkOplCodeMijType`
--

DROP TABLE IF EXISTS `RF_MaatwerkOplCodeMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_MaatwerkOplCodeMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_MaatwerkOplCodeMijType`
--

LOCK TABLES `RF_MaatwerkOplCodeMijType` WRITE;
/*!40000 ALTER TABLE `RF_MaatwerkOplCodeMijType` DISABLE KEYS */;
INSERT INTO `RF_MaatwerkOplCodeMijType` VALUES ('AA009','Meefinancieren restschuld huidige woning','Meefinancieren restschuld huidige woning'),('AA010','Oversluiten van de hypotheek','Oversluiten van de hypotheek'),('AA011','Lage hypotheek op inkomen','Lage hypotheek op inkomen'),('AA012','Aankoop woning met A-label','Aankoop woning met A-label'),('AA013','Doorstromer','Doorstromer'),('AA014','Overige aantoonbare motivatie explain','Overige aantoonbare motivatie explain'),('AE001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('AE002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('AE003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('AE004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('AE005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('AE006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('AE007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('AE008','Overig','Overig'),('AQ001','Toekomstperspectief/Inkomensgroei',NULL),('AQ002','Vrij beschikbaar vermogen',NULL),('AQ003','Huidige woonlasten hoger dan nieuwe woonlasten',NULL),('AQ004','Netto besteedbaar inkomen',NULL),('AQ005','Inkomen uit verpand vermogen',NULL),('AQ006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg',NULL),('AQ007','Persoonlijk Budgetadvies NIBUD',NULL),('AQ008','Overig',NULL),('AR001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('AR002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('AR003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('AR004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('AR005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('AR006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('AR007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('AR008','Overig','Overig'),('AU001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('AU002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('AU003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('AU004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('AU005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('AU006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('AU007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('AU008','Overig','Overig'),('AZ001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('AZ002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('AZ003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('AZ004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('AZ005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('AZ006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('AZ007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('AZ008','Overig','Overig'),('BL001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('BL002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('BL003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('BL004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('BL005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('BL006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('BL007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('BL008','Overig','Overig'),('BN001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('BN002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('BN003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('BN004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('BN005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('BN006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('BN007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('BN008','Overig','Overig'),('BO001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('BO002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('BO003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('BO004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('BO005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('BO006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('BO007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('BO008','Overig','Overig'),('DL001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('DL002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('DL003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('DL004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('DL005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('DL006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('DL007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('DL008','Overig','Overig'),('FH009','Meefinancieren restschuld huidige woning','Meefinancieren restschuld huidige woning'),('FH010','Oversluiten van de hypotheek','Oversluiten van de hypotheek'),('FH011','Lage hypotheek op inkomen','Lage hypotheek op inkomen'),('FH012','Aankoop woning met A-label','Aankoop woning met A-label'),('FH013','Doorstromer','Doorstromer'),('FH014','Overige aantoonbare motivatie explain','Overige aantoonbare motivatie explain'),('HQ001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('HQ002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('HQ003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('HQ004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('HQ005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('HQ006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('HQ007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('HQ008','Overig','Overig'),('HT001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('HT002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('HT003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('HT004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('HT005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('HT006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('HT007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('HT008','Overig','Overig'),('IN001','Aantoonbare betaalcapaciteit op basis van historische woonlasten','Aantoonbare betaalcapaciteit op basis van historische woonlasten'),('IN002','Inleg in premiedepot, lopende premievrije polis of inleg geheel uit eigen middelen','Inleg in premiedepot, lopende premievrije polis of inleg geheel uit eigen middelen'),('IN004','Aantoonbaar vrij vermogen','Aantoonbaar vrij vermogen'),('IN006','Aantoonbare inkomensstijging','Aantoonbare inkomensstijging'),('IN010','Ouders hoofdelijk medeschuldenaar','Ouders hoofdelijk medeschuldenaar'),('IN099','Overige redenen','Overige redenen'),('LL501','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('LL502','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('LL503','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('LL504','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('LL505','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('LL506','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('LL507','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('LL508','Overig','Overig'),('ME001','Inkomensgroei','Inkomensgroei'),('ME002','Baanwissel','Baanwissel'),('MY001','Oversluiten van de hypotheek','Oversluiten van de hypotheek'),('MY002','Lage hypotheek op inkomen','Lage hypotheek op inkomen'),('MY003','Aankoop woning met A-label','Aankoop woning met A-label'),('MY004','Doorstromer','Doorstromer'),('MY005','Overige aantoonbare motivatie explain','Overige aantoonbare motivatie explain'),('NI001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('NI002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('NI003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('NI004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('NI005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('NI006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('NI007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('NI008','Overig','Overig'),('NN001','Substantieel lagere lasten','Substantieel lagere lasten'),('NN002','Aantoonbare inkomensstijging','Aantoonbare inkomensstijging'),('NN003','Verpand vermogen (voor waardeopbouw)','Verpand vermogen (voor waardeopbouw)'),('NN004','Restschuld bij verkoop vorige woning','Restschuld bij verkoop vorige woning'),('NN005','Oversluiting (meefinancieren financieringskosten en boete)','Oversluiting (meefinancieren financieringskosten en boete)'),('NN006','Overbruggingssituatie','Overbruggingssituatie'),('NN007','Resultaat onderneming DGA','Resultaat onderneming DGA'),('NN008','Energiebesparende voorzieningen (energielabel A)','Energiebesparende voorzieningen (energielabel A)'),('NN009','Hoofdelijk medeschuldenaarschap','Hoofdelijk medeschuldenaarschap'),('NN099','Overige reden','Overige reden'),('OO001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('OO002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('OO003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('OO004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('OO005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('OO006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('OO007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('OO008','Overig','Overig'),('RB001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('RB002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('RB003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('RB004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('RB005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('RB006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('RB007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('RB008','Overig','Overig'),('RB009','Aankoop energiezuinige woning','Aankoop energiezuinige woning'),('RB010','Aankoop 0 op de meter woning','Aankoop 0 op de meter woning'),('RB011','Aantoonbaar hoger actueel inkomen dan volgens reguliere Aantoonbaar hoger actueel inkomen dan volgens reguliere normen','Aantoonbaar hoger actueel inkomen dan volgens reguliere Aantoonbaar hoger actueel inkomen dan volgens reguliere normen'),('RG001','Toekomstperspectief/Inkomensgroei Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei Toekomstperspectief/Inkomensgroei'),('RG002','Vrij beschikbaar vermogen Vrij beschikbaar vermogen','Vrij beschikbaar vermogen Vrij beschikbaar vermogen'),('RG003','Huidige woonlasten hoger dan nieuwe woonlasten Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten Huidige woonlasten hoger dan nieuwe woonlasten'),('RG004','Netto besteedbaar inkomen Netto besteedbaar inkomen','Netto besteedbaar inkomen Netto besteedbaar inkomen'),('RG005','Inkomen uit verpand vermogen Inkomen uit verpand vermogen','Inkomen uit verpand vermogen Inkomen uit verpand vermogen'),('RG006','Uit eigen vermogen inbrengen premiedepot, lopende Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg premievrije polis of eerste inleg'),('RG007','Persoonlijk Budgetadvies NIBUD Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD Persoonlijk Budgetadvies NIBUD'),('RG008','Overig Overig','Overig Overig'),('SN001','Toekomstperspectief/Inkomensgroei Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei Toekomstperspectief/Inkomensgroei'),('SN002','Vrij beschikbaar vermogen Vrij beschikbaar vermogen','Vrij beschikbaar vermogen Vrij beschikbaar vermogen'),('SN003','Huidige woonlasten hoger dan nieuwe woonlasten Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten Huidige woonlasten hoger dan nieuwe woonlasten'),('SN004','Netto besteedbaar inkomen Netto besteedbaar inkomen','Netto besteedbaar inkomen Netto besteedbaar inkomen'),('SN005','Inkomen uit verpand vermogen Inkomen uit verpand vermogen','Inkomen uit verpand vermogen Inkomen uit verpand vermogen'),('SN006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('SN007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('SN008','Overig','Overig'),('SY001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('SY002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('SY003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('SY004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('SY005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('SY006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('SY007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('SY008','Overig','Overig'),('TL001','Toekomstperspectief/Inkomensgroei','Toekomstperspectief/Inkomensgroei'),('TL002','Vrij beschikbaar vermogen','Vrij beschikbaar vermogen'),('TL003','Huidige woonlasten hoger dan nieuwe woonlasten','Huidige woonlasten hoger dan nieuwe woonlasten'),('TL004','Netto besteedbaar inkomen','Netto besteedbaar inkomen'),('TL005','Inkomen uit verpand vermogen','Inkomen uit verpand vermogen'),('TL006','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg','Uit eigen vermogen inbrengen premiedepot, lopende premievrije polis of eerste inleg'),('TL007','Persoonlijk Budgetadvies NIBUD','Persoonlijk Budgetadvies NIBUD'),('TL008','Overig','Overig'),('WF005','Aantoonbare inkomensgroei','Aantoonbare inkomensgroei'),('WF006','Medehoofdelijk schuldenaarschap','Medehoofdelijk schuldenaarschap'),('WF007','Lasten  60% maximale leencapaciteit','Lasten  60% maximale leencapaciteit'),('WF008','Oversluiting LTV','Oversluiting LTV'),('WF009','Restschuld oude woning','Restschuld oude woning'),('WF010','Oversluiting LTI','Oversluiting LTI'),('WF011','Overbruggingssituatie','Overbruggingssituatie'),('WF012','Energiebesp. voorziening/energielabel A++','Energiebesp. voorziening/energielabel A++');
/*!40000 ALTER TABLE `RF_MaatwerkOplCodeMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_MeldingBelangType`
--

DROP TABLE IF EXISTS `RF_MeldingBelangType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_MeldingBelangType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_MeldingBelangType`
--

LOCK TABLES `RF_MeldingBelangType` WRITE;
/*!40000 ALTER TABLE `RF_MeldingBelangType` DISABLE KEYS */;
INSERT INTO `RF_MeldingBelangType` VALUES ('1','Blokkerend',NULL),('2','Waarschuwend',NULL),('3','Informatief',NULL);
/*!40000 ALTER TABLE `RF_MeldingBelangType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_MeldingSoortType`
--

DROP TABLE IF EXISTS `RF_MeldingSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_MeldingSoortType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_MeldingSoortType`
--

LOCK TABLES `RF_MeldingSoortType` WRITE;
/*!40000 ALTER TABLE `RF_MeldingSoortType` DISABLE KEYS */;
INSERT INTO `RF_MeldingSoortType` VALUES ('01','Verzoek is met succes verwerkt','Verzoek is met succes verwerkt'),('02','Server/Dienst is niet bereikbaar','Server/Dienst is niet bereikbaar'),('03','Interne Serverfout','Interne Serverfout'),('04','Partij niet geautoriseerd','Partij niet geautoriseerd'),('05','Ongeldig verzoek','Ongeldig verzoek'),('99','Bronspecifieke melding','Bronspecifieke melding');
/*!40000 ALTER TABLE `RF_MeldingSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_MutatieType`
--

DROP TABLE IF EXISTS `RF_MutatieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_MutatieType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_MutatieType`
--

LOCK TABLES `RF_MutatieType` WRITE;
/*!40000 ALTER TABLE `RF_MutatieType` DISABLE KEYS */;
INSERT INTO `RF_MutatieType` VALUES ('01','Aankoop woning','Aankoop woning'),('04','Verwerving uit onverdeelde boedel','Verwerving uit onverdeelde boedel'),('06','Oversluiting bij nieuwe financier','Oversluiting bij nieuwe financier'),('07','Afkoop erfpacht','Afkoop erfpacht'),('27','Echtscheiding','Echtscheiding'),('28','Kwaliteitsverbetering','Kwaliteitsverbetering'),('29','Verwerving volle eigendom','Verwerving volle eigendom');
/*!40000 ALTER TABLE `RF_MutatieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_NotarisType`
--

DROP TABLE IF EXISTS `RF_NotarisType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_NotarisType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_NotarisType`
--

LOCK TABLES `RF_NotarisType` WRITE;
/*!40000 ALTER TABLE `RF_NotarisType` DISABLE KEYS */;
INSERT INTO `RF_NotarisType` VALUES ('01','Passerend','Passerend'),('02','Transporterend','Transporterend'),('03','Opsteller garantieverklaring','Opsteller garantieverklaring');
/*!40000 ALTER TABLE `RF_NotarisType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_OfferteRenteType`
--

DROP TABLE IF EXISTS `RF_OfferteRenteType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_OfferteRenteType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_OfferteRenteType`
--

LOCK TABLES `RF_OfferteRenteType` WRITE;
/*!40000 ALTER TABLE `RF_OfferteRenteType` DISABLE KEYS */;
INSERT INTO `RF_OfferteRenteType` VALUES ('01',NULL,'dalrente'),('02','offerterente','offerterente'),('03','toetsrente','toetsrente'),('04','dagrente','dagrente'),('05','offerterente plus termijn','offerterente plus termijn');
/*!40000 ALTER TABLE `RF_OfferteRenteType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_OnderhoudsToestandType`
--

DROP TABLE IF EXISTS `RF_OnderhoudsToestandType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_OnderhoudsToestandType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_OnderhoudsToestandType`
--

LOCK TABLES `RF_OnderhoudsToestandType` WRITE;
/*!40000 ALTER TABLE `RF_OnderhoudsToestandType` DISABLE KEYS */;
INSERT INTO `RF_OnderhoudsToestandType` VALUES ('01','Goed','Goed'),('02','Voldoende','Voldoende'),('03','Matig','Matig'),('04','Slecht','Slecht'),('05','Aanschrijving gemeente','Aanschrijving gemeente'),('06','Onbekend','Onbekend');
/*!40000 ALTER TABLE `RF_OnderhoudsToestandType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_OnderpandType`
--

DROP TABLE IF EXISTS `RF_OnderpandType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_OnderpandType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_OnderpandType`
--

LOCK TABLES `RF_OnderpandType` WRITE;
/*!40000 ALTER TABLE `RF_OnderpandType` DISABLE KEYS */;
INSERT INTO `RF_OnderpandType` VALUES ('01','bestaand','bestaand'),('02','bestaand verbouw','bestaand verbouw'),('03','nieuw','nieuw');
/*!40000 ALTER TABLE `RF_OnderpandType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_OntvangerCodeType`
--

DROP TABLE IF EXISTS `RF_OntvangerCodeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_OntvangerCodeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_OntvangerCodeType`
--

LOCK TABLES `RF_OntvangerCodeType` WRITE;
/*!40000 ALTER TABLE `RF_OntvangerCodeType` DISABLE KEYS */;
INSERT INTO `RF_OntvangerCodeType` VALUES ('AA','ABN AMRO Bank',NULL),('AE','Aegon Verzekeringen',NULL),('AG','ABN AMRO Hypotheken Groep',NULL),('AQ','Attens Hypotheken',NULL),('AR','Argenta',NULL),('AU','ASR',NULL),('AW','Abel Hypotheken',NULL),('AZ','Allianz',NULL),('BB','BijBouwe',NULL),('BL','BLG Hypotheken',NULL),('BN','BNP Paribas Personal Finance',NULL),('CB','Centraal Beheer',NULL),('CE','Credivance',NULL),('CS','Callas',NULL),('DA','DELA',NULL),('DL','Delta Lloyd',NULL),('DM','Defam',NULL),('HQ','HQ Hypotheken',NULL),('HT','Hypotrust',NULL),('IN','ING',NULL),('IQ','IQWOON',NULL),('IT','Interbank',NULL),('LB','F. van Lanschot Bankiers',NULL),('LG','Legal & General',NULL),('LL','Lloyds Bank',NULL),('ME','Merius',NULL),('MT','Munt Hypotheken',NULL),('MY','MoneYou',NULL),('NA','Nationale Notaris',NULL),('NI','NIBC Bank N.V.',NULL),('NN','Nationale Nederlanden Hypotheken',NULL),('NZ','NWWI',NULL),('OO','Oosteroever Hypotheken B.V.',NULL),('OV','Obvion',NULL),('RA','REAAL Leven',NULL),('RB','Rabobank',NULL),('RG','RegioBank',NULL),('SF','Selectief Hypotheken',NULL),('SN','SNS Bank',NULL),('SY','Syntrus Achmea Hypotheken',NULL),('TB','Triodos Bank N.V.',NULL),('TH','Tulp Hypotheken',NULL),('TL','Tellius Hypotheken',NULL),('TV','TAF',NULL),('VE','Venn Hypotheken',NULL),('WF','Woonfonds Hypotheken',NULL);
/*!40000 ALTER TABLE `RF_OntvangerCodeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_OpleidingsNiveauType`
--

DROP TABLE IF EXISTS `RF_OpleidingsNiveauType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_OpleidingsNiveauType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_OpleidingsNiveauType`
--

LOCK TABLES `RF_OpleidingsNiveauType` WRITE;
/*!40000 ALTER TABLE `RF_OpleidingsNiveauType` DISABLE KEYS */;
INSERT INTO `RF_OpleidingsNiveauType` VALUES ('01','Lager onderwijs','Lager onderwijs'),('02','Voortgezet onderwijs (MAVO/HAVO)','Voortgezet onderwijs (MAVO/HAVO)'),('03','VWO','VWO'),('04','Lager beroepsonderwijs','Lager beroepsonderwijs'),('05','Middelbaar beroepsonderwijs','Middelbaar beroepsonderwijs'),('06','Hoger beroepsonderwijs','Hoger beroepsonderwijs'),('07','(post)Academisch','(post)Academisch'),('08','Onbekend','Onbekend');
/*!40000 ALTER TABLE `RF_OpleidingsNiveauType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_OverbruggingsRenteType`
--

DROP TABLE IF EXISTS `RF_OverbruggingsRenteType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_OverbruggingsRenteType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_OverbruggingsRenteType`
--

LOCK TABLES `RF_OverbruggingsRenteType` WRITE;
/*!40000 ALTER TABLE `RF_OverbruggingsRenteType` DISABLE KEYS */;
INSERT INTO `RF_OverbruggingsRenteType` VALUES ('01','Vaste rente','Vaste rente'),('02','Variabele rente','Variabele rente');
/*!40000 ALTER TABLE `RF_OverbruggingsRenteType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_PremieType`
--

DROP TABLE IF EXISTS `RF_PremieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_PremieType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_PremieType`
--

LOCK TABLES `RF_PremieType` WRITE;
/*!40000 ALTER TABLE `RF_PremieType` DISABLE KEYS */;
INSERT INTO `RF_PremieType` VALUES ('01','Risicopremie normaal','Risicopremie normaal'),('03','Premie totaal normaal','Premie totaal normaal'),('05','Storting','Storting');
/*!40000 ALTER TABLE `RF_PremieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_ProvisieCodeMijType`
--

DROP TABLE IF EXISTS `RF_ProvisieCodeMijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_ProvisieCodeMijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_ProvisieCodeMijType`
--

LOCK TABLES `RF_ProvisieCodeMijType` WRITE;
/*!40000 ALTER TABLE `RF_ProvisieCodeMijType` DISABLE KEYS */;
INSERT INTO `RF_ProvisieCodeMijType` VALUES ('CE001','Tarief A','Tarief A'),('CE002','Tarief B','Tarief B'),('CE003','Tarief C','Tarief C'),('CE004','Tarief D','Tarief D'),('CE005','Tarief I','Tarief I'),('CE006','Tarief II','Tarief II'),('DM001','Klasse P01','Klasse P01'),('DM002','Klasse P02','Klasse P02'),('IT001','Label 1','Label 1'),('IT002','Label 2','Label 2');
/*!40000 ALTER TABLE `RF_ProvisieCodeMijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RechtsVormType`
--

DROP TABLE IF EXISTS `RF_RechtsVormType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RechtsVormType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RechtsVormType`
--

LOCK TABLES `RF_RechtsVormType` WRITE;
/*!40000 ALTER TABLE `RF_RechtsVormType` DISABLE KEYS */;
INSERT INTO `RF_RechtsVormType` VALUES ('01','Eenmanszaak','Eenmanszaak'),('02','Maatschap','Maatschap'),('03','Vennootschap onder firma (VOF)','Vennootschap onder firma (VOF)'),('04','Commanditaire vennootschap (CV)','Commanditaire vennootschap (CV)'),('05','Besloten vennootschap (BV)','Besloten vennootschap (BV)'),('06','Naamloze vennootschap (NV)','Naamloze vennootschap (NV)'),('07','Vereniging','Vereniging'),('08','Stichting','Stichting'),('09','Coöperatie met beperkte aansprakelijkheid (BA)','Coöperatie met beperkte aansprakelijkheid (BA)'),('10','Coöperatie met uitgesloten aansprakelijkheid (UA)','Coöperatie met uitgesloten aansprakelijkheid (UA)'),('11','Coöperatie met wettelijke aansprakelijkheid (WA)','Coöperatie met wettelijke aansprakelijkheid (WA)'),('12','Onderlinge waarborgmaatschappij','Onderlinge waarborgmaatschappij');
/*!40000 ALTER TABLE `RF_RechtsVormType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RedenAanleveringDocumentType`
--

DROP TABLE IF EXISTS `RF_RedenAanleveringDocumentType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RedenAanleveringDocumentType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RedenAanleveringDocumentType`
--

LOCK TABLES `RF_RedenAanleveringDocumentType` WRITE;
/*!40000 ALTER TABLE `RF_RedenAanleveringDocumentType` DISABLE KEYS */;
INSERT INTO `RF_RedenAanleveringDocumentType` VALUES ('01','Beoordeling','Beoordeling'),('02','Archivering','Archivering'),('03','Ter informatie','Ter informatie');
/*!40000 ALTER TABLE `RF_RedenAanleveringDocumentType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RegelingType`
--

DROP TABLE IF EXISTS `RF_RegelingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RegelingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RegelingType`
--

LOCK TABLES `RF_RegelingType` WRITE;
/*!40000 ALTER TABLE `RF_RegelingType` DISABLE KEYS */;
INSERT INTO `RF_RegelingType` VALUES ('01','eerste hypotheek (nieuw)','eerste hypotheek (nieuw)'),('04','onderhands','onderhands'),('05','omzetting','omzetting'),('07','interne oversluiting','interne oversluiting'),('08','oversluiting andere geldgever','oversluiting andere geldgever'),('09','tweede of hoger in rang hypotheek','tweede of hoger in rang hypotheek'),('10','meeneemhypotheek','meeneemhypotheek'),('11','doorgeefhypotheek','doorgeefhypotheek');
/*!40000 ALTER TABLE `RF_RegelingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RelTotVerznemerType`
--

DROP TABLE IF EXISTS `RF_RelTotVerznemerType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RelTotVerznemerType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RelTotVerznemerType`
--

LOCK TABLES `RF_RelTotVerznemerType` WRITE;
/*!40000 ALTER TABLE `RF_RelTotVerznemerType` DISABLE KEYS */;
INSERT INTO `RF_RelTotVerznemerType` VALUES ('01','Echtgenote','Echtgenote'),('02','Echtgenoot','Echtgenoot'),('03','Kind','Kind'),('04','Partner/samenwonend/geregistreerd partnerschap','Partner/samenwonend/geregistreerd partnerschap'),('05','Moeder','Moeder'),('06','Vader','Vader'),('07','Verzekeringnemer is verzekerde','Verzekeringnemer is verzekerde'),('08','Zus','Zus'),('09','Broer','Broer'),('10','Compagnon','Compagnon');
/*!40000 ALTER TABLE `RF_RelTotVerznemerType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RenteAfspraakType`
--

DROP TABLE IF EXISTS `RF_RenteAfspraakType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RenteAfspraakType` (
  `Code` int(11) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RenteAfspraakType`
--

LOCK TABLES `RF_RenteAfspraakType` WRITE;
/*!40000 ALTER TABLE `RF_RenteAfspraakType` DISABLE KEYS */;
INSERT INTO `RF_RenteAfspraakType` VALUES (1,'rentevast','rentevast'),(2,'rentedempend systeem','rentedempend systeem'),(3,'continu variabel','continu variabel');
/*!40000 ALTER TABLE `RF_RenteAfspraakType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RenteAfwijkingCodeType`
--

DROP TABLE IF EXISTS `RF_RenteAfwijkingCodeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RenteAfwijkingCodeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RenteAfwijkingCodeType`
--

LOCK TABLES `RF_RenteAfwijkingCodeType` WRITE;
/*!40000 ALTER TABLE `RF_RenteAfwijkingCodeType` DISABLE KEYS */;
INSERT INTO `RF_RenteAfwijkingCodeType` VALUES ('01','Rentemiddeling vaste opslag',NULL),('02',' Rentemiddeling boete opslag',NULL),('03','Commerciele speling',NULL);
/*!40000 ALTER TABLE `RF_RenteAfwijkingCodeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RenteBedenktijdType`
--

DROP TABLE IF EXISTS `RF_RenteBedenktijdType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RenteBedenktijdType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RenteBedenktijdType`
--

LOCK TABLES `RF_RenteBedenktijdType` WRITE;
/*!40000 ALTER TABLE `RF_RenteBedenktijdType` DISABLE KEYS */;
INSERT INTO `RF_RenteBedenktijdType` VALUES ('01','geen','geen'),('02','vooraf','vooraf'),('03','achteraf','achteraf');
/*!40000 ALTER TABLE `RF_RenteBedenktijdType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RenteBepalingType`
--

DROP TABLE IF EXISTS `RF_RenteBepalingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RenteBepalingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RenteBepalingType`
--

LOCK TABLES `RF_RenteBepalingType` WRITE;
/*!40000 ALTER TABLE `RF_RenteBepalingType` DISABLE KEYS */;
INSERT INTO `RF_RenteBepalingType` VALUES ('01','Dagrente','Dagrente'),('02','Rentebedenktijd','Rentebedenktijd'),('03','RenteSelect','RenteSelect'),('04','Middelrente','Middelrente'),('05','Loonvast','Loonvast');
/*!40000 ALTER TABLE `RF_RenteBepalingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_RisicoFactorType`
--

DROP TABLE IF EXISTS `RF_RisicoFactorType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_RisicoFactorType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_RisicoFactorType`
--

LOCK TABLES `RF_RisicoFactorType` WRITE;
/*!40000 ALTER TABLE `RF_RisicoFactorType` DISABLE KEYS */;
INSERT INTO `RF_RisicoFactorType` VALUES ('H','Hoog',NULL),('L','laag',NULL),('M','Midden',NULL);
/*!40000 ALTER TABLE `RF_RisicoFactorType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortAdresType`
--

DROP TABLE IF EXISTS `RF_SoortAdresType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortAdresType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortAdresType`
--

LOCK TABLES `RF_SoortAdresType` WRITE;
/*!40000 ALTER TABLE `RF_SoortAdresType` DISABLE KEYS */;
INSERT INTO `RF_SoortAdresType` VALUES ('01','Vestigingsadres',NULL),('02','Bezoekadres',NULL),('03','Correspondentieadres',NULL);
/*!40000 ALTER TABLE `RF_SoortAdresType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortBedrijfsnaamType`
--

DROP TABLE IF EXISTS `RF_SoortBedrijfsnaamType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortBedrijfsnaamType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortBedrijfsnaamType`
--

LOCK TABLES `RF_SoortBedrijfsnaamType` WRITE;
/*!40000 ALTER TABLE `RF_SoortBedrijfsnaamType` DISABLE KEYS */;
INSERT INTO `RF_SoortBedrijfsnaamType` VALUES ('01','Huidige bedrijfsnaam',NULL),('02','Voormalige bedrijfsnaam',NULL),('03','Huidige statutaire naam',NULL),('04','Voormalige statutaire naam',NULL);
/*!40000 ALTER TABLE `RF_SoortBedrijfsnaamType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortBerichtType`
--

DROP TABLE IF EXISTS `RF_SoortBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortBerichtType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortBerichtType`
--

LOCK TABLES `RF_SoortBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_SoortBerichtType` DISABLE KEYS */;
INSERT INTO `RF_SoortBerichtType` VALUES ('01','Document (DX) en ExterneBron (EX)','Beide berichten moeten worden aangeleverd. Zie voor verdere omschrijving 02 en 03.'),('02 ',' ExterneBron (EX)','Een ExterneBronBericht is een EX bericht. Dit EX  bericht bevat data in de vorm van een base64 gecodeerd XML bericht.'),('03','Document (DX)','Een DocumentBericht is een DX bericht. Dit DX bericht bevat een base64 gecodeerde PDF.');
/*!40000 ALTER TABLE `RF_SoortBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortBezittingenBoxDrieType`
--

DROP TABLE IF EXISTS `RF_SoortBezittingenBoxDrieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortBezittingenBoxDrieType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortBezittingenBoxDrieType`
--

LOCK TABLES `RF_SoortBezittingenBoxDrieType` WRITE;
/*!40000 ALTER TABLE `RF_SoortBezittingenBoxDrieType` DISABLE KEYS */;
INSERT INTO `RF_SoortBezittingenBoxDrieType` VALUES ('01','banktegoeden',NULL),('02','girotegoeden','girotegoeden'),('03','spaartegoeden','spaartegoeden'),('04','aandelen','aandelen'),('05','obligaties','obligaties'),('06','contant geld','contant geld'),('07','onroerend goed','onroerend goed'),('99','overige bezittingen','overige bezittingen');
/*!40000 ALTER TABLE `RF_SoortBezittingenBoxDrieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortDienstbetrekkingType`
--

DROP TABLE IF EXISTS `RF_SoortDienstbetrekkingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortDienstbetrekkingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortDienstbetrekkingType`
--

LOCK TABLES `RF_SoortDienstbetrekkingType` WRITE;
/*!40000 ALTER TABLE `RF_SoortDienstbetrekkingType` DISABLE KEYS */;
INSERT INTO `RF_SoortDienstbetrekkingType` VALUES ('01','loondienst fulltime vast','loondienst fulltime vast'),('02','loondienst fulltime tijdelijk plus intentieverklaring','loondienst fulltime tijdelijk plus intentieverklaring'),('03','loondienst parttime vast','loondienst parttime vast'),('04','loondienst parttime tijdelijk plus intentieverklaring','loondienst parttime tijdelijk plus intentieverklaring'),('05','loondienst fulltime tijdelijk zonder intentieverklaring','loondienst fulltime tijdelijk zonder intentieverklaring'),('06','loondienst parttime tijdelijk zonder intentieverklaring','loondienst parttime tijdelijk zonder intentieverklaring'),('07','seizoensarbeider','seizoensarbeider');
/*!40000 ALTER TABLE `RF_SoortDienstbetrekkingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortDocumentType`
--

DROP TABLE IF EXISTS `RF_SoortDocumentType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortDocumentType` (
  `Code` varchar(3) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortDocumentType`
--

LOCK TABLES `RF_SoortDocumentType` WRITE;
/*!40000 ALTER TABLE `RF_SoortDocumentType` DISABLE KEYS */;
INSERT INTO `RF_SoortDocumentType` VALUES ('001','Kopie koopcontract','Kopie koopcontract'),('002','Kopie koop- en aanneemovereenkomst','Kopie koop- en aanneemovereenkomst'),('003','Taxatierapport van de woning','Taxatierapport van de woning'),('004','Kopie taxatierapport huidige woning','Kopie taxatierapport huidige woning'),('005','Verklaring makelaar over opbrengst','Verklaring makelaar over opbrengst'),('006','Kopie eigendomsbewijs huidige woning','Kopie eigendomsbewijs huidige woning'),('007','Verkoopcontract huidige woning(en)','Verkoopcontract huidige woning(en)'),('008','Saldobiljet schuldrest woning(en)','Saldobiljet schuldrest woning(en)'),('009','Werkgeversverklaring(en)','Werkgeversverklaring(en)'),('010','Kopie aanstellingsbrief (ven)','Kopie aanstellingsbrief (ven)'),('011','Laatste loonafrekening','Laatste loonafrekening'),('012','Jaaroverzicht(en) salaris','Jaaroverzicht(en) salaris'),('013','IB verklaringen','IB verklaringen'),('014','Aanslag(en) IB laatste 3 jaar','Aanslag(en) IB laatste 3 jaar'),('015','Jaarstukken laatste 3 jaar','Jaarstukken laatste 3 jaar'),('016','Bewijsstukken uitkering','Bewijsstukken uitkering'),('017','Aflossing- en opheffingsbewijs krediet','Aflossing- en opheffingsbewijs krediet'),('018','Saldobiljet van doorlopend krediet','Saldobiljet van doorlopend krediet'),('019','Vonnis (echtscheiding) van rechtbank','Vonnis (echtscheiding) van rechtbank'),('020','Echtscheidingsconvenant','Echtscheidingsconvenant'),('021','Register huwelijk en echtscheiding','Register huwelijk en echtscheiding'),('022','Laatste toekenning rijksbijdrage','Laatste toekenning rijksbijdrage'),('023','Gezondheidsverklaring','Gezondheidsverklaring'),('024','Kopie identiteitsbewijs','Kopie identiteitsbewijs'),('025','Bouwkundig rapport','Bouwkundig rapport'),('026','Akte van huwelijkse voorwaarden','Akte van huwelijkse voorwaarden'),('027','Overeenkomst tot beeindiging geregistreerd partnerschap','Overeenkomst tot beeindiging geregistreerd partnerschap'),('028','Conceptakte van verdeling','Conceptakte van verdeling'),('029','Bewijsstukken pensioen','Bewijsstukken pensioen'),('030','Intentieverklaring werkgever vast dienstverband','Intentieverklaring werkgever vast dienstverband'),('031','Verklaring werkgever inkomensverhoging','Verklaring werkgever inkomensverhoging'),('032','Inkomstenoverzicht provisie/overwerk laatste 2 jaar','Inkomstenoverzicht provisie/overwerk laatste 2 jaar'),('033','Verklaring van erfrecht','Verklaring van erfrecht'),('034','Bewijsstukken erfpacht','Bewijsstukken erfpacht'),('035','Kopie hypotheekaktes huidige woning','Kopie hypotheekaktes huidige woning'),('036','Huurovereenkomst cq ontruimingsverklaring','Huurovereenkomst cq ontruimingsverklaring'),('037','Originele verzekeringspolissen','Originele verzekeringspolissen'),('038','Bewijsstukken beleggings-rekeningen','Bewijsstukken beleggings-rekeningen'),('039','Aktes van verpanding','Aktes van verpanding'),('040','Aanvraagformulieren verzekeringspolissen','Aanvraagformulieren verzekeringspolissen'),('041','Bewijsstukken meerwerk (nieuwbouw) of kwaliteitsverbetering','Bewijsstukken meerwerk (nieuwbouw) of kwaliteitsverbetering'),('042','Acceptatiebevestigingen verzekeringspolissen','Acceptatiebevestigingen verzekeringspolissen'),('043','Afkoopformulieren verzekeringspolissen','Afkoopformulieren verzekeringspolissen'),('044','Offerte bankgarantie','Offerte bankgarantie'),('045','Onderhandse akte','Onderhandse akte'),('046','Opgave gewenste notaris','Opgave gewenste notaris'),('047','Laatste OZB-aanslag','Laatste OZB-aanslag'),('048','Opdracht opheffen krediet','Opdracht opheffen krediet'),('049','Inkomensverklaring','Inkomensverklaring'),('050','Positieve-negatieve hypotheekverklaring','Positieve-negatieve hypotheekverklaring'),('051','Afschrift(en) privé-rekening','Afschrift(en) privé-rekening'),('052','Register partnerschap','Register partnerschap'),('053','Kostenbegroting','Kostenbegroting'),('054','Getekend adviesrapport','Getekend adviesrapport'),('055','Verklaring VVE servicekosten','Verklaring VVE servicekosten'),('056','Inkomstenoverzicht seizoenswerk','Inkomstenoverzicht seizoenswerk'),('057','Veilingakte','Veilingakte'),('058','Bewijsstukken bouw','Bewijsstukken bouw'),('059','Leaseovereenkomst','Leaseovereenkomst'),('060','Bouwvergunning','Bouwvergunning'),('061','Verklaring maatwerkoplossing','Verklaring maatwerkoplossing'),('062','Omzettingsakte huwelijk naar geregistreerd partnerschap','Omzettingsakte huwelijk naar geregistreerd partnerschap'),('063','Verklaring aanwending hypothecaire geldlening','Verklaring aanwending hypothecaire geldlening'),('064','Overeenkomst storting onderhoudsfonds','Overeenkomst storting onderhoudsfonds'),('065','Overeenkomst financiele verplichting','Overeenkomst financiele verplichting'),('066','Stortingsbewijs eerste inleg verzekeringspolis','Stortingsbewijs eerste inleg verzekeringspolis'),('067','Bewijsstukken vrij besteedbaar vermogen','Bewijsstukken vrij besteedbaar vermogen'),('068','Getekende offerte (afkomst notaris)','Getekende offerte (afkomst notaris)'),('069','Hypotheek akte','Hypotheek akte'),('070','Offerte te verpanden levensverzekering','Offerte te verpanden levensverzekering'),('071','Kopie hypotheek akte elders','Kopie hypotheek akte elders'),('072','Getekende origineel offerte','Getekende origineel offerte'),('073','Getekend origineel aanvraagformulier','Getekend origineel aanvraagformulier'),('074','Verblijfsvergunning','Verblijfsvergunning'),('075','Aanvullend aanvraag-/wijzigingsformulier levensverzekering','Aanvullend aanvraag-/wijzigingsformulier levensverzekering'),('076','Wijzigingsformulier beleggingsfondsen','Wijzigingsformulier beleggingsfondsen'),('077','Prognose jaarcijfers','Prognose jaarcijfers'),('078','Uittreksel inschrijving KvK','Uittreksel inschrijving KvK'),('079','(kopie) firma-/vennootschaps-/maatschapsovereenkomst','(kopie) firma-/vennootschaps-/maatschapsovereenkomst'),('080','Verklaring verstrijken proeftijd (ingevuld door werkgever)','Verklaring verstrijken proeftijd (ingevuld door werkgever)'),('081','Curriculum Vitae','Curriculum Vitae'),('082','VAR verklaring','VAR verklaring'),('083','Bewijs hypotheeklasten verhuurd pand','Bewijs hypotheeklasten verhuurd pand'),('084','Toedelingsakte (scheiding en deling)','Toedelingsakte (scheiding en deling)'),('085','(concept) notariële akte','(concept) notariële akte'),('086','Beëindiging convenant geregistreerd partnerschap','Beëindiging convenant geregistreerd partnerschap'),('087','Beëindiging vonnis','Beëindiging vonnis'),('088','Onherroepelijke volmacht','Onherroepelijke volmacht'),('089','Bewijs van inschrijving beëindiging partnerschap','Bewijs van inschrijving beëindiging partnerschap'),('090','Inkomensverklaring adviseur geverifieerd','Inkomensverklaring adviseur geverifieerd'),('091','Foto\'s onderpand','Foto\'s onderpand'),('092','Opstalvoorwaarden','Opstalvoorwaarden'),('093','Statuten rechtspersonen','Statuten rechtspersonen'),('094','Registratie gegevens taxateur','Registratie gegevens taxateur'),('095','Woon/bedrijfstaxatierapport (inclusief verbouwing)','Woon/bedrijfstaxatierapport (inclusief verbouwing)'),('096','Waardeverklaring t.b.v. overbrugging','Waardeverklaring t.b.v. overbrugging'),('097','Woon/bedrijfstaxatierapport','Woon/bedrijfstaxatierapport'),('098','Taxatierapport (inclusief verbouwing)','Taxatierapport (inclusief verbouwing)'),('100','Verklaring vrij van huur','Verklaring vrij van huur'),('101','Grond onderzoeksrapport','Grond onderzoeksrapport'),('102','Schone grond verklaring','Schone grond verklaring'),('103','(concept) Splitsingsakte','(concept) Splitsingsakte'),('104','Toestemming tot verhuur','Toestemming tot verhuur'),('105','Akte van levering','Akte van levering'),('106','Bestemmingsvergunning','Bestemmingsvergunning'),('107','Kadastraal uittreksel','Kadastraal uittreksel'),('108','Koopakte grond','Koopakte grond'),('109','Taxatierapport nieuwbouw','Taxatierapport nieuwbouw'),('110','(kopie) Bestek en tekeningen','(kopie) Bestek en tekeningen'),('111','Arbeid/materiaal kostenspecificatie','Arbeid/materiaal kostenspecificatie'),('112','Bouwtermijnschema opgesteld door taxateur','Bouwtermijnschema opgesteld door taxateur'),('113','Taxatie grondkavel','Taxatie grondkavel'),('114','(kopie) Beschikking overdraagbare subsidie','(kopie) Beschikking overdraagbare subsidie'),('115','Groenverklaring','Groenverklaring'),('116','Ondertekende afwijkende voorwaarden brief','Ondertekende afwijkende voorwaarden brief'),('117','Taxatie/waardeverklaring t.b.v. overbrugging','Taxatie/waardeverklaring t.b.v. overbrugging'),('118','Opgave buitenlands adres','Opgave buitenlands adres'),('119','Afstandsverklaring ex-partner/echtgenoot','Afstandsverklaring ex-partner/echtgenoot'),('120','Afstandsverklaring doorgeefhypotheek','Afstandsverklaring doorgeefhypotheek'),('121','Verklaring familie-arrangement','Verklaring familie-arrangement'),('122','Achterstandsmelding geldnemer','Achterstandsmelding geldnemer'),('123','Achterstandsmelding geldverstrekker','Achterstandsmelding geldverstrekker'),('124','(recent) Betalingsbewijs huidige lasten','(recent) Betalingsbewijs huidige lasten'),('125','Giro-/Bankafschrift genoemd in offerte','Giro-/Bankafschrift genoemd in offerte'),('126','Bewijs verlaging maandlast','Bewijs verlaging maandlast'),('127','(Kopie) Polis Woonlastenverzekering','(Kopie) Polis Woonlastenverzekering'),('128','Saldobiljet van aflopend krediet','Saldobiljet van aflopend krediet'),('129','Gedeeltelijke aflossing aflopend krediet','Gedeeltelijke aflossing aflopend krediet'),('130','Gedeeltelijke aflossing doorloop krediet','Gedeeltelijke aflossing doorloop krediet'),('131','Overzicht NBB toetsing','Overzicht NBB toetsing'),('132','Overzicht CRIF toetsing','Overzicht CRIF toetsing'),('133','Overzicht Schufa toetsing','Overzicht Schufa toetsing'),('134','Toestemming gemeente','Toestemming gemeente'),('135','NHG-akkoord','NHG-akkoord'),('136','(Af)koopakte erfpacht','(Af)koopakte erfpacht'),('137','Hypotheek dossier conform NHG norm','Hypotheek dossier conform NHG norm'),('138','Verklaring ingelopen achterstand','Verklaring ingelopen achterstand'),('139','Akkoordverklaring NHG (MVE/MGE)','Akkoordverklaring NHG (MVE/MGE)'),('140','Aanvraagformulier Koopsubsidie','Aanvraagformulier Koopsubsidie'),('141','Subsidiebesluit Koopsubsidie','Subsidiebesluit Koopsubsidie'),('142','Toewijzigingsbrief Starterslening','Toewijzigingsbrief Starterslening'),('143','Schriftelijke opgave burgerservicenummer','Schriftelijke opgave burgerservicenummer'),('144','Kredietafmelding BKR','Kredietafmelding BKR'),('145','Schriftelijke opgave boete berekening','Schriftelijke opgave boete berekening'),('146','Gezondheidsverklaring verzekerde(n)','Gezondheidsverklaring verzekerde(n)'),('147','Waardebepaling huidige woning','Waardebepaling huidige woning'),('148','WOZ-aanslag','WOZ-aanslag'),('149','Akte hoofdelijke gebondenheid','Akte hoofdelijke gebondenheid'),('150','Schuldbekentenis bij offerte','Schuldbekentenis bij offerte'),('151','Machtigingsformulier incasso','Machtigingsformulier incasso'),('152','(kopie) Offerte levensverzekering','(kopie) Offerte levensverzekering'),('153','Afstandsverklaring','Afstandsverklaring'),('154','Schriftelijke opgave geplande passeerdatum','Schriftelijke opgave geplande passeerdatum'),('155','EUR-250 formulier','EUR-250 formulier'),('156','Bewijs voortzetting polis','Bewijs voortzetting polis'),('157','Bewijs voortzetting beleggersrekening','Bewijs voortzetting beleggersrekening'),('158','Bewijsstukken overbedeling','Bewijsstukken overbedeling'),('159','Verklaring medisch akkoord','Verklaring medisch akkoord'),('160','Tabel afkoopwaarde levenpolis','Tabel afkoopwaarde levenpolis'),('161','Kopie lopende levenpolis','Kopie lopende levenpolis'),('162','Kopie lopende overlijdensrisicoverzekering','Kopie lopende overlijdensrisicoverzekering'),('163','Kopieën verplichte vergunningen','Kopieën verplichte vergunningen'),('164','Gedeeltelijke aflossing verzendhuis krediet','Gedeeltelijke aflossing verzendhuis krediet'),('165','Kadastraal uittreksel onderpand','Kadastraal uittreksel onderpand'),('166','Hypothecair uittreksel onderpand ouder(s)','Hypothecair uittreksel onderpand ouder(s)'),('167','Akte van ontslag (hoofdelijk) schuldenaarschap','Akte van ontslag (hoofdelijk) schuldenaarschap'),('168','Schriftelijk akkoord vervallen NHG','Schriftelijk akkoord vervallen NHG'),('169','Aanvullend taxatierapport (na verbouwing/verbetering)','Aanvullend taxatierapport (na verbouwing/verbetering)'),('170','Kopie factuur taxatie','Kopie factuur taxatie'),('171','Bewijs inschrijving van beëindiging geregistreerd partnerschap','Bewijs inschrijving van beëindiging geregistreerd partnerschap'),('172','Opgave boeterente','Opgave boeterente'),('173','(Kopie) lopende polis met opgave premieverloop','(Kopie) lopende polis met opgave premieverloop'),('174','Opgave onregelmatigheid toeslag','Opgave onregelmatigheid toeslag'),('175','Schriftelijke opgave polisnummer','Schriftelijke opgave polisnummer'),('176','Sloopvergunning','Sloopvergunning'),('177','Offerte starterslening SVn','Offerte starterslening SVn'),('178','Taxatieopdracht','Taxatieopdracht'),('179','Opgave van draagkracht','Opgave van draagkracht'),('180','Verkoopakte overbruggingsonderpand','Verkoopakte overbruggingsonderpand'),('181','Acceptabele nieuwbouwgarantie','Acceptabele nieuwbouwgarantie'),('182','Verklaring aflossing fiscale lening','Verklaring aflossing fiscale lening'),('183','Vestigingsbewijs','Vestigingsbewijs'),('184','Bewijs van inschrijving UWV','Bewijs van inschrijving UWV'),('185','Afstands- en ontruimingsverklaring','Afstands- en ontruimingsverklaring'),('186','Waardeverklaring/verkoopakte','Waardeverklaring/verkoopakte'),('187','Taxatieopdracht nieuwbouw','Taxatieopdracht nieuwbouw'),('188','Toestemming van verhuur','Toestemming van verhuur'),('189','Verklaring niet verhuren','Verklaring niet verhuren'),('190','Privé-vermogenopstelling','Privé-vermogenopstelling'),('191','SVB-verklaring','SVB-verklaring'),('192','Kredietinfo/woonvergunning','Kredietinfo/woonvergunning'),('193','(concept) Afrekening notaris','(concept) Afrekening notaris'),('194','Bewijs adresverificatie','Bewijs adresverificatie'),('195','Specificatie energiebesparende voorzieningen','Specificatie energiebesparende voorzieningen'),('196','Polis insolventieverzekering aannemer','Polis insolventieverzekering aannemer'),('197','Arbeidsovereenkomst','Arbeidsovereenkomst'),('198','Financieringsopzet','Financieringsopzet'),('199','Vreemdelingendocument','Vreemdelingendocument'),('200','Keuringsrapport verzekering','Keuringsrapport verzekering'),('201','Accountantsverklaring','Accountantsverklaring'),('202','Accountantsrapport','Accountantsrapport'),('203','Specificatie verbouwingskosten','Specificatie verbouwingskosten'),('204','Vennootschapsovereenkomst','Vennootschapsovereenkomst'),('205','Maatschapsovereenkomst','Maatschapsovereenkomst'),('206','Handtekeningenformulier','Handtekeningenformulier'),('207','Bewijs opschortende voorwaarden','Bewijs opschortende voorwaarden'),('208','Uitdraai BKR','Uitdraai BKR'),('209','Uitdraai SFH','Uitdraai SFH'),('210','Verklaring van de geldgever','Verklaring van de geldgever'),('211','Opgave geprognotisceerd eindkapitaal','Opgave geprognotisceerd eindkapitaal'),('212','Uitkomst NHG-hertoets','Uitkomst NHG-hertoets'),('213','Wijzigingsovereenkomst of leningovereenkomst','Wijzigingsovereenkomst of leningovereenkomst'),('214','Nota\'s kwaliteitsverbetering, nieuwbouw e/o energie besparende voorzieningen','Nota\'s kwaliteitsverbetering, nieuwbouw e/o energie besparende voorzieningen'),('215','Verkoopopdracht','Verkoopopdracht'),('216','Vergunning gemeente conform Leegstandswet','Vergunning gemeente conform Leegstandswet'),('217','Verpandingsakte huurpenningen','Verpandingsakte huurpenningen'),('218','Akte gedeeltelijk royement','Akte gedeeltelijk royement'),('219','Uitkomsten overleg geldgever en geldnemer','Uitkomsten overleg geldgever en geldnemer'),('220','Correspondentie geldgever en geldnemer','Correspondentie geldgever en geldnemer'),('221','Correspondentie geldgever, geldnemer en stichting','Correspondentie geldgever, geldnemer en stichting'),('222','Begeleidend schrijven uitbetaling verlies','Begeleidend schrijven uitbetaling verlies'),('223','Overzicht daadwerkelijke gedane betalingen','Overzicht daadwerkelijke gedane betalingen'),('224','Verklaring daadwerkelijke (afkoop)waarde verpande dekkingen','Verklaring daadwerkelijke (afkoop)waarde verpande dekkingen'),('225','Akte van inzet en afslag (veiling)','Akte van inzet en afslag (veiling)'),('226','Verliesdeclaratieformulier','Verliesdeclaratieformulier'),('227','Nota\'s gedeclareerde bijkomende kosten','Nota\'s gedeclareerde bijkomende kosten'),('228','Toekenningsbesluit of aanvraag werkloosheids- of arbeidsongeschiktheidsuitkering','Toekenningsbesluit of aanvraag werkloosheids- of arbeidsongeschiktheidsuitkering'),('229','Overlijdensakte','Overlijdensakte'),('230','Uitkomst toets Woonlastenfaciliteit','Uitkomst toets Woonlastenfaciliteit'),('231','Goedkeuring Stichting overige verliesbeperkende kosten','Goedkeuring Stichting overige verliesbeperkende kosten'),('232','Melding algehele aflossing lening','Melding algehele aflossing lening'),('233','Aangifte(n) IB','Aangifte(n) IB'),('234','Schenkingsovereenkomst','Schenkingsovereenkomst'),('235','Voorwaarden koopconstructie','Voorwaarden koopconstructie'),('236','Opgave contractnummer','Opgave contractnummer'),('237','Waardeoverzicht','Waardeoverzicht'),('238','Omzettingsformulier(en)','Omzettingsformulier(en)'),('239','Opgave betaalrekeningnummer','Opgave betaalrekeningnummer'),('240','Niet rokersverklaring','Niet rokersverklaring'),('241','Aanvraagformulier(en) bankspaarrekening(en)','Aanvraagformulier(en) bankspaarrekening(en)'),('242','Bewijsstuk(ken) bankspaarrekening(en)','Bewijsstuk(ken) bankspaarrekening(en)'),('243','Aanvraagformulier(en) beleggingsrekening(en)','Aanvraagformulier(en) beleggingsrekening(en)'),('244','Overzicht (fiscale) lening in beheer','Overzicht (fiscale) lening in beheer'),('245','Proforma aflossingsnota','Proforma aflossingsnota'),('246','Beleggingsprofiel','Beleggingsprofiel'),('247','Bouwdepot','Kan worden ingezet voor alle documenten rondom bouwdepot; dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('248','Door aanvrager(s) getekend voorstel','Kan worden ingezet voor andere getekende voorstellen dan de (072) Getekende offerte. Bijv. verlengingsvoorstel. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('249','Energielabel','Dient voor aanleveren energielabel van het onderpand.'),('250','Finale kwijting','Kan worden ingezet voor alle documenten m.b.t. Finale kwijting. Bijv. Finale kwijting BKR of NHG. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('251','Informatieformulier','Kan worden ingezet voor informatiebladen en invulformulieren. Bijv. ESIC (Europese StandaardInformatie Consumptief Krediet) of NIBUD formulier. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('252','Intern document','Kan worden ingezet bij documenten die binnen de eigen organisatie worden opgevraagd. Bijv. akkoord veiligheidszaken of documenten inzake voorlegposten.'),('253','Kadaster','Kan worden ingezet voor alle documenten aangaande het Kadaster.'),('254','Kamer van Koophandel','Kan worden ingezet voor alle Kamer van Koophandel documenten. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('255','Krediettoets','Kan worden ingezet voor alle krediettoetsen die niet binnen de reeds te kiezen documenten te plaatsen zijn (131 Overzicht NBB toetsing - 132 Overzicht CRIF toetsing - 133 Overzicht Schufa toetsing - 144 afmelding BKR - 208 uitdraai BKR) Bijv. Overzicht KSV toetsing. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('256','Uittreksel Basisregistratie Personen','Dienst voor het uittreksel Basisregistratie Personen van de aanvrager(s).'),('257','Studielening','Kan worden ingezet voor alle documenten die opgevraagd worden m.b.t. bijv. een DUO-lening. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('258',' ','Kan worden ingezet voor alle documenten rondom bankgaranties. Dient binnen SoortDocumentOmschr te worden gespecificeerd.'),('259','Getekend indicatief voorstel','Door aanvrager(s) geaccordeerd indicatief voorstel, voorafgaande aan de offerte zonder voorbehouden.'),('260','UWV SV-Loon document','(Gewaarmerkt) document van UWV met inkomensinformatie (o.a. SV Loon).'),('400','Aanvullende verklaring werkgever',NULL),('401','Aanvullende verklaring aanvrager(s)',NULL),('402','Aanvullende verklaring makelaar',NULL),('403','Aanvullende verklaring onderpand',NULL),('404','Aanvullende verklaring intermediair',NULL),('405','Aanvullende verklaring vermogen',NULL),('406','Aanvullende verklaring verplichtingen',NULL),('500','Aanvrager','Alle documenten die betrekking hebben op een aanvrager, die niet te plaatsen zijn binnen de reeds te kiezen documenten en niet onder de overige generieke documenten te plaatsen zijn.'),('501','Financiële verplichtingen','Alle documenten die betrekking hebben op financiele verplichtingen, die niet te plaatsen zijn binnen de reeds te kiezen documenten.'),('502','Fiscaal','Alle documenten die betrekking hebben op documenten die informatie geven over de fiscaliteit m.b.t. het hypotheekdossier.'),('503','Huidige hypotheek','Alle documenten die betrekking hebben op de huidige hypotheek, die niet te plaatsen zijn binnen de reeds te kiezen documenten'),('504','Huidige woning','Alle documenten die betrekking hebben op de huidige woning, die niet te plaatsen zijn binnen de reeds te kiezen documenten.'),('505','Inkomen en Vermogen','Alle documenten die betrekking hebben op het inkomen en of vermogen van een aanvrager, die niet te plaatsen zijn binnen de reeds te kiezen documenten.'),('506','Intermediair','Alle documenten die betrekking hebben op het intermediair, die niet te plaatsen zijn binnen de reeds te kiezen documenten.'),('507','Onderpand','Alle documenten die betrekking hebben op het pand waar de hypotheek op gevestigd wordt, die niet te plaatsen zijn binnen de reeds te kiezen documenten en niet onder de andere generieke documenten te plaatsen is.'),('508','Zekerheidsstelling','Alle documenten die betrekking hebben op zekerhedenten aanzien van de hypotheek, die niet te plaatsen zijn binnen de reeds te kiezen documenten.');
/*!40000 ALTER TABLE `RF_SoortDocumentType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortKredietAfspraakType`
--

DROP TABLE IF EXISTS `RF_SoortKredietAfspraakType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortKredietAfspraakType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortKredietAfspraakType`
--

LOCK TABLES `RF_SoortKredietAfspraakType` WRITE;
/*!40000 ALTER TABLE `RF_SoortKredietAfspraakType` DISABLE KEYS */;
INSERT INTO `RF_SoortKredietAfspraakType` VALUES ('01','Betaalafspraak','Betaalafspraak'),('02','Opnameafspraak','Opnameafspraak');
/*!40000 ALTER TABLE `RF_SoortKredietAfspraakType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortOndernemingType`
--

DROP TABLE IF EXISTS `RF_SoortOndernemingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortOndernemingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortOndernemingType`
--

LOCK TABLES `RF_SoortOndernemingType` WRITE;
/*!40000 ALTER TABLE `RF_SoortOndernemingType` DISABLE KEYS */;
INSERT INTO `RF_SoortOndernemingType` VALUES ('01','Zelfstandige Zonder Personeel (ZZP)','Zelfstandige Zonder Personeel (ZZP)'),('03','Zelfstandige met personeel','Zelfstandige met personeel'),('05','Freelance','Freelance');
/*!40000 ALTER TABLE `RF_SoortOndernemingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortOntbondenType`
--

DROP TABLE IF EXISTS `RF_SoortOntbondenType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortOntbondenType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortOntbondenType`
--

LOCK TABLES `RF_SoortOntbondenType` WRITE;
/*!40000 ALTER TABLE `RF_SoortOntbondenType` DISABLE KEYS */;
INSERT INTO `RF_SoortOntbondenType` VALUES ('01','Huwelijk','Huwelijk'),('02','Geregistreerd partnerschap','Geregistreerd partnerschap'),('03','Beide','Beide');
/*!40000 ALTER TABLE `RF_SoortOntbondenType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortOrigineelType`
--

DROP TABLE IF EXISTS `RF_SoortOrigineelType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortOrigineelType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortOrigineelType`
--

LOCK TABLES `RF_SoortOrigineelType` WRITE;
/*!40000 ALTER TABLE `RF_SoortOrigineelType` DISABLE KEYS */;
INSERT INTO `RF_SoortOrigineelType` VALUES ('01','Orgineel document per post','Orgineel document per post'),('02','Orgineel document digitaal','Orgineel document digitaal'),('03','Orgineel blijft bij indiener beschikbaar','Orgineel blijft bij indiener beschikbaar'),('04','Kopie document per post','Kopie document per post'),('05','Kopie document digitaal','Kopie document digitaal'),('06','Kopie blijft bij indiener beschikbaar','Kopie blijft bij indiener beschikbaar'),('07','Aanlevering via externe bron','Aanlevering via externe bron');
/*!40000 ALTER TABLE `RF_SoortOrigineelType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortOverigeInkomstenType`
--

DROP TABLE IF EXISTS `RF_SoortOverigeInkomstenType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortOverigeInkomstenType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortOverigeInkomstenType`
--

LOCK TABLES `RF_SoortOverigeInkomstenType` WRITE;
/*!40000 ALTER TABLE `RF_SoortOverigeInkomstenType` DISABLE KEYS */;
INSERT INTO `RF_SoortOverigeInkomstenType` VALUES ('01','Alimentatie','Alimentatie'),('02','Schenking','Schenking'),('03','BoxTwee',NULL),('99','Anders','Anders');
/*!40000 ALTER TABLE `RF_SoortOverigeInkomstenType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortPartijType`
--

DROP TABLE IF EXISTS `RF_SoortPartijType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortPartijType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortPartijType`
--

LOCK TABLES `RF_SoortPartijType` WRITE;
/*!40000 ALTER TABLE `RF_SoortPartijType` DISABLE KEYS */;
INSERT INTO `RF_SoortPartijType` VALUES ('01','natuurlijk persoon','natuurlijk persoon'),('02','rechtspersoon','rechtspersoon');
/*!40000 ALTER TABLE `RF_SoortPartijType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortProductType`
--

DROP TABLE IF EXISTS `RF_SoortProductType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortProductType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortProductType`
--

LOCK TABLES `RF_SoortProductType` WRITE;
/*!40000 ALTER TABLE `RF_SoortProductType` DISABLE KEYS */;
INSERT INTO `RF_SoortProductType` VALUES ('01','Hypothecair Bericht Object',NULL),('02','Kadastraal Bericht Object',NULL),('03','Kadastraal Bericht Persoon',NULL),('04','Modelmatige Waardebepaling',NULL),('05','KvK Search',NULL),('06',' KvK Profile',NULL),('07','BKR Status Toets',NULL),('08','TaxCon Taxatierapport',NULL),('09','KvK Uittreksel',NULL),('10','Calcasa Waardebepaling Rapport',NULL),('11','Calcasa Waardebepaling Zonder PDF',NULL),('12','Calcasa Risicorapport',NULL),('13','Calcasa Hypotheekverstrekking',NULL),('14','Calcasa Toetsing Hypotheekverstrekking',NULL),('15','Calcasa Bijzonder Beheer Rapport',NULL),('16','NHG Volledigheidstoets',NULL),('17','KNB Notaristabel','Notaristabel');
/*!40000 ALTER TABLE `RF_SoortProductType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortUitkeringType`
--

DROP TABLE IF EXISTS `RF_SoortUitkeringType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortUitkeringType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortUitkeringType`
--

LOCK TABLES `RF_SoortUitkeringType` WRITE;
/*!40000 ALTER TABLE `RF_SoortUitkeringType` DISABLE KEYS */;
INSERT INTO `RF_SoortUitkeringType` VALUES ('01','WIA','WIA'),('02','Bijstand','Bijstand'),('03','WW','WW'),('04','Wachtgeld','Wachtgeld'),('05','RWW','RWW'),('06','ANW','ANW'),('07','Verzekering','Verzekering'),('08','Wajong','Wajong'),('09','AOW','AOW');
/*!40000 ALTER TABLE `RF_SoortUitkeringType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortVermogenType`
--

DROP TABLE IF EXISTS `RF_SoortVermogenType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortVermogenType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortVermogenType`
--

LOCK TABLES `RF_SoortVermogenType` WRITE;
/*!40000 ALTER TABLE `RF_SoortVermogenType` DISABLE KEYS */;
INSERT INTO `RF_SoortVermogenType` VALUES ('01','Sparen en Beleggen',NULL),('02','Inkomsten uit verhuur',NULL),('03','Anders',NULL);
/*!40000 ALTER TABLE `RF_SoortVermogenType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortVerzekerdKapType`
--

DROP TABLE IF EXISTS `RF_SoortVerzekerdKapType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortVerzekerdKapType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortVerzekerdKapType`
--

LOCK TABLES `RF_SoortVerzekerdKapType` WRITE;
/*!40000 ALTER TABLE `RF_SoortVerzekerdKapType` DISABLE KEYS */;
INSERT INTO `RF_SoortVerzekerdKapType` VALUES ('01','Verzekerd bedrag bij overlijden','Verzekerd bedrag bij overlijden'),('02','Bedrag bij leven/expiratie/prognosekapitaal','Bedrag bij leven/expiratie/prognosekapitaal'),('03','Verzekerd percentage bij overlijden','Verzekerd percentage bij overlijden'),('04','Som van de premies','Som van de premies'),('05','Contractwaarde','Contractwaarde');
/*!40000 ALTER TABLE `RF_SoortVerzekerdKapType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortVerzekeringType`
--

DROP TABLE IF EXISTS `RF_SoortVerzekeringType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortVerzekeringType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortVerzekeringType`
--

LOCK TABLES `RF_SoortVerzekeringType` WRITE;
/*!40000 ALTER TABLE `RF_SoortVerzekeringType` DISABLE KEYS */;
INSERT INTO `RF_SoortVerzekeringType` VALUES ('01','Lijfrente verzekering','Lijfrente verzekering'),('02','AO verzekering','AO verzekering'),('03','Woonlasten verzekering','Woonlasten verzekering');
/*!40000 ALTER TABLE `RF_SoortVerzekeringType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SoortWaardeType`
--

DROP TABLE IF EXISTS `RF_SoortWaardeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SoortWaardeType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SoortWaardeType`
--

LOCK TABLES `RF_SoortWaardeType` WRITE;
/*!40000 ALTER TABLE `RF_SoortWaardeType` DISABLE KEYS */;
INSERT INTO `RF_SoortWaardeType` VALUES ('01','Waarde op einddatum','Waarde op einddatum'),('02','Waarde bij aanvang','Waarde bij aanvang'),('03','Contractwaarde op peildatum','Contractwaarde op peildatum');
/*!40000 ALTER TABLE `RF_SoortWaardeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusAXBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusAXBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusAXBerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusAXBerichtType`
--

LOCK TABLES `RF_StatusAXBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusAXBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusAXBerichtType` VALUES ('01','Offertetermijn verloopt','Offertetermijn verloopt'),('04','Dossier ter acceptatie','Dossier ter acceptatie'),('05','Dossier finaal akkoord','Dossier finaal akkoord'),('07','Akte gepasseerd','Akte gepasseerd'),('08','Sluitdatum bekend','Sluitdatum bekend'),('09','Offerteaanvraag ontvangen','Offerteaanvraag ontvangen'),('10','Offerteaanvraag in behandeling genomen','Offerteaanvraag in behandeling genomen'),('11','Offerteaanvraag afgewezen','Offerteaanvraag afgewezen'),('12','Wachten op (aanvullende) stukken','Wachten op (aanvullende) stukken'),('13','Offerte verzonden',NULL),('14','Offerteaanvraag niet te verwerken, zie toelichting','Offerteaanvraag niet te verwerken, zie toelichting'),('16','Offerteaanvraag beëindigd, zie toelichting','Offerteaanvraag beëindigd, zie toelichting'),('17','Inkomen akkoord','Voor gevraagde hypotheeksom is voldoende inkomen, op de juiste wijze, aangetoond.'),('18','Onderpand akkoord','Voor gevraagde hypotheeksom is de koopsom van het onderpand, op de juiste wijze, aangetoond.'),('19','Verplichtingen akkoord','Voor gevraagde hypotheeksom zijn de verplichtingen aangetoond.'),('80','Partij niet geautoriseerd (zie toelichting)','Partij niet geautoriseerd (zie toelichting)'),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)'),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.');
/*!40000 ALTER TABLE `RF_StatusAXBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusDXBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusDXBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusDXBerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusDXBerichtType`
--

LOCK TABLES `RF_StatusDXBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusDXBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusDXBerichtType` VALUES ('01','Document password-protected','Het meegegeven bestand is met een wachtwoord beveiligd'),('02','Document reeds ontvangen','Document is al ontvangen'),('03','DocumentMijNr onbekend','DocumentMijNr is gewijzigd/ incorrect/niet bekend of het document is niet opgevraagd'),('04','Bestandsformaat te groot','Document te groot om te verwerken.'),('05','BestandsType niet ondersteund','BestandsType wordt niet ondersteund'),('06','BestandsType wijkt af','Opgegeven bestandsType wijkt af van die van het bestand'),('80','Partij niet geautoriseerd (zie toelichting)','Partij niet geautoriseerd (zie toelichting)'),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)'),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.');
/*!40000 ALTER TABLE `RF_StatusDXBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusGXBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusGXBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusGXBerichtType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusGXBerichtType`
--

LOCK TABLES `RF_StatusGXBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusGXBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusGXBerichtType` VALUES ('01','Garantienummer NHG, zie toelichting',NULL),('02','Geen garantienummer afgegeven, zie toelichting',NULL);
/*!40000 ALTER TABLE `RF_StatusGXBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusIABerichtType`
--

DROP TABLE IF EXISTS `RF_StatusIABerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusIABerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusIABerichtType`
--

LOCK TABLES `RF_StatusIABerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusIABerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusIABerichtType` VALUES ('01','Informatieverzoek ontvangen',NULL),('02','Informatieverzoek verwerkt',NULL),('03','Informatieverzoek in behandeling genomen',NULL),('04','Informatieverzoek niet te verwerken, zie toelichting',NULL),('05','Informatieverzoek afgewezen',NULL),('80','Partij niet geautoriseerd (zie toelichting)',NULL),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)',NULL),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.',NULL);
/*!40000 ALTER TABLE `RF_StatusIABerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusKCBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusKCBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusKCBerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusKCBerichtType`
--

LOCK TABLES `RF_StatusKCBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusKCBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusKCBerichtType` VALUES ('01','Kredietaanvraag ontvangen','Kredietaanvraag ontvangen'),('02','Kredietaanvraag in behandeling genomen','Kredietaanvraag in behandeling genomen'),('03','Kredietaanvraag niet te verwerken, zie toelichting','Kredietaanvraag niet te verwerken, zie toelichting'),('04','Wachten op (aanvullende) stukken','Wachten op (aanvullende) stukken'),('05','Kredietaanvraag afgewezen','Kredietaanvraag afgewezen'),('06','Kredietaanvraag beëindigd, zie toelichting','Kredietaanvraag beëindigd, zie toelichting'),('07','Offerte vervallen','Offerte vervallen'),('08','Dossier finaal akkoord','Dossier finaal akkoord'),('09','Gelden uitbetaald','Gelden uitbetaald'),('80','Partij niet geautoriseerd (zie toelichting)','Partij niet geautoriseerd (zie toelichting)'),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)'),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.');
/*!40000 ALTER TABLE `RF_StatusKCBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusLXBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusLXBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusLXBerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusLXBerichtType`
--

LOCK TABLES `RF_StatusLXBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusLXBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusLXBerichtType` VALUES ('01','Offertetermijn verloopt','Offertetermijn verloopt'),('02','Medische stukken ontvangen (nog niet beoordeeld)','Medische stukken ontvangen (nog niet beoordeeld)'),('03','Verhogingsvoorstel n.a.v. medische beoordeling','Verhogingsvoorstel n.a.v. medische beoordeling'),('04','Medisch akkoord','Medisch akkoord'),('05','Dossier ter beoordeling','Dossier ter beoordeling'),('06','Dossier akkoord','Dossier akkoord'),('07','Polis opgemaakt','Polis opgemaakt'),('08','Polis verzonden','Polis verzonden'),('09','Levenaanvraag ontvangen','Levenaanvraag ontvangen'),('10','Levenaanvraag in behandeling genomen','Levenaanvraag in behandeling genomen'),('11','Medische stukken opgevraagd','Medische stukken opgevraagd'),('12','Levenaanvraag afgewezen','Levenaanvraag afgewezen'),('13','Levenaanvraag niet te verwerken, zie toelichting','Levenaanvraag niet te verwerken, zie toelichting'),('14','Gezondheidsheidsverklaring ontvangen','Gezondheidsheidsverklaring ontvangen'),('15','Gezondheidsheidsverklaring verzonden','Gezondheidsheidsverklaring verzonden'),('16','Levenaanvraag beëindigd, zie toelichting','Levenaanvraag beëindigd, zie toelichting'),('80','Partij niet geautoriseerd (zie toelichting)','Partij niet geautoriseerd (zie toelichting)'),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)'),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.');
/*!40000 ALTER TABLE `RF_StatusLXBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusMXBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusMXBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusMXBerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusMXBerichtType`
--

LOCK TABLES `RF_StatusMXBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusMXBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusMXBerichtType` VALUES ('01','Mutatieverzoek ontvangen','Mutatieverzoek ontvangen'),('02','Mutatie verwerkt','Mutatie verwerkt'),('03','Mutatie In behandeling genomen, handmatige verwerking','Mutatie In behandeling genomen, handmatige verwerking'),('04','Mutatie niet te verwerken, zie toelichting','Mutatie niet te verwerken, zie toelichting'),('05','Mutatie afgewezen','Mutatie afgewezen'),('06','Mutatie wachten op (aanvullende) stukken','Mutatie wachten op (aanvullende) stukken'),('07','Mutatieproces beëindigd, zie toelichting','Mutatieproces beëindigd, zie toelichting'),('08','Mutatie geagendeerd, wijzigingen nog mogelijk','Mutatie geagendeerd, wijzigingen nog mogelijk'),('09','Mutatie definitief, kan niet meer gewijzigd worden','Mutatie definitief, kan'),('10','Mutatie geannuleerd','Mutatie geannuleerd door klant'),('11','Mutatie dossier ter acceptatie','Mutatie dossier ter acceptatie'),('12','Mutatie dossier finaal akkoord','Mutatie dossier finaal akkoord'),('13','Mutatie offerte verzonden','Mutatie offerte verzonden'),('14','Mutatie offertetermijn verloopt','Mutatie offertetermijn verloopt'),('15','Mutatie sluitdatum bekend','Mutatie sluitdatum bekend'),('16','Mutatie akte gepasseerd','Mutatie akte gepasseerd'),('17','Mutatie inkomen akkoord','Mutatie inkomen akkoord'),('18','Mutatie onderpand akkoord','Mutatie onderpand akkoord'),('19','Mutatie verplichtingen akkoord','Mutatie verplichtingen akkoord'),('80','Partij niet geautoriseerd (zie toelichting)','Partij niet geautoriseerd (zie toelichting)'),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)'),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.');
/*!40000 ALTER TABLE `RF_StatusMXBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusNXBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusNXBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusNXBerichtType` (
  `Code` varchar(3) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusNXBerichtType`
--

LOCK TABLES `RF_StatusNXBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusNXBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusNXBerichtType` VALUES ('01','Notarisopdracht ontvangen',NULL),('02','Akte gepasseerd',NULL),('03','Dossier geannuleerd',NULL),('80','Partij niet geautoriseerd (zie toelichting)',NULL),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)',NULL),('82 ','Aanroep HDN Poortwachter mislukt. Bericht welverzonden.',NULL);
/*!40000 ALTER TABLE `RF_StatusNXBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_StatusTaxconBerichtType`
--

DROP TABLE IF EXISTS `RF_StatusTaxconBerichtType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_StatusTaxconBerichtType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_StatusTaxconBerichtType`
--

LOCK TABLES `RF_StatusTaxconBerichtType` WRITE;
/*!40000 ALTER TABLE `RF_StatusTaxconBerichtType` DISABLE KEYS */;
INSERT INTO `RF_StatusTaxconBerichtType` VALUES ('01','Update bericht mislukt','Er kan geen update worden uitgevoerd om dat de opgegeven velden niet overeen komen'),('02','Geen match in verband met ontbrekende gegevens','Er ontbreken gegevens om tot een juiste match te komen'),('80','Partij niet geautoriseerd (zie toelichting)','Partij niet geautoriseerd (zie toelichting)'),('81','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)','Autorisatie niet verleend door HDN Poortwachter (zie toelichting)'),('82','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.','Aanroep HDN Poortwachter mislukt. Bericht wel verzonden.');
/*!40000 ALTER TABLE `RF_StatusTaxconBerichtType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_SubsidieRegelingType`
--

DROP TABLE IF EXISTS `RF_SubsidieRegelingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_SubsidieRegelingType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_SubsidieRegelingType`
--

LOCK TABLES `RF_SubsidieRegelingType` WRITE;
/*!40000 ALTER TABLE `RF_SubsidieRegelingType` DISABLE KEYS */;
INSERT INTO `RF_SubsidieRegelingType` VALUES ('01','Koopsubsidie','Koopsubsidie'),('02','Starterslening','Starterslening');
/*!40000 ALTER TABLE `RF_SubsidieRegelingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_UitbetalingAanPartijjType`
--

DROP TABLE IF EXISTS `RF_UitbetalingAanPartijjType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_UitbetalingAanPartijjType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_UitbetalingAanPartijjType`
--

LOCK TABLES `RF_UitbetalingAanPartijjType` WRITE;
/*!40000 ALTER TABLE `RF_UitbetalingAanPartijjType` DISABLE KEYS */;
INSERT INTO `RF_UitbetalingAanPartijjType` VALUES ('01','Hypotheekgever','Hypotheekgever'),('02','Aannemer','Aannemer');
/*!40000 ALTER TABLE `RF_UitbetalingAanPartijjType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_ValutaSoortType`
--

DROP TABLE IF EXISTS `RF_ValutaSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_ValutaSoortType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(5) DEFAULT NULL,
  `Omschrijving` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_ValutaSoortType`
--

LOCK TABLES `RF_ValutaSoortType` WRITE;
/*!40000 ALTER TABLE `RF_ValutaSoortType` DISABLE KEYS */;
INSERT INTO `RF_ValutaSoortType` VALUES ('002','EUR','EUR');
/*!40000 ALTER TABLE `RF_ValutaSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_VerblijfsVergunningType`
--

DROP TABLE IF EXISTS `RF_VerblijfsVergunningType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_VerblijfsVergunningType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_VerblijfsVergunningType`
--

LOCK TABLES `RF_VerblijfsVergunningType` WRITE;
/*!40000 ALTER TABLE `RF_VerblijfsVergunningType` DISABLE KEYS */;
INSERT INTO `RF_VerblijfsVergunningType` VALUES ('01','onbekend','onbekend'),('02','verblijfsvergunning onbepaalde tijd','verblijfsvergunning onbepaalde tijd'),('03','verblijfsvergunning bepaalde tijd','verblijfsvergunning bepaalde tijd'),('04','verblijfsvergunning voor bepaalde tijd asiel (Document III)','verblijfsvergunning voor bepaalde tijd asiel (Document III)'),('05','verblijfsvergunning voor onbepaalde tijd asiel (Document IV)','verblijfsvergunning voor onbepaalde tijd asiel (Document IV)');
/*!40000 ALTER TABLE `RF_VerblijfsVergunningType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_VerhuurType`
--

DROP TABLE IF EXISTS `RF_VerhuurType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_VerhuurType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_VerhuurType`
--

LOCK TABLES `RF_VerhuurType` WRITE;
/*!40000 ALTER TABLE `RF_VerhuurType` DISABLE KEYS */;
INSERT INTO `RF_VerhuurType` VALUES ('01','geen verhuur','geen verhuur'),('02','tijdelijke verhuur','tijdelijke verhuur'),('03','gedeeltelijke tijdelijke verhuur (kamer, etage)','gedeeltelijke tijdelijke verhuur (kamer, etage)'),('04','gedeeltelijke verhuur (kamer, etage)','gedeeltelijke verhuur (kamer, etage)'),('05','permanente verhuur','permanente verhuur');
/*!40000 ALTER TABLE `RF_VerhuurType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_VerkoopOnderVoorwaardenConstructieType`
--

DROP TABLE IF EXISTS `RF_VerkoopOnderVoorwaardenConstructieType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_VerkoopOnderVoorwaardenConstructieType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(255) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_VerkoopOnderVoorwaardenConstructieType`
--

LOCK TABLES `RF_VerkoopOnderVoorwaardenConstructieType` WRITE;
/*!40000 ALTER TABLE `RF_VerkoopOnderVoorwaardenConstructieType` DISABLE KEYS */;
INSERT INTO `RF_VerkoopOnderVoorwaardenConstructieType` VALUES ('01','Maatschappelijk Gebonden Eigendom (MGE)','Maatschappelijk Gebonden Eigendom (MGE)'),('02','Maatschappelijk Verantwoord Eigendom (MVE)','Maatschappelijk Verantwoord Eigendom (MVE)'),('03','Koopgarant','Koopgarant'),('04','Koopzeker','Koopzeker'),('05','Koop Goedkoop','Koop Goedkoop'),('06','Slimmer Kopen (voorheen: Profijtwoning)','Slimmer Kopen (voorheen: Profijtwoning)'),('07','Beterkoop','Beterkoop'),('08','Betaalbaar Koopwoning Systeem','Betaalbaar Koopwoning Systeem'),('09','KmK-woning (Kopen met Korting)','KmK-woning (Kopen met Korting)'),('10','Koop Voordeel-woningen','Koop Voordeel-woningen'),('11','Koopcomfort-bepalingen (versie 1 april 2007, of later)','Koopcomfort-bepalingen (versie 1 april 2007, of later)'),('12','Verrassend Wonen','Verrassend Wonen'),('13','Betaalbare Koopwoningen Zaanstad (BKZ)','Betaalbare Koopwoningen Zaanstad (BKZ)'),('99','Anders','Anders');
/*!40000 ALTER TABLE `RF_VerkoopOnderVoorwaardenConstructieType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_VerplichtingType`
--

DROP TABLE IF EXISTS `RF_VerplichtingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_VerplichtingType` (
  `Code` varchar(2) NOT NULL,
  `Waarde` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_VerplichtingType`
--

LOCK TABLES `RF_VerplichtingType` WRITE;
/*!40000 ALTER TABLE `RF_VerplichtingType` DISABLE KEYS */;
INSERT INTO `RF_VerplichtingType` VALUES ('01','Alimentatieverplichting t.g.v. kinderen','Alimentatieverplichting t.g.v. kinderen'),('02','Alimentatieverplichting t.g.v. partner','Alimentatieverplichting t.g.v. partner'),('03','Pensioenpremie t.l.v. partij','Pensioenpremie t.l.v. partij'),('04','Aflopend krediet of lening','Aflopend krediet of lening'),('05','Doorlopend krediet','Doorlopend krediet'),('06','Bestaande hypotheek','Bestaande hypotheek'),('07','Lening bij werkgever','Lening bij werkgever'),('08','Verzendhuiskrediet','Verzendhuiskrediet'),('09','Schuldregeling','Schuldregeling'),('10','Telecommunicatievoorziening','Telecommunicatievoorziening'),('11','Bruto huurlasten','Bruto huurlasten'),('12','Studielening','Studielening'),('13','Private Lease','Private lease'),('14','Studievoorschot','Studievoorschot'),('99','Overig','Overig');
/*!40000 ALTER TABLE `RF_VerplichtingType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_VoorkeurRetourType`
--

DROP TABLE IF EXISTS `RF_VoorkeurRetourType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_VoorkeurRetourType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(25) DEFAULT NULL,
  `Omschrijving` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_VoorkeurRetourType`
--

LOCK TABLES `RF_VoorkeurRetourType` WRITE;
/*!40000 ALTER TABLE `RF_VoorkeurRetourType` DISABLE KEYS */;
INSERT INTO `RF_VoorkeurRetourType` VALUES ('01','per post','per post'),('02','per fax','per fax'),('03','per HDN','per HDN'),('04','per e-mail via internet','per e-mail via internet');
/*!40000 ALTER TABLE `RF_VoorkeurRetourType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RF_VoortitelType`
--

DROP TABLE IF EXISTS `RF_VoortitelType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RF_VoortitelType` (
  `Code` varchar(5) NOT NULL,
  `Waarde` varchar(12) DEFAULT NULL,
  `Omschrijving` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RF_VoortitelType`
--

LOCK TABLES `RF_VoortitelType` WRITE;
/*!40000 ALTER TABLE `RF_VoortitelType` DISABLE KEYS */;
INSERT INTO `RF_VoortitelType` VALUES ('01','aalm','aalm'),('02','adm','adm'),('03','bar','bar'),('04','biss','biss'),('05','bsse','bsse'),('06','burg','burg'),('07','comm','comm'),('08','dkn','dkn'),('09','dr','dr'),('10','dra','dra'),('11','dre','dre'),('12','drs','drs'),('13','ds','ds'),('14','gen','gen'),('15','gr','gr'),('16','htg','htg'),('17','ir','ir'),('18','jhr','jhr'),('19','kan','kan'),('20','kap','kap'),('21','kapt','kapt'),('22','kard','kard'),('23','kol','kol'),('24','kon','kon'),('25','kzr','kzr'),('26','lt gen','lt gen'),('27','maj','maj'),('28','mgr','mgr'),('29','min','min'),('30','mr','mr'),('31','pasr','pasr'),('32','pr','pr'),('33','pres','pres'),('34','prof','prof'),('35','ptr','ptr'),('36','rect','rect'),('37','sinj','sinj'),('38','weth','weth'),('39','ing','ing'),('40','da','da'),('41',' lt',' lt'),('42','jvr','jvr'),('43','bc','bc'),('44','bbsse','bbsse'),('45','fr','fr'),('46','frle','frle'),('47','jkvr','jkvr'),('48','rab','rab'),('49','wed','wed'),('50','zr','zr'),('51','dre','dre');
/*!40000 ALTER TABLE `RF_VoortitelType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_AfrekenSoortType`
--

DROP TABLE IF EXISTS `RS_AfrekenSoortType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_AfrekenSoortType` (
  `idRS_AfrekenSoortType` int(11) NOT NULL,
  `AfrekenSoortAfk` varchar(5) DEFAULT NULL,
  `Omschrijving` varchar(255) DEFAULT NULL COMMENT 'Status dossier;\nFee-constructie;\nKorting FTR',
  PRIMARY KEY (`idRS_AfrekenSoortType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_AfrekenSoortType`
--

LOCK TABLES `RS_AfrekenSoortType` WRITE;
/*!40000 ALTER TABLE `RS_AfrekenSoortType` DISABLE KEYS */;
/*!40000 ALTER TABLE `RS_AfrekenSoortType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_ContractTemplateLabel`
--

DROP TABLE IF EXISTS `RS_ContractTemplateLabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_ContractTemplateLabel` (
  `idRS_ContractTemplateLabel` int(11) NOT NULL,
  `CodeLeningMijType` varchar(255) DEFAULT NULL COMMENT 'Waardelijst ColdeLeningMijType',
  `ContractTemplate_idContractTemplate` int(11) NOT NULL,
  PRIMARY KEY (`idRS_ContractTemplateLabel`),
  KEY `fk_RS_ContractTemplateLabel_ContractTemplate1` (`ContractTemplate_idContractTemplate`),
  CONSTRAINT `fk_RS_ContractTemplateLabel_ContractTemplate1` FOREIGN KEY (`ContractTemplate_idContractTemplate`) REFERENCES `ContractTemplate` (`idContractTemplate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_ContractTemplateLabel`
--

LOCK TABLES `RS_ContractTemplateLabel` WRITE;
/*!40000 ALTER TABLE `RS_ContractTemplateLabel` DISABLE KEYS */;
/*!40000 ALTER TABLE `RS_ContractTemplateLabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_ContractTemplateProduct`
--

DROP TABLE IF EXISTS `RS_ContractTemplateProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_ContractTemplateProduct` (
  `idRS_ContractTemplateProduct` int(11) NOT NULL,
  `Waarde` varchar(5) DEFAULT NULL COMMENT 'HYP\n…',
  `Omschrijving` varchar(255) DEFAULT NULL COMMENT 'Waardelijst ',
  `ContractTemplate_idContractTemplate` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRS_ContractTemplateProduct`),
  KEY `fk_RS_ContractTemplateProduct_ContractTemplate1` (`ContractTemplate_idContractTemplate`),
  CONSTRAINT `fk_RS_ContractTemplateProduct_ContractTemplate1` FOREIGN KEY (`ContractTemplate_idContractTemplate`) REFERENCES `ContractTemplate` (`idContractTemplate`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_ContractTemplateProduct`
--

LOCK TABLES `RS_ContractTemplateProduct` WRITE;
/*!40000 ALTER TABLE `RS_ContractTemplateProduct` DISABLE KEYS */;
INSERT INTO `RS_ContractTemplateProduct` VALUES (1,'HYP','Hypotheek',NULL);
/*!40000 ALTER TABLE `RS_ContractTemplateProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_GrootboekRekeningNr`
--

DROP TABLE IF EXISTS `RS_GrootboekRekeningNr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_GrootboekRekeningNr` (
  `idRS_GrootboekRekeningNr` int(11) NOT NULL,
  `GrootBoekRekeningNummer` decimal(6,0) NOT NULL COMMENT '9010, 9011, 9012, 9013…',
  `Omschrijving` varchar(45) DEFAULT NULL COMMENT 'Omschrijving van het GrootBoekRekeningNr',
  PRIMARY KEY (`idRS_GrootboekRekeningNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_GrootboekRekeningNr`
--

LOCK TABLES `RS_GrootboekRekeningNr` WRITE;
/*!40000 ALTER TABLE `RS_GrootboekRekeningNr` DISABLE KEYS */;
/*!40000 ALTER TABLE `RS_GrootboekRekeningNr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_OntvangerCode`
--

DROP TABLE IF EXISTS `RS_OntvangerCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_OntvangerCode` (
  `idRS_OntvangerCode` int(11) NOT NULL,
  `Code` varchar(6) DEFAULT NULL,
  `Waarde` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MaatschappijType',
  `OntvangerCode` varchar(255) DEFAULT NULL,
  `IndicatieActiefJN` varchar(1) DEFAULT NULL COMMENT 'J/N',
  `HDNNr` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`idRS_OntvangerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_OntvangerCode`
--

LOCK TABLES `RS_OntvangerCode` WRITE;
/*!40000 ALTER TABLE `RS_OntvangerCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `RS_OntvangerCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_RegioType`
--

DROP TABLE IF EXISTS `RS_RegioType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_RegioType` (
  `idRS_RegioType` int(11) NOT NULL,
  `RegioAfk` varchar(5) DEFAULT NULL,
  `RegioOmschr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRS_RegioType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_RegioType`
--

LOCK TABLES `RS_RegioType` WRITE;
/*!40000 ALTER TABLE `RS_RegioType` DISABLE KEYS */;
INSERT INTO `RS_RegioType` VALUES (1,'FB','FirstBrick'),(2,'NO','Noord Oost'),(3,'NW','Noord West'),(4,'ZO','Zuid Oost'),(5,'ZW','Zuid West'),(6,'OV','Overig'),(7,'DAM','DAM');
/*!40000 ALTER TABLE `RS_RegioType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RS_StatusSysteemEnHDN`
--

DROP TABLE IF EXISTS `RS_StatusSysteemEnHDN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RS_StatusSysteemEnHDN` (
  `idRS_StatusSysteemEnHDN` int(11) NOT NULL,
  `Fase` varchar(255) NOT NULL,
  `Stap` varchar(255) DEFAULT NULL,
  `StatusBerichtType` varchar(255) NOT NULL COMMENT 'Zie waarden RF_AXBerichtType',
  PRIMARY KEY (`idRS_StatusSysteemEnHDN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RS_StatusSysteemEnHDN`
--

LOCK TABLES `RS_StatusSysteemEnHDN` WRITE;
/*!40000 ALTER TABLE `RS_StatusSysteemEnHDN` DISABLE KEYS */;
/*!40000 ALTER TABLE `RS_StatusSysteemEnHDN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recht`
--

DROP TABLE IF EXISTS `Recht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recht` (
  `idRecht` int(11) NOT NULL,
  `GerelateerdPersoon` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)\n',
  `GerechtigdPersoon` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)',
  `GerelateerdObject` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  `OntstaanUit` varchar(100) DEFAULT NULL,
  `OntstaanOpDt` datetime DEFAULT NULL,
  `Inschrijving` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)',
  PRIMARY KEY (`idRecht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recht`
--

LOCK TABLES `Recht` WRITE;
/*!40000 ALTER TABLE `Recht` DISABLE KEYS */;
/*!40000 ALTER TABLE `Recht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferentieObject`
--

DROP TABLE IF EXISTS `ReferentieObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferentieObject` (
  `idReferentieObject` int(11) NOT NULL,
  `RefObject` int(11) DEFAULT NULL COMMENT 'Referentie entiteit\n',
  `VorigeTransactieDt` datetime DEFAULT NULL,
  `KoopsomIndex` decimal(14,3) DEFAULT NULL,
  PRIMARY KEY (`idReferentieObject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReferentieObject`
--

LOCK TABLES `ReferentieObject` WRITE;
/*!40000 ALTER TABLE `ReferentieObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferentieObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResultaatObject`
--

DROP TABLE IF EXISTS `ResultaatObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResultaatObject` (
  `idResultaatObject` int(11) NOT NULL,
  `RefObject` int(11) DEFAULT NULL COMMENT 'Referentie entiteit',
  `PrijsPeilDt` datetime DEFAULT NULL,
  `BedragWaarde` decimal(14,2) DEFAULT NULL,
  `BetrouwbaarheidsKlasse` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BetrouwbaarheidKlasseType\n',
  `BetrouwbaarheidsIndicatie` decimal(14,3) DEFAULT NULL,
  `Ondergrens` decimal(8,0) DEFAULT NULL,
  `Bovengrens` decimal(8,0) DEFAULT NULL,
  `GedwongenOnderhandseVerkoopwaarde` decimal(8,0) DEFAULT NULL,
  `ExecutieWaarde` decimal(8,0) DEFAULT NULL,
  `CalcasaOnly` varchar(10) DEFAULT NULL,
  `MaximaalHypotheekBedrag` decimal(8,0) DEFAULT NULL,
  `Calcasa_idCalcasa` int(11) NOT NULL,
  `NBWO_idNBWO` int(11) NOT NULL,
  PRIMARY KEY (`idResultaatObject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResultaatObject`
--

LOCK TABLES `ResultaatObject` WRITE;
/*!40000 ALTER TABLE `ResultaatObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResultaatObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rol` (
  `idRol` int(11) NOT NULL,
  `RolNaam` varchar(45) DEFAULT NULL,
  `Gebruiker_idGebruiker` int(11) NOT NULL,
  PRIMARY KEY (`idRol`),
  KEY `fk_Rol_Gebruiker1` (`Gebruiker_idGebruiker`),
  CONSTRAINT `fk_Rol_Gebruiker1` FOREIGN KEY (`Gebruiker_idGebruiker`) REFERENCES `Gebruiker` (`idGebruiker`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RolTeam_heeft_Autorisatie`
--

DROP TABLE IF EXISTS `RolTeam_heeft_Autorisatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RolTeam_heeft_Autorisatie` (
  `idRolTeam_heeft_Autorisatie` int(11) NOT NULL,
  `Rol_idRol` int(11) NOT NULL,
  `Autorisatie_idAutorisatie` int(11) NOT NULL,
  `Team_idTeam` int(11) NOT NULL,
  PRIMARY KEY (`idRolTeam_heeft_Autorisatie`),
  KEY `fk_RolTeam_heeft_Autorisatie_Rol1` (`Rol_idRol`),
  KEY `fk_RolTeam_heeft_Autorisatie_Autorisatie1` (`Autorisatie_idAutorisatie`),
  KEY `fk_RolTeam_heeft_Autorisatie_Team1` (`Team_idTeam`),
  CONSTRAINT `fk_RolTeam_heeft_Autorisatie_Autorisatie1` FOREIGN KEY (`Autorisatie_idAutorisatie`) REFERENCES `Autorisatie` (`idAutorisatie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_RolTeam_heeft_Autorisatie_Rol1` FOREIGN KEY (`Rol_idRol`) REFERENCES `Rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_RolTeam_heeft_Autorisatie_Team1` FOREIGN KEY (`Team_idTeam`) REFERENCES `Team` (`idTeam`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RolTeam_heeft_Autorisatie`
--

LOCK TABLES `RolTeam_heeft_Autorisatie` WRITE;
/*!40000 ALTER TABLE `RolTeam_heeft_Autorisatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `RolTeam_heeft_Autorisatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SBI`
--

DROP TABLE IF EXISTS `SBI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SBI` (
  `idSBI` int(11) NOT NULL,
  `SBIcode` varchar(25) DEFAULT NULL,
  `SBIOmschr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idSBI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SBI`
--

LOCK TABLES `SBI` WRITE;
/*!40000 ALTER TABLE `SBI` DISABLE KEYS */;
/*!40000 ALTER TABLE `SBI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceProvider`
--

DROP TABLE IF EXISTS `ServiceProvider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceProvider` (
  `idServiceProvider` int(11) NOT NULL,
  `RefContactPersoonData` int(11) NOT NULL COMMENT 'Referentie entiteit',
  `ServiceProviderNaam` varchar(100) NOT NULL,
  `ServiceProviderNr` varchar(35) NOT NULL,
  `TelefoonNrWerk` decimal(12,0) NOT NULL,
  `TelefoonNrMobiel` decimal(12,0) DEFAULT NULL,
  `E-mailadres` varchar(100) DEFAULT NULL,
  `ServiceProviderAFMRegistratieNr` varchar(35) NOT NULL,
  `Internetadres` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idServiceProvider`),
  KEY `fk_ServiceProvider_PartijNAWData1` (`RefContactPersoonData`),
  CONSTRAINT `fk_ServiceProvider_PartijNAWData1` FOREIGN KEY (`RefContactPersoonData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceProvider`
--

LOCK TABLES `ServiceProvider` WRITE;
/*!40000 ALTER TABLE `ServiceProvider` DISABLE KEYS */;
/*!40000 ALTER TABLE `ServiceProvider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Status` (
  `idStatus` int(11) NOT NULL,
  `StatusDt` datetime NOT NULL,
  `StatusTijd` datetime NOT NULL,
  `Kenmerk` varchar(255) DEFAULT NULL COMMENT 'Het kenmerk waarmee de verzendende partij communiceert (kan Leningnummer / Dossiernummer / Offertenummer zijn) \nKenmerk is verplicht als ResponsOpBerichtSoort heeft waarde (DocumentAanvraagBericht ) \n',
  `ResponsOpBerichtSoort` varchar(255) NOT NULL COMMENT 'Waardelijst BerichtSoortType\nResponsOpBerichtSoort heeft waarde (OfferteAanvraag, DocumentAanvraagBericht, DocumentBericht, NhgMelding, InformatieAanvraagBericht, KredietAanvraag, LevenAanvraag, BeheerVerzoek, NotarisOpdracht ) \n',
  `AXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nAXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag ) \n',
  `LXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nLXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (LevenAanvraag ) \n\n',
  `KXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nKXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (KredietAanvraag ) \n\n',
  `MXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nMXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (BeheerVerzoek ) \n\n',
  `GXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nGXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (NhgMelding ) \n\n',
  `IABerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nIABerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (InformatieAanvraagBericht ) \n',
  `DXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nDXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (OfferteAanvraag ) \n',
  `TaxconBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nTaxconBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (DocumentAanvraagBericht ) \n\n',
  `NXBerichtStatusSpecificatie` int(11) DEFAULT NULL COMMENT 'Entiteit (0-1)\nConditie:\nNXBerichtStatusSpecificatie is verplicht als ResponsOpBerichtSoort heeft waarde (NotarisOpdracht) \n',
  `StatusTekstRegels` int(11) DEFAULT NULL COMMENT 'Entiteit (0-99)\n•StatusTekstRegels is verplicht als StatusTaxconBericht heeft waarde (Partij niet geautoriseerd (zie toelichting), Autorisatie niet verleend door HDN Poortwachter (zie toelichting) ) \n•StatusTekstRegels is verplicht als StatusAXBericht heeft waarde (Offerteaanvraag niet te verwerken, zie toelichting, Partij niet geautoriseerd (zie toelichting), Autorisatie niet verleend door HDN Poortwachter (zie toelichting) ) \n•StatusTekstRegels is verplicht als StatusDXBericht heeft waarde (Partij niet geautoriseerd (zie toelichting), Autorisatie niet verleend door HDN Poortwachter (zie toelichting) ) \n•StatusTekstRegels is verplicht als StatusLXBericht heeft waarde (Levenaanvraag niet te verwerken, zie toelichting, Partij niet geautoriseerd (zie toelichting), Autorisatie niet verleend door HDN Poortwachter (zie toelichting) ) \n•StatusTekstRegels is verplicht als StatusMXBericht heeft waarde (Mutatie niet te verwerken, zie toelichting, Partij niet geautoriseerd (zie toelichting), Autorisatie niet ',
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Status`
--

LOCK TABLES `Status` WRITE;
/*!40000 ALTER TABLE `Status` DISABLE KEYS */;
/*!40000 ALTER TABLE `Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatusKetenPartij`
--

DROP TABLE IF EXISTS `StatusKetenPartij`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatusKetenPartij` (
  `idStatusKetenPartij` int(11) NOT NULL,
  `DocumentStatus` varchar(255) NOT NULL COMMENT 'Waardelijst DocumentStatusType\n\n',
  `DocumentStatusOmschr` varchar(255) DEFAULT NULL COMMENT 'Geeft een vrije toelichting op de documentstatus.\n\nConditie:\nDocumentStatusOmschr is verplicht als DocumentStatus heeft waarde (Afgekeurd en opnieuw aan te leveren (zie toelichting), Vervallen (zie toelichting) )',
  PRIMARY KEY (`idStatusKetenPartij`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatusKetenPartij`
--

LOCK TABLES `StatusKetenPartij` WRITE;
/*!40000 ALTER TABLE `StatusKetenPartij` DISABLE KEYS */;
/*!40000 ALTER TABLE `StatusKetenPartij` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatusMeldingBericht`
--

DROP TABLE IF EXISTS `StatusMeldingBericht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatusMeldingBericht` (
  `idStatusMelding` int(11) NOT NULL,
  `Header` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)',
  `Status` int(11) NOT NULL COMMENT 'Referentie entiteit (1-1)',
  PRIMARY KEY (`idStatusMelding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatusMeldingBericht`
--

LOCK TABLES `StatusMeldingBericht` WRITE;
/*!40000 ALTER TABLE `StatusMeldingBericht` DISABLE KEYS */;
/*!40000 ALTER TABLE `StatusMeldingBericht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatusTekstRegels`
--

DROP TABLE IF EXISTS `StatusTekstRegels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatusTekstRegels` (
  `idStatusTekstRegels` int(11) NOT NULL,
  `MeldingBelang` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MeldingBelangType ',
  `TekstRegel` varchar(255) NOT NULL,
  `TekstRegel2` varchar(255) DEFAULT NULL,
  `TekstRegel3` varchar(255) DEFAULT NULL,
  `TekstRegel4` varchar(255) DEFAULT NULL,
  `TekstRegel5` varchar(255) DEFAULT NULL,
  `TekstRegel6` varchar(255) DEFAULT NULL,
  `TekstRegel7` varchar(255) DEFAULT NULL,
  `TekstRegel8` varchar(255) DEFAULT NULL,
  `TekstRegel9` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idStatusTekstRegels`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatusTekstRegels`
--

LOCK TABLES `StatusTekstRegels` WRITE;
/*!40000 ALTER TABLE `StatusTekstRegels` DISABLE KEYS */;
/*!40000 ALTER TABLE `StatusTekstRegels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SysteemMelding`
--

DROP TABLE IF EXISTS `SysteemMelding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SysteemMelding` (
  `idSysteemMelding` int(11) NOT NULL,
  `MeldingSoort` varchar(255) DEFAULT NULL COMMENT 'Waardelijst MeldingSoortType\n\nGeeft de fout of OK-melding van de bron aan \n',
  `MeldingDt` datetime DEFAULT NULL,
  `MeldingTijd` datetime DEFAULT NULL,
  `MeldingBronSpecifiek` varchar(255) DEFAULT NULL,
  `MeldingTekstRegels` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSysteemMelding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SysteemMelding`
--

LOCK TABLES `SysteemMelding` WRITE;
/*!40000 ALTER TABLE `SysteemMelding` DISABLE KEYS */;
/*!40000 ALTER TABLE `SysteemMelding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxCon`
--

DROP TABLE IF EXISTS `TaxCon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxCon` (
  `idTaxCon` int(11) NOT NULL,
  `OntvangerNrTaxconRapport` decimal(6,0) DEFAULT NULL COMMENT 'HDN aansluitnummer van de partij die het verzoek tot taxatierapport bij Taxcon heeft gedaan.',
  `SoortBericht` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortBerichtType\n\nDit veld is alleen voor TaxCon gebruikers. Middels de waardes in dit veld kan aangegeven worden op welke manier men de taxatie-gegevens retour wenst',
  PRIMARY KEY (`idTaxCon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxCon`
--

LOCK TABLES `TaxCon` WRITE;
/*!40000 ALTER TABLE `TaxCon` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxCon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaxconBerichtStatusSpecificatie`
--

DROP TABLE IF EXISTS `TaxconBerichtStatusSpecificatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaxconBerichtStatusSpecificatie` (
  `idTaxconBerichtStatusSpecificatie` int(11) NOT NULL,
  `StatusTaxconBericht` varchar(255) NOT NULL COMMENT 'Waardelijst StatusDXBerichtType \nGeeft een specifiek SX bericht ten behoeve van Taxcon. \n',
  `DocumentMijNr` varchar(255) NOT NULL COMMENT 'Binnen het dossier uniek nummer van het document zoals deze geadministreerd is bij de ontvangende partij van het DX bericht \n',
  PRIMARY KEY (`idTaxconBerichtStatusSpecificatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaxconBerichtStatusSpecificatie`
--

LOCK TABLES `TaxconBerichtStatusSpecificatie` WRITE;
/*!40000 ALTER TABLE `TaxconBerichtStatusSpecificatie` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaxconBerichtStatusSpecificatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `idTeam` int(11) NOT NULL,
  `TeamNaam` varchar(45) DEFAULT NULL,
  `MaatschappijType` varchar(255) DEFAULT NULL COMMENT 'Referentiewaarde tabel MaatschappijType',
  PRIMARY KEY (`idTeam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team_heeft_Gebruiker`
--

DROP TABLE IF EXISTS `Team_heeft_Gebruiker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team_heeft_Gebruiker` (
  `idTeam_heeft_Gebruiker` int(11) NOT NULL,
  `Gebruiker_idGebruiker` int(11) NOT NULL,
  `Team_idTeam` int(11) NOT NULL,
  PRIMARY KEY (`idTeam_heeft_Gebruiker`),
  KEY `fk_Team_heeft_Gebruiker_Gebruiker1` (`Gebruiker_idGebruiker`),
  KEY `fk_Team_heeft_Gebruiker_Team1` (`Team_idTeam`),
  CONSTRAINT `fk_Team_heeft_Gebruiker_Gebruiker1` FOREIGN KEY (`Gebruiker_idGebruiker`) REFERENCES `Gebruiker` (`idGebruiker`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Team_heeft_Gebruiker_Team1` FOREIGN KEY (`Team_idTeam`) REFERENCES `Team` (`idTeam`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team_heeft_Gebruiker`
--

LOCK TABLES `Team_heeft_Gebruiker` WRITE;
/*!40000 ALTER TABLE `Team_heeft_Gebruiker` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team_heeft_Gebruiker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TekstRegels`
--

DROP TABLE IF EXISTS `TekstRegels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TekstRegels` (
  `idTekstRegels` int(11) NOT NULL,
  `TekstRegel` varchar(255) NOT NULL,
  `TekstRegel2` varchar(255) DEFAULT NULL,
  `TekstRegel3` varchar(255) DEFAULT NULL,
  `TekstRegel4` varchar(255) DEFAULT NULL,
  `TekstRegel5` varchar(255) DEFAULT NULL,
  `Dossier_idDossier` int(11) NOT NULL,
  PRIMARY KEY (`idTekstRegels`),
  KEY `fk_TekstRegels_Dossier1` (`Dossier_idDossier`),
  CONSTRAINT `fk_TekstRegels_Dossier1` FOREIGN KEY (`Dossier_idDossier`) REFERENCES `Dossier` (`idDossier`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TekstRegels`
--

LOCK TABLES `TekstRegels` WRITE;
/*!40000 ALTER TABLE `TekstRegels` DISABLE KEYS */;
/*!40000 ALTER TABLE `TekstRegels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ToekomstigAdres`
--

DROP TABLE IF EXISTS `ToekomstigAdres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ToekomstigAdres` (
  `idToekomstigAdres` int(11) NOT NULL,
  `StraatNaam` varchar(100) NOT NULL COMMENT 'Straatnaam, indien sprake is van een correspondentie adres kan ook de aanduiding ''postbus'' gebruikt worden.',
  `HuisNr` decimal(5,0) NOT NULL COMMENT 'Huisnummer, indien sprake is van een correspondentie adres kan dit ook een postbusnummer zijn.',
  `HuisNrToevoeging` varchar(10) DEFAULT NULL COMMENT 'Huisnummertoevoeging, bijvoorbeeld I, Huis, zwart etc..',
  `Postcode` varchar(10) NOT NULL COMMENT 'Postcode, behorend bij ingevulde straatnaam, huisnummer of bij ingevuld postbusnummer. Voor\nNederland 6 posities lang, zonder spatie ertussen.\nLength?',
  `PlaatsNaam` varchar(35) NOT NULL COMMENT 'Geeft de plaatsnaam.\n\nHebben we hier geen postcode-tabel?',
  `Land` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nSO Landenlijst 3166, versie 1 met aanvullend versie 3 voor vervallen gebieden. Noot: versie 1 bevat tweeletterige codes, versie 3 bevat vierletterige (!) codes.\n',
  `IngangsDtToekomstigAdres` datetime DEFAULT NULL COMMENT 'Waardelijst VoortitelType\nVoortitel (b.v. ing)',
  PRIMARY KEY (`idToekomstigAdres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ToekomstigAdres`
--

LOCK TABLES `ToekomstigAdres` WRITE;
/*!40000 ALTER TABLE `ToekomstigAdres` DISABLE KEYS */;
/*!40000 ALTER TABLE `ToekomstigAdres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ToetsResultaatEnt`
--

DROP TABLE IF EXISTS `ToetsResultaatEnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ToetsResultaatEnt` (
  `idToetsResultaatEnt` int(11) NOT NULL,
  `SoortToets` varchar(25) DEFAULT NULL,
  `ToetsResultaat` varchar(25) DEFAULT NULL,
  `ToetsResultaatOmschr` varchar(255) DEFAULT NULL,
  `LaatsteUpdateDt` datetime DEFAULT NULL,
  PRIMARY KEY (`idToetsResultaatEnt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ToetsResultaatEnt`
--

LOCK TABLES `ToetsResultaatEnt` WRITE;
/*!40000 ALTER TABLE `ToetsResultaatEnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ToetsResultaatEnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TussenPersoon`
--

DROP TABLE IF EXISTS `TussenPersoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TussenPersoon` (
  `idTussenPersoon` int(11) NOT NULL,
  `RefContactPersoonData` int(11) DEFAULT NULL COMMENT 'Referentie entiteit \n\nGeeft de naam van de entiteit waarin de NAW gegevens van de contactpersoon zijn opgenomen.',
  `BedrijfsNaam` varchar(100) NOT NULL COMMENT 'De bedrijfsnaam.',
  `TussenpersoonNr` varchar(35) NOT NULL COMMENT 'Nummer waaronder tussenpersoon geregistreerd is bij de ontvanger, waaraan de aanvraag gericht is.',
  `AanvullendeVerzendwijze` varchar(45) DEFAULT NULL COMMENT 'Waardelijst AanvullendeVerzendwijzeType\nGeeft de aanvullende verzendwijze van de tussenpersoon weer, naast de verplichte HDN verzendwijze, op welke wijze het aangevraagde geretourneerd dient te worden. Per 1-5-2013 is verzending via HDN een verplichting.\n',
  `TelefoonNrWerk` decimal(11,0) NOT NULL COMMENT 'Telefoonnummer waarop de partij per telefoon te bereiken is. (Alleen cijfers toegestaan, geen spatie of andere leestekens, 1 of 2 voorloopnullen toegestaan, geen beperking op aantal cijfers)',
  `E-mailAdres` varchar(100) DEFAULT NULL,
  `TelefoonNrMobiel` decimal(11,0) NOT NULL COMMENT 'Telefoonnummer waarop de partij per telefoon te bereiken is. (Alleen cijfers toegestaan, geen spatie of andere leestekens, 1 of 2 voorloopnullen toegestaan, geen beperking op aantal cijfers)',
  `AFMRegistratieNr` varchar(35) NOT NULL COMMENT 'Het AFM nummer waaronder de bemiddelende tussenpersoon is ingeschreven zoals bedoeld in de\nWFT.',
  `Internetadres` varchar(100) DEFAULT NULL COMMENT 'Het internetadres (homepage) van de tussenpersoon exclusief http://',
  `ServiceProvider` int(11) NOT NULL COMMENT 'Een {service provider} is een [rechtspersoon], die ondersteuning biedt aan [intermediairs] en kan werken namens een [aanbieder].',
  `IndicatieActiefJN` varchar(1) DEFAULT NULL COMMENT 'J/N',
  PRIMARY KEY (`idTussenPersoon`),
  KEY `fk_TussenPersoon_PartijNAWData1` (`RefContactPersoonData`),
  KEY `fk_TussenPersoon_ServiceProvider1` (`ServiceProvider`),
  CONSTRAINT `fk_TussenPersoon_PartijNAWData1` FOREIGN KEY (`RefContactPersoonData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TussenPersoon_ServiceProvider1` FOREIGN KEY (`ServiceProvider`) REFERENCES `ServiceProvider` (`idServiceProvider`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TussenPersoon`
--

LOCK TABLES `TussenPersoon` WRITE;
/*!40000 ALTER TABLE `TussenPersoon` DISABLE KEYS */;
/*!40000 ALTER TABLE `TussenPersoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uitkering`
--

DROP TABLE IF EXISTS `Uitkering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uitkering` (
  `idUitkering` int(11) NOT NULL,
  `SoortUitkering` varchar(255) NOT NULL COMMENT 'Waardelijst SoortUitkeringType\nGeeft het soort uitkering aan.',
  `AOSoort` varchar(255) DEFAULT NULL COMMENT 'Waardelijst AoSoortType\n\nGeeft aan of de arbeidsongeschiktheidsuitkering vast of tijdelijk is. Voor tijdelijk kan gelezen worden herkeurbaar of herbeoordeelbaar. Voor vast geldt dat deze niet herkeurbaar of herbeoordeelbaar is.\n\nConditie:\nAOSoort is verplicht als SoortUitkering heeft waarde (WIA )',
  `SoortVerzekering` varchar(255) DEFAULT NULL COMMENT 'Waardelijst SoortVerzekeringType\n\nGeeft het soort verzekering weer.\nConditie:\nSoortVerzekering is verplicht als\nSoortUitkering heeft waarde (Verzekering)',
  `BrutoJaarUitkering` decimal(14,2) NOT NULL COMMENT 'De bruto basisuitkering excl. vakantietoeslag enz. Het brutojaarbedrag van gebruikelijke aantal uitkeringsweken behorende bij de uitkering.\nConditie:\nBrutoJaarUitkering is groter dan 0.00',
  `VakantieToeslag` decimal(14,2) NOT NULL COMMENT 'Gemiddeld bedrag aan vakantiegeld op jaarbasis',
  `IngangsDtUitkering` datetime NOT NULL COMMENT 'Geeft de ingangsdatum van de uitkering aan.',
  `EindDtUitkering` datetime DEFAULT NULL COMMENT 'Geeft de einddatum van de uitkering aan.',
  `VolledigeAOWOpbouwJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of er sprake is van een volledige AOW opbouw. (Wel of geen korting op AOW i.v.m. woonachtig zijn buiten Nederland).',
  `AantalAOWJaren` decimal(2,0) DEFAULT NULL COMMENT 'Geeft aan hoeveel jaar AOW er maximaal opgebouwd kan worden tot de AOW leeftijd.\n\nConditie:\nAantalAOWJaren is verplicht als VolledigeAOWOpbouwJN is onwaar',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst LandType\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten.\n',
  `PctInkomenMeetellen` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het percentage van het inkomen dat meegeteld moet worden ter bepaling van de leencapaciteit. Alleen opgeven als afwijkt van 100%.',
  `DuurInMndMeetellen` decimal(14,2) DEFAULT NULL COMMENT 'Geeft de specifieke looptijd in maanden waar een percentage van het inkomen moet meegeteld worden ter bepaling van de leencapaciteit. Alleen opgeven indien niet gelijk is aan duur hypotheek.',
  `Inkomsten_idInkomsten` int(11) NOT NULL,
  PRIMARY KEY (`idUitkering`),
  KEY `fk_Uitkering_Inkomsten1` (`Inkomsten_idInkomsten`),
  CONSTRAINT `fk_Uitkering_Inkomsten1` FOREIGN KEY (`Inkomsten_idInkomsten`) REFERENCES `Inkomsten` (`idInkomsten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uitkering`
--

LOCK TABLES `Uitkering` WRITE;
/*!40000 ALTER TABLE `Uitkering` DISABLE KEYS */;
/*!40000 ALTER TABLE `Uitkering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vergoeding`
--

DROP TABLE IF EXISTS `Vergoeding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vergoeding` (
  `idVergoeding` int(11) NOT NULL COMMENT 'Waarden TofM',
  `MaatschappijType` varchar(255) DEFAULT NULL COMMENT 'Waardetabel MaatschappijType',
  `TP_of_Maatschappij` tinyint(1) NOT NULL,
  `Vergoedingcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVergoeding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vergoeding`
--

LOCK TABLES `Vergoeding` WRITE;
/*!40000 ALTER TABLE `Vergoeding` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vergoeding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vermogen`
--

DROP TABLE IF EXISTS `Vermogen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vermogen` (
  `idVermogen` int(11) NOT NULL,
  `SoortVermogen` int(11) NOT NULL COMMENT 'Waardelijst SoortVermogenType\nDe aard van het vermogen waaruit inkomsten worden verkregen.',
  `BrutoJaarInkBoxDrie` decimal(14,2) NOT NULL COMMENT 'Geeft het bedrag aan bruto jaarinkomen uit vermogen mee. Inkomsten die de consument vrij kan besteden zonder dat de vermogensbron wordt aangetast. Dit inkomen kan dienen ter bepaling van de maximale leencapaciteit (conform gedragscode CHF).\n\nConditie:\nBrutoJaarInkBoxDrie is groter dan 0.00',
  `IngangsDtBrutoJaarInkBoxDrie` datetime NOT NULL COMMENT 'Geeft de ingangsdatum van de inkomsten in Box drie aan.',
  `EindDtBrutoJaarInkBoxDrie` datetime DEFAULT NULL COMMENT 'Geeft de eindatum van ontvangst van inkomsten uit box drie.',
  `LandBelastingVerplichting` varchar(255) DEFAULT NULL COMMENT 'Waardelijst Landtype\nLand waarin belastingverplichting geldt voor alle onderliggende inkomsten.',
  `PctInkomenMeetellen` decimal(14,3) DEFAULT NULL COMMENT 'Geeft het percentage van het inkomen dat meegeteld moet worden ter bepaling van de leencapaciteit. Alleen opgeven als afwijkt van 100%.',
  `DuurInMndMeetellen` decimal(3,0) DEFAULT NULL COMMENT 'Geeft de specifieke looptijd in maanden waar een percentage van het inkomen moet meegeteld worden ter bepaling van de leencapaciteit. Alleen opgeven indien niet gelijk is aan duur hypotheek.',
  `VerpandVermogenJN` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de opgegeven inkomsten uit vermogen verpand zijn.',
  `Inkomsten_idInkomsten` int(11) NOT NULL,
  PRIMARY KEY (`idVermogen`),
  KEY `fk_Vermogen_Inkomsten1` (`Inkomsten_idInkomsten`),
  CONSTRAINT `fk_Vermogen_Inkomsten1` FOREIGN KEY (`Inkomsten_idInkomsten`) REFERENCES `Inkomsten` (`idInkomsten`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vermogen`
--

LOCK TABLES `Vermogen` WRITE;
/*!40000 ALTER TABLE `Vermogen` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vermogen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Verplichtingen`
--

DROP TABLE IF EXISTS `Verplichtingen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Verplichtingen` (
  `idVerplichtingen` int(11) NOT NULL,
  `VerplichtingLopendJN` tinyint(1) NOT NULL COMMENT 'Geeft aan of het hier een nieuw af te sluiten consumptieve lening betreft die derhalve nog niet bekend is bij BKR maar wel meegenomen dient te worden in de risicobepaling.',
  `NrBestaandContract` varchar(100) DEFAULT NULL COMMENT 'Contract, rekening of overeenkomstnummer van het bestaande / lopende contract.',
  `Maatschappij` int(11) DEFAULT NULL COMMENT 'Waardelijst MaatschappijType\nUnieke HDN code van financiële instelling.',
  `MaatschappijOmschr` varchar(100) DEFAULT NULL COMMENT 'Vrije omschrijving van de maatschappij niet voorkomend in de keuzelijst "MaatschappijType". Alleen vullen indien keuze niet voorkomt in keuzelijst.\n\nConditie:\nMaatschappijOmschr is verplicht als\nMaatschappij heeft waarde (Anders)',
  `Verplichting` varchar(255) NOT NULL COMMENT 'Waardelijst VerplichtingType\nOmschrijving van het soort verplichting.',
  `VerplichtingOmschr` varchar(100) DEFAULT NULL COMMENT 'Vrije omschrijving van het soort verplichting. Alleen vullen indien niet voorkomt in keuzelijst. Mag alleen gebruikt worden indien de omschrijving niet in de keuzelijst voorkomt.\n\nConditie:\nVerplichtingOmschr is verplicht als\nVerplichting heeft waarde (Overig)',
  `VerplichtingPerJaar` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het bruto bedrag dat per jaar aan de verplichting moet worden voldaan (aan rente en aflossing).\nConditie:\nVerplichtingPerJaar is verplicht als\nVerplichting heeft waarde\n(Alimentatieverplichting t.g.v. kinderen,\nAlimentatieverplichting t.g.v. partner,\nPensioenpremie t.l.v. partij, Aflopend krediet of lening, Bestaande hypotheek, Lening bij werkgever, Verzendhuiskrediet )',
  `VerplichtingPerJaarNieuw` decimal(14,2) DEFAULT NULL COMMENT 'Geef het nieuwe jaarlijkse verplichtingbedrag na de gedeeltelijke aflossing, dat bij passeren van toepassing is.',
  `VerplichtingBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Geeft de hoogte van het actuele kredietbedrag (huidig schuldrestant) aan van het niet-doorlopend krediet.',
  `OorspronkelijkKredietBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Het uitstaande bedrag van het lopende krediet bij aangaan van het nieuwe krediet.',
  `LimietDoorlopendKrediet` decimal(14,2) DEFAULT NULL COMMENT 'Het bedrag van de limiet van het doorlopend krediet.\nConditie:\nLimietDoorlopendKrediet is verplicht als Verplichting heeft waarde (Doorlopend krediet )',
  `VerplichtingInMnd` decimal(3,0) DEFAULT NULL COMMENT 'Aantal maanden dat de aanvrager verwacht nog aan de verplichting te moeten voldoen (resterende looptijd) Mag niet negatief zijn.',
  `Aflossing` tinyint(1) DEFAULT NULL COMMENT 'Geeft aan of de verplichting wordt afgelost voor het passeren van de hypotheek',
  `AflosBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Geeft de hoogte van het af te lossen bedrag aan (inclusief evt. boete voor vervroegde aflossing)\n\nConditie:\nAflosBedrag is verplicht als AfgelostDoorHypotheek is waar',
  `BoeteVervroegdeAflossing` decimal(14,2) DEFAULT NULL COMMENT 'Geeft het bedrag van de boete bij vervroegde aflossing. Dit  bedrag is ook opgenomen in het totaal aflosbedrag in het veld AflosBedrag.',
  `AfgelostDoorHypotheek` tinyint(1) NOT NULL COMMENT 'Geeft aan of  de verplichting zal worden afgelost door de nieuwe hypotheek (consumptief deel).',
  `PctConsumptief` decimal(14,3) DEFAULT NULL COMMENT 'Het percentage van het leenbedrag dat consumptief is (niet fiscaal aftrekbaar)',
  `ExtraAfgelostBedrag` decimal(14,2) DEFAULT NULL COMMENT 'Het bedrag dat bovenop het reguliere aflosbedrag is terugbetaald (bijvoorbeeld bij afbetaling van studieschulden).',
  `HypotheekGever_idHypotheekgever` int(11) NOT NULL,
  PRIMARY KEY (`idVerplichtingen`),
  KEY `fk_Verplichtingen_HypotheekGever1` (`HypotheekGever_idHypotheekgever`),
  CONSTRAINT `fk_Verplichtingen_HypotheekGever1` FOREIGN KEY (`HypotheekGever_idHypotheekgever`) REFERENCES `HypotheekGever` (`idHypotheekgever`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Verplichtingen`
--

LOCK TABLES `Verplichtingen` WRITE;
/*!40000 ALTER TABLE `Verplichtingen` DISABLE KEYS */;
/*!40000 ALTER TABLE `Verplichtingen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Verzekerde`
--

DROP TABLE IF EXISTS `Verzekerde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Verzekerde` (
  `idVerzekerde` int(11) NOT NULL,
  `BurgerlijkeStaat` varchar(255) NOT NULL COMMENT 'Waardelijst BurgerlijkeStaatType\n\n',
  `Beroep` varchar(35) DEFAULT NULL,
  `RokerJN` tinyint(1) NOT NULL,
  `OoitGerooktJN` tinyint(1) DEFAULT NULL,
  `RokenDtTotWanneer` datetime DEFAULT NULL,
  `GoedeGezondheidJN` tinyint(1) DEFAULT NULL,
  `GezondeLevensstijlJN` tinyint(1) DEFAULT NULL,
  `LengteInCm` decimal(3,0) DEFAULT NULL,
  `GewichtInKg` decimal(3,0) DEFAULT NULL,
  `RelTotVerzNemer` varchar(255) DEFAULT NULL COMMENT 'Waardelijst RelTotVerzNemerType\n',
  `VoorlopigeDekkingJN` tinyint(1) DEFAULT NULL,
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  `RefPartijNAWData` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVerzekerde`),
  KEY `fk_Verzekerde_FinancieleDekking1` (`FinancieleDekking_idFinancieleDekking`),
  KEY `fk_Verzekerde_PartijNAWData1` (`RefPartijNAWData`),
  CONSTRAINT `fk_Verzekerde_FinancieleDekking1` FOREIGN KEY (`FinancieleDekking_idFinancieleDekking`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Verzekerde_PartijNAWData1` FOREIGN KEY (`RefPartijNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Verzekerde`
--

LOCK TABLES `Verzekerde` WRITE;
/*!40000 ALTER TABLE `Verzekerde` DISABLE KEYS */;
/*!40000 ALTER TABLE `Verzekerde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VerzekerdeBedragen`
--

DROP TABLE IF EXISTS `VerzekerdeBedragen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VerzekerdeBedragen` (
  `idVerzekerdeBedragen` int(11) NOT NULL,
  `SoortVerzekerdKap` int(11) NOT NULL COMMENT 'Waardelijst SoortVerzekerdKapType',
  `VerzekerdKap` decimal(14,2) DEFAULT NULL COMMENT 'VerzekerdKap is verplicht als\nSoortVerzekerdKap heeft waarde (Verzekerd bedrag bij overlijden, Bedrag bij leven/expiratie/prognosekapitaal)',
  `WaarvanGegarandeerd` decimal(14,2) DEFAULT NULL,
  `VerzekerdKap2` decimal(14,2) DEFAULT NULL,
  `BelastingBox` int(11) DEFAULT NULL COMMENT 'Waardelijst BelastingBoxType\n',
  `Hybridedeel` int(11) DEFAULT NULL COMMENT 'Waardelijst HybrideDeelType\n',
  `CodeUitkering` int(11) DEFAULT NULL COMMENT 'Waardelijst CodeUitkeringType',
  `Dekkingscode` int(11) DEFAULT NULL COMMENT 'Waardelijst DekkingscodeType',
  `VerzekerdPct` decimal(14,3) DEFAULT NULL COMMENT 'Conditie:\nVerzekerdPct is verplicht als\nSoortVerzekerdKap heeft waarde\n(Verzekerd percentage bij overlijden )',
  `VerzekerdPct2` decimal(14,3) DEFAULT NULL,
  `AanvangNaIngangsDtInMnd` decimal(3,0) DEFAULT NULL,
  `DuurInMnd` decimal(3,0) DEFAULT NULL,
  `PercentageMutatie` decimal(14,3) DEFAULT NULL,
  `EindWaardeDekking` decimal(14,2) DEFAULT NULL,
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  PRIMARY KEY (`idVerzekerdeBedragen`),
  KEY `fk_VerzekerdeBedragen_FinancieleDekking1` (`FinancieleDekking_idFinancieleDekking`),
  CONSTRAINT `fk_VerzekerdeBedragen_FinancieleDekking1` FOREIGN KEY (`FinancieleDekking_idFinancieleDekking`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VerzekerdeBedragen`
--

LOCK TABLES `VerzekerdeBedragen` WRITE;
/*!40000 ALTER TABLE `VerzekerdeBedragen` DISABLE KEYS */;
/*!40000 ALTER TABLE `VerzekerdeBedragen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VerzekeringNemer`
--

DROP TABLE IF EXISTS `VerzekeringNemer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VerzekeringNemer` (
  `idVerzekeringNemer` int(11) NOT NULL,
  `RefPartijNAWData` int(11) NOT NULL COMMENT 'Referentie entiteit',
  `BSN` decimal(9,0) DEFAULT NULL,
  `FinancieleDekking_idFinancieleDekking` int(11) NOT NULL,
  KEY `fk_VerzekeringNemer_FinancieleDekking1` (`idVerzekeringNemer`),
  KEY `fk_VerzekeringNemer_PartijNAWData1` (`RefPartijNAWData`),
  CONSTRAINT `fk_VerzekeringNemer_FinancieleDekking1` FOREIGN KEY (`idVerzekeringNemer`) REFERENCES `FinancieleDekking` (`idFinancieleDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_VerzekeringNemer_PartijNAWData1` FOREIGN KEY (`RefPartijNAWData`) REFERENCES `PartijNAWData` (`idPartijNAWData`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VerzekeringNemer`
--

LOCK TABLES `VerzekeringNemer` WRITE;
/*!40000 ALTER TABLE `VerzekeringNemer` DISABLE KEYS */;
/*!40000 ALTER TABLE `VerzekeringNemer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voorwaarden`
--

DROP TABLE IF EXISTS `Voorwaarden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Voorwaarden` (
  `idVoorwaarden` int(11) NOT NULL COMMENT 'Out of scope\n',
  PRIMARY KEY (`idVoorwaarden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voorwaarden`
--

LOCK TABLES `Voorwaarden` WRITE;
/*!40000 ALTER TABLE `Voorwaarden` DISABLE KEYS */;
/*!40000 ALTER TABLE `Voorwaarden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Waarden`
--

DROP TABLE IF EXISTS `Waarden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Waarden` (
  `idWaarden` int(11) NOT NULL,
  `SoortWaarde` varchar(255) NOT NULL COMMENT 'Waardelijst SoortWaardeType',
  `BedragWaarde` decimal(14,2) NOT NULL,
  `BelastingBox` varchar(255) DEFAULT NULL COMMENT 'Waardelijst BelastingBoxType\n',
  `RekenRentePct` decimal(14,3) NOT NULL,
  `IngangsDtWaarde` datetime NOT NULL,
  `PeilDtWaarde` datetime DEFAULT NULL,
  `BancaireDekking_idBancaireDekking` int(11) NOT NULL,
  PRIMARY KEY (`idWaarden`),
  KEY `fk_Waarden_BancaireDekking1` (`BancaireDekking_idBancaireDekking`),
  CONSTRAINT `fk_Waarden_BancaireDekking1` FOREIGN KEY (`BancaireDekking_idBancaireDekking`) REFERENCES `BancaireDekking` (`idBancaireDekking`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Waarden`
--

LOCK TABLES `Waarden` WRITE;
/*!40000 ALTER TABLE `Waarden` DISABLE KEYS */;
/*!40000 ALTER TABLE `Waarden` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-26 10:59:25
