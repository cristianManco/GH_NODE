-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2024 a las 23:00:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bpogs_local`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicativos`
--

CREATE TABLE `aplicativos` (
  `Id` int(11) NOT NULL,
  `Aplicativo` varchar(50) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aplicativos`
--

INSERT INTO `aplicativos` (`Id`, `Aplicativo`, `Modificado`, `ModificadoPor`, `Creado`, `CreadoPor`) VALUES
(1, '123Pet', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(2, 'Zoho CRM', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(3, 'correo Office 365', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(4, 'Issabel', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(5, 'Wolkvox', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(6, 'GLPI Agente', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(7, 'Microsoft Teams', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(8, '8x8', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(9, 'Teams', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(10, 'Libre Office', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(11, 'Forticlient', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(12, 'Zoiper', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(13, 'Anydesk', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(14, 'Genesys', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(15, 'Otro', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(16, 'Vonage', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(17, 'Time doctor', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(18, 'Saleforce', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(19, 'SharePoint(Gestion Humana)', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(20, 'Correo Electronico', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(21, 'Five 9', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(22, 'Open VPN', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(23, 'Domicio Mail', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar'),
(24, 'As/400', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar', '2024-09-11 21:46:43', 'Cesar Augusto Bedoya Escobar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `Id` int(11) NOT NULL COMMENT 'Identificador único de cada área',
  `IdCEBE` int(11) DEFAULT NULL COMMENT 'Identificador de la CEBE asociada al área',
  `Abbr` varchar(10) DEFAULT NULL COMMENT 'Abreviatura del nombre del área',
  `Nombre` varchar(50) DEFAULT NULL COMMENT 'Nombre completo del área',
  `Modificado` datetime DEFAULT NULL COMMENT 'Fecha y hora de la última modificación del registro',
  `ModificadoPor` varchar(150) DEFAULT NULL COMMENT 'Usuario que realizó la última modificación',
  `Creado` datetime DEFAULT NULL COMMENT 'Fecha y hora de creación del registro',
  `CreadoPor` varchar(150) DEFAULT NULL COMMENT 'Usuario que creó el registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambiobaseempleados`
--

CREATE TABLE `cambiobaseempleados` (
  `Identificador` int(11) DEFAULT NULL,
  `IdDeTiposDeContenido` text DEFAULT NULL,
  `TipoDeContenido` text DEFAULT NULL,
  `Title` text DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPorId` int(11) DEFAULT NULL,
  `ModificadoPorId` int(11) DEFAULT NULL,
  `Owshiddenversion` int(11) DEFAULT NULL,
  `Versión` text DEFAULT NULL,
  `RutaDeAcceso` text DEFAULT NULL,
  `IdDeActivoDeCumplimientoNormativo` text DEFAULT NULL,
  `OnlyDate` datetime DEFAULT NULL,
  `TipoDeGestiónValue` text DEFAULT NULL,
  `NombreCompleto` text DEFAULT NULL,
  `CampañaNueva1` text DEFAULT NULL,
  `PorcentajeNuevoCampaña1` float DEFAULT NULL,
  `ÁreaDelCargoValue` text DEFAULT NULL,
  `Cargo` text DEFAULT NULL,
  `SalarioNuevo` float DEFAULT NULL,
  `BonificacionNueva` float DEFAULT NULL,
  `TipoDeContratoNuevoValue` text DEFAULT NULL,
  `ObservacionesEnGeneral` text DEFAULT NULL,
  `CausaDelRetiroValue` text DEFAULT NULL,
  `AutorizacionDelRetiro` text DEFAULT NULL,
  `Idioma` text DEFAULT NULL,
  `ARLNRValue` text DEFAULT NULL,
  `FechaInicioContrato` datetime DEFAULT NULL,
  `FechaVencimientoContrato` datetime DEFAULT NULL,
  `FechaInicialTraining` datetime DEFAULT NULL,
  `FechaVencimientoTraining` datetime DEFAULT NULL,
  `Id` text DEFAULT NULL,
  `FechaRetiro` datetime DEFAULT NULL,
  `PazYSalvoValue` text DEFAULT NULL,
  `FechaPazYSalvo` datetime DEFAULT NULL,
  `CorreoCorporativo` text DEFAULT NULL,
  `Estado` text DEFAULT NULL,
  `AuxTipoGestion` text DEFAULT NULL,
  `CentroDeCosto` text DEFAULT NULL,
  `PerfilID` text DEFAULT NULL,
  `CampañaID` text DEFAULT NULL,
  `CodContrato` text DEFAULT NULL,
  `IdInfoEmpleado` float DEFAULT NULL,
  `IDBD_V2` float DEFAULT NULL,
  `LugarDeTrabajoValue` text DEFAULT NULL,
  `Ciudad` text DEFAULT NULL,
  `DepartamentoRegion` text DEFAULT NULL,
  `Pais` text DEFAULT NULL,
  `TipoDeCambioValue` text DEFAULT NULL,
  `FechaInicioCambio` datetime DEFAULT NULL,
  `FechaFinalCambio` datetime DEFAULT NULL,
  `Estado_Aprobacion` text DEFAULT NULL,
  `JefeDirecto` text DEFAULT NULL,
  `EntidadBancariaValue` text DEFAULT NULL,
  `NúmeroDeCuenta` text DEFAULT NULL,
  `HorasALaborarPorSemana` float DEFAULT NULL,
  `CambioSalario` bit(1) DEFAULT NULL,
  `EtiquetaDeColor` text DEFAULT NULL,
  `CampanaOld` text DEFAULT NULL,
  `CuentaValue` text DEFAULT NULL,
  `SalarioOld` float DEFAULT NULL,
  `CECO_Old` text DEFAULT NULL,
  `FechaReporteRenuncia` datetime DEFAULT NULL,
  `Nivel_Old` float DEFAULT NULL,
  `Nivel_New` float DEFAULT NULL,
  `MotivoRetiroValue` text DEFAULT NULL,
  `ModificadoPor` text DEFAULT NULL,
  `CreadoPor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `Id` int(11) NOT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cebe`
--

CREATE TABLE `cebe` (
  `Id` int(11) NOT NULL COMMENT 'Identificador único de cada Centro de Beneficio (CEBE)',
  `Abbr` varchar(50) DEFAULT NULL COMMENT 'Abreviatura del nombre del Centro de Beneficio',
  `Name` varchar(50) DEFAULT NULL COMMENT 'Nombre completo del Centro de Beneficio',
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centrocostos`
--

CREATE TABLE `centrocostos` (
  `Id` int(11) NOT NULL,
  `IdArea` int(11) DEFAULT NULL,
  `Cuenta` varchar(80) DEFAULT NULL,
  `Campaña` varchar(80) DEFAULT NULL,
  `CECO` varchar(10) DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `CiudadID` int(11) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `DivisionID` int(11) NOT NULL,
  `CodigoPostal` varchar(15) DEFAULT NULL,
  `Longitud` float DEFAULT NULL,
  `Latitud` float DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competenciasser`
--

CREATE TABLE `competenciasser` (
  `ID` int(11) NOT NULL,
  `CompetenciaSer` varchar(150) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleaplicativosperilcampaña`
--

CREATE TABLE `detalleaplicativosperilcampaña` (
  `IDPerfilCampaña` int(11) DEFAULT NULL,
  `IDAplicativo` int(11) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecompetenciaser`
--

CREATE TABLE `detallecompetenciaser` (
  `IDPerfilCargo` int(11) NOT NULL,
  `IDCompetenciaSer` int(11) NOT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallenivelidiomaperilcampaña`
--

CREATE TABLE `detallenivelidiomaperilcampaña` (
  `IDPerfilCampaña` int(11) DEFAULT NULL,
  `IDNivelIdioma` int(11) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallenivelidiomas`
--

CREATE TABLE `detallenivelidiomas` (
  `IdPerfilCampaña` int(11) NOT NULL,
  `IdNivelIdioma` varchar(30) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiongeografica`
--

CREATE TABLE `divisiongeografica` (
  `DivisionID` int(11) NOT NULL,
  `Division` varchar(100) NOT NULL,
  `PaisID` int(11) NOT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `Id` int(11) NOT NULL,
  `Idioma` varchar(30) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacionempleados`
--

CREATE TABLE `informacionempleados` (
  `IDRQ` text DEFAULT NULL,
  `FechaExpediciónIdentificación` datetime DEFAULT NULL,
  `Nombre` text DEFAULT NULL,
  `RHValue` text DEFAULT NULL,
  `FechaDeNacimiento` datetime DEFAULT NULL,
  `LugarNacimiento` text DEFAULT NULL,
  `DirecciónResidencia` text DEFAULT NULL,
  `Barrio` text DEFAULT NULL,
  `NumFijo` float DEFAULT NULL,
  `NumMovil` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `ContactoDeEmergencia` text DEFAULT NULL,
  `NúmeroDeCuenta` text DEFAULT NULL,
  `Beneficiarios` text DEFAULT NULL,
  `NumHijos` float DEFAULT NULL,
  `TituloObtenido` text DEFAULT NULL,
  `PerfilCargoID` float DEFAULT NULL,
  `Idioma` text DEFAULT NULL,
  `Salario` float DEFAULT NULL,
  `Bonificacion` float DEFAULT NULL,
  `Referencias` text DEFAULT NULL,
  `FechaInicioContrato` datetime DEFAULT NULL,
  `FechaInicialTraining` datetime DEFAULT NULL,
  `FechaVencimientoTraining` datetime DEFAULT NULL,
  `EmailCorporativo` text DEFAULT NULL,
  `AprobaciónDocumentos` bit(1) DEFAULT NULL,
  `AprobaciónFormularios` bit(1) DEFAULT NULL,
  `ExamenMédico` bit(1) DEFAULT NULL,
  `Afiliaciones` bit(1) DEFAULT NULL,
  `EnvíoContrato` bit(1) DEFAULT NULL,
  `FirmaContrato` bit(1) DEFAULT NULL,
  `ActivoFijo` text DEFAULT NULL,
  `Reingreso` float DEFAULT NULL,
  `Licencias` text DEFAULT NULL,
  `FechaDeRetiro` datetime DEFAULT NULL,
  `Solicitud` text DEFAULT NULL,
  `Localización` text DEFAULT NULL,
  `CapacitaciónPagada` text DEFAULT NULL,
  `PeriodoCapacitacion` text DEFAULT NULL,
  `CodContrato` text DEFAULT NULL,
  `CampañaID` text DEFAULT NULL,
  `Observaciones` text DEFAULT NULL,
  `ControlTraslado` float DEFAULT NULL,
  `ControlCorreo` float DEFAULT NULL,
  `AuxEstado` float DEFAULT NULL,
  `Aux_Solicitar_Doc` float DEFAULT NULL,
  `Estado` float DEFAULT NULL,
  `SolicitudDeDocumentos` text DEFAULT NULL,
  `ObservacionesEMedico` text DEFAULT NULL,
  `AuxRetiro` float DEFAULT NULL,
  `HabeasData` text DEFAULT NULL,
  `DescargosInvolucrados` float DEFAULT NULL,
  `DescargosHV` float DEFAULT NULL,
  `TallaCamisa` text DEFAULT NULL,
  `TallaPantalon` text DEFAULT NULL,
  `TallaCalzado` text DEFAULT NULL,
  `CentroCosto` text DEFAULT NULL,
  `ReferenciaLaboral` text DEFAULT NULL,
  `ReferenciaPersonal1` text DEFAULT NULL,
  `ReferenciaPersonal2` text DEFAULT NULL,
  `IdDeTiposDeContenido` text DEFAULT NULL,
  `TipoDeContenido` text DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `RutaDeAcceso` text DEFAULT NULL,
  `IdDeActivoDeCumplimientoNormativo` text DEFAULT NULL,
  `DuracionContratoEnMeses` float DEFAULT NULL,
  `PeriodoDePrueba` varchar(150) DEFAULT NULL,
  `FechaNotificacion` varchar(150) DEFAULT NULL,
  `JefeDirecto` text DEFAULT NULL,
  `HorasALaborarPorSemana` float DEFAULT NULL,
  `EtiquetaDeColor` text DEFAULT NULL,
  `FechaProgramaciónExamenMédico` datetime DEFAULT NULL,
  `FechaAprobaciónDeserciónExamenMédico` datetime DEFAULT NULL,
  `RecomendacionesMédicas` text DEFAULT NULL,
  `Cuenta` text DEFAULT NULL,
  `Nivel` float DEFAULT NULL,
  `CambioFoto` bit(1) DEFAULT NULL,
  `ModificadoPor` text DEFAULT NULL,
  `CreadoPor` text DEFAULT NULL,
  `Tipo De Identificación` text DEFAULT NULL,
  `N° De Identificación` text DEFAULT NULL,
  `CiudadExpedicion` text DEFAULT NULL,
  `Genero` text DEFAULT NULL,
  `Pais` text DEFAULT NULL,
  `DepartamentoEstado` text DEFAULT NULL,
  `MunicipioDeResidencia` text DEFAULT NULL,
  `EntidadBancaria` text DEFAULT NULL,
  `TipoDeCuenta` text DEFAULT NULL,
  `EPS` text DEFAULT NULL,
  `AFP` text DEFAULT NULL,
  `Cesantias` text DEFAULT NULL,
  `EstadoCivil` text DEFAULT NULL,
  `NivelAcademico` text DEFAULT NULL,
  `EstadoContrato` text DEFAULT NULL,
  `Cargo` text DEFAULT NULL,
  `AreaDelCargo` text DEFAULT NULL,
  `Campaña` text DEFAULT NULL,
  `ValidaciónDeReferencias` text DEFAULT NULL,
  `TipoContrat` text DEFAULT NULL,
  `Deserción` text DEFAULT NULL,
  `LugarDeTrabajo` text DEFAULT NULL,
  `Ubicación` text DEFAULT NULL,
  `EnvíoExámenMédico` text DEFAULT NULL,
  `ModeloRopa` text DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `Ciudad` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientopersonas`
--

CREATE TABLE `movimientopersonas` (
  `Id` varchar(50) NOT NULL,
  `IdPersona` bigint(20) NOT NULL,
  `PerfilCargoID` float DEFAULT NULL,
  `EmailCorporativo` varchar(100) DEFAULT NULL,
  `ActivoFijo` varchar(500) DEFAULT NULL,
  `Licencias` varchar(500) DEFAULT NULL,
  `Salario` float DEFAULT NULL,
  `Bonificacion` float DEFAULT NULL,
  `EntidadBancaria` varchar(100) DEFAULT NULL,
  `TipoDeCuenta` varchar(30) DEFAULT NULL,
  `NúmeroDeCuenta` varchar(30) DEFAULT NULL,
  `AreaDelCargo` varchar(30) DEFAULT NULL,
  `Cuenta` varchar(50) DEFAULT NULL,
  `Campaña` varchar(50) DEFAULT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `Nivel` float DEFAULT NULL,
  `JefeDirecto` varchar(100) DEFAULT NULL,
  `LugarDeTrabajo` varchar(50) DEFAULT NULL,
  `TipoContrato` varchar(50) DEFAULT NULL,
  `Reingreso` float DEFAULT NULL,
  `DuracionContratoEnMeses` float DEFAULT NULL,
  `FechaVencimientoContrato` datetime DEFAULT NULL,
  `Estado` varchar(10) DEFAULT NULL,
  `FechaInicioContrato` datetime DEFAULT NULL,
  `FechaDeRetiro` datetime DEFAULT NULL,
  `HorasALaborarPorSemana` float DEFAULT NULL,
  `RequiereFormación` float DEFAULT NULL,
  `PeriodoPrueba` varchar(150) DEFAULT NULL,
  `FechaVencimientoTraining` datetime DEFAULT NULL,
  `CapacitaciónPagada` varchar(10) DEFAULT NULL,
  `ValidaciónDeReferencias` varchar(10) DEFAULT NULL,
  `ReferenciaLaboral` text DEFAULT NULL,
  `ReferenciaPersonal1` text DEFAULT NULL,
  `ReferenciaPersonal2` text DEFAULT NULL,
  `Afiliaciones` bit(1) DEFAULT NULL,
  `AfiliaciónEPS` bit(1) DEFAULT NULL,
  `EPS` varchar(100) DEFAULT NULL,
  `AfiliaciónCAJACOMPENSACIÓN` bit(1) DEFAULT NULL,
  `AfiliaciónARL` bit(1) DEFAULT NULL,
  `AfiliaciónPENSIÓN` bit(1) DEFAULT NULL,
  `AFP` varchar(100) DEFAULT NULL,
  `Cesantias` varchar(100) DEFAULT NULL,
  `Beneficiarios` varchar(50) DEFAULT NULL,
  `EstadoCivil` varchar(30) DEFAULT NULL,
  `NumHijos` float DEFAULT NULL,
  `NivelAcademico` varchar(100) DEFAULT NULL,
  `TituloObtenido` varchar(200) DEFAULT NULL,
  `Idioma` varchar(300) DEFAULT NULL,
  `ModeloRopa` varchar(50) DEFAULT NULL,
  `TallaCamisa` varchar(100) DEFAULT NULL,
  `TallaPantalon` varchar(50) DEFAULT NULL,
  `TallaCalzado` varchar(50) DEFAULT NULL,
  `SolicitudDeDocumentos` varchar(10) DEFAULT NULL,
  `AprobaciónDocumentos` bit(1) DEFAULT NULL,
  `AprobaciónFormularios` bit(1) DEFAULT NULL,
  `SolicitudExamen` varchar(10) DEFAULT NULL,
  `ExamenMédico` bit(1) DEFAULT NULL,
  `FechaProgramaciónExamenMédico` datetime DEFAULT NULL,
  `FechaAprobaciónDeserciónExamenMédico` datetime DEFAULT NULL,
  `ObservacionesMedicas` text DEFAULT NULL,
  `RecomendacionesMédicas` text DEFAULT NULL,
  `DeserciónExamenMédico` bit(1) DEFAULT NULL,
  `Deserción` varchar(50) DEFAULT NULL,
  `EnvíoContrato` bit(1) DEFAULT NULL,
  `FirmaContrato` bit(1) DEFAULT NULL,
  `Requi` varchar(30) DEFAULT NULL,
  `DescargosInvolucrados` float DEFAULT NULL,
  `DescargosHV` float DEFAULT NULL,
  `CodContrato` varchar(100) DEFAULT NULL,
  `Observaciones` text DEFAULT NULL,
  `Origen` varchar(36) NOT NULL,
  `IsSeleccionado` int(11) NOT NULL,
  `dtmSeleccionado` datetime DEFAULT NULL,
  `IsPendienteContratar` int(11) NOT NULL,
  `dtmPendienteContratar` datetime DEFAULT NULL,
  `IsInformationEmpleados` int(11) NOT NULL,
  `dtmInformacionEmpleado` datetime DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `ControlCorreo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelacademicoprofesional`
--

CREATE TABLE `nivelacademicoprofesional` (
  `Id` int(11) NOT NULL,
  `IdNivelAcademico` int(11) DEFAULT NULL,
  `NivelFormacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Nivel` int(11) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelesacademicos`
--

CREATE TABLE `nivelesacademicos` (
  `Id` int(11) NOT NULL,
  `NivelAcademico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelesidioma`
--

CREATE TABLE `nivelesidioma` (
  `Id` int(11) NOT NULL,
  `IdIdioma` int(11) DEFAULT NULL,
  `NivelEscEuro` varchar(10) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `PaisID` int(11) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  `Sigla` varchar(3) NOT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(100) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pendientescontratar`
--

CREATE TABLE `pendientescontratar` (
  `FechaExpediciónIdentificación` datetime DEFAULT NULL,
  `CiudadExpedicion` text DEFAULT NULL,
  `Nombre` text DEFAULT NULL,
  `FechaDeNacimiento` datetime DEFAULT NULL,
  `LugarNacimiento` text DEFAULT NULL,
  `DirecciónResidencia` text DEFAULT NULL,
  `DepartamentoEstado` text DEFAULT NULL,
  `Municipio` text DEFAULT NULL,
  `Barrio` text DEFAULT NULL,
  `NumFijo` float DEFAULT NULL,
  `NumFijo0` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `ContactoDeEmergencia` text DEFAULT NULL,
  `NúmeroDeCuenta` text DEFAULT NULL,
  `Beneficiarios` text DEFAULT NULL,
  `NumHijos` float DEFAULT NULL,
  `TituloObtenido` text DEFAULT NULL,
  `TallaCamisa` text DEFAULT NULL,
  `TallaPantalon` text DEFAULT NULL,
  `TallaCalzado` text DEFAULT NULL,
  `PerfilCargoID` text DEFAULT NULL,
  `Cargo` text DEFAULT NULL,
  `AreaDelCargo` text DEFAULT NULL,
  `Idioma` text DEFAULT NULL,
  `Salario` float DEFAULT NULL,
  `Bonificacion` float DEFAULT NULL,
  `Referencias` text DEFAULT NULL,
  `FechaInicioContrato` datetime DEFAULT NULL,
  `TipoContrato` text DEFAULT NULL,
  `FechaInicialTraining` datetime DEFAULT NULL,
  `FechaVencimientoTraining` datetime DEFAULT NULL,
  `EmailCorporativo` text DEFAULT NULL,
  `AprobaciónDocumentos` bit(1) DEFAULT NULL,
  `AprobaciónFormularios` bit(1) DEFAULT NULL,
  `ExamenMédico` bit(1) DEFAULT NULL,
  `Afiliaciones` bit(1) DEFAULT NULL,
  `EnvíoContrato` bit(1) DEFAULT NULL,
  `FirmaContrato` bit(1) DEFAULT NULL,
  `ActivoFijo` text DEFAULT NULL,
  `Reingreso` float DEFAULT NULL,
  `Licencias` text DEFAULT NULL,
  `FechaDeRetiro` datetime DEFAULT NULL,
  `SolicitudDeEquipo` text DEFAULT NULL,
  `LugarDeTrabajo` text DEFAULT NULL,
  `CapacitaciónPagada` text DEFAULT NULL,
  `PeriodoCapacitacion` text DEFAULT NULL,
  `CodContrato` text DEFAULT NULL,
  `CampañaID` text DEFAULT NULL,
  `Observaciones` text DEFAULT NULL,
  `ControlTraslado` float DEFAULT NULL,
  `ControlCorreo` float DEFAULT NULL,
  `Aux_Solicitar_Doc` float DEFAULT NULL,
  `SolicitudDeDocumentos` text DEFAULT NULL,
  `AuxEstado` float DEFAULT NULL,
  `Estado` text DEFAULT NULL,
  `NContratados` float DEFAULT NULL,
  `NCandidatos` float DEFAULT NULL,
  `NDContratacion` float DEFAULT NULL,
  `NDSeleccion` float DEFAULT NULL,
  `ObservacionesEMedico` text DEFAULT NULL,
  `Auxselección` float DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `IdDeTiposDeContenido` text DEFAULT NULL,
  `TipoDeContenido` text DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `RutaDeAcceso` text DEFAULT NULL,
  `IdDeActivoDeCumplimientoNormativo` text DEFAULT NULL,
  `CentroCosto` text DEFAULT NULL,
  `ReferenciaLaboral` text DEFAULT NULL,
  `ReferenciaPersonal1` text DEFAULT NULL,
  `ReferenciaPersonal2` text DEFAULT NULL,
  `DuracionContratoEnMeses` float DEFAULT NULL,
  `FechaVencimientoContrato` datetime DEFAULT NULL,
  `PeriodoPrueba` varchar(150) DEFAULT NULL,
  `JefeDirecto` text DEFAULT NULL,
  `HorasALaborarPorSemana` float DEFAULT NULL,
  `EtiquetaDeColor` text DEFAULT NULL,
  `AfiliaciónEPS` bit(1) DEFAULT NULL,
  `AfiliaciónCAJACOMPENSACIÓN` bit(1) DEFAULT NULL,
  `AfiliaciónARL` bit(1) DEFAULT NULL,
  `AfiliaciónPENSIÓN` bit(1) DEFAULT NULL,
  `FechaProgramaciónExamenMédico` datetime DEFAULT NULL,
  `FechaAprobaciónDeserciónExamenMédico` datetime DEFAULT NULL,
  `RecomendacionesMédicas` text DEFAULT NULL,
  `Aux_Estado` float DEFAULT NULL,
  `ModificadoPor` text DEFAULT NULL,
  `CreadoPor` text DEFAULT NULL,
  `ID_Requisicion` text DEFAULT NULL,
  `TipoDeIdentificación` text DEFAULT NULL,
  `N° De Identificación` text DEFAULT NULL,
  `Genero` text DEFAULT NULL,
  `RH` text DEFAULT NULL,
  `EntidadBancaria` text DEFAULT NULL,
  `TipoDeCuenta` text DEFAULT NULL,
  `EPS` text DEFAULT NULL,
  `AFP` text DEFAULT NULL,
  `Cesantias` text DEFAULT NULL,
  `EstadoCivil` text DEFAULT NULL,
  `NivelAcademico` text DEFAULT NULL,
  `ModeloRopa` text DEFAULT NULL,
  `EstadoContrato` text DEFAULT NULL,
  `Campaña` text DEFAULT NULL,
  `ValidaciónDeReferencias` text DEFAULT NULL,
  `Deserción` text DEFAULT NULL,
  `Ubicación` text DEFAULT NULL,
  `EnvíoExámenMédico` text DEFAULT NULL,
  `PaísDeResidencia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilcampaña`
--

CREATE TABLE `perfilcampaña` (
  `ID` int(11) NOT NULL,
  `IDCentroCosto` int(11) NOT NULL,
  `IDPerfilCargo` int(11) NOT NULL,
  `IDPerfilEquipo` int(11) NOT NULL,
  `Salario` decimal(19,4) DEFAULT NULL,
  `Bonificacion` float DEFAULT NULL,
  `Control_Aprobacion` int(11) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Dias_de_capacitacion` int(11) DEFAULT NULL,
  `Otro_Aplicativo` text DEFAULT NULL,
  `Riesgo` float DEFAULT NULL,
  `Requiere_Formacion` bit(1) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilcargo`
--

CREATE TABLE `perfilcargo` (
  `ID` int(11) NOT NULL,
  `IdCargo` int(11) NOT NULL,
  `IdNivel` int(11) NOT NULL,
  `IdCargo_Reporta` int(11) NOT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Objetivo_del_Cargo` text DEFAULT NULL,
  `Nivel_Academico_Min` varchar(50) DEFAULT NULL,
  `Nivel_Academico` varchar(50) DEFAULT NULL,
  `Area_de_Conocimiento` varchar(200) DEFAULT NULL,
  `Meses_de_experiencia` int(11) DEFAULT NULL,
  `Competencias_tecnicas` text DEFAULT NULL,
  `Funciones_del_cargo` text DEFAULT NULL,
  `Indicadores` text DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `Creado_por` varchar(50) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `Modificado_por` varchar(50) DEFAULT NULL,
  `Aprobacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilequipo`
--

CREATE TABLE `perfilequipo` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `Id` bigint(20) NOT NULL,
  `NumIdentificación` text DEFAULT NULL,
  `TipoIdentificación` text DEFAULT NULL,
  `RH` text DEFAULT NULL,
  `FechaDeNacimiento` datetime DEFAULT NULL,
  `LugarNacimiento` text DEFAULT NULL,
  `Genero` text DEFAULT NULL,
  `FechaExpediciónIdentificación` datetime DEFAULT NULL,
  `CiudadExpedicion` text DEFAULT NULL,
  `Nombre` text DEFAULT NULL,
  `NumFijo` float DEFAULT NULL,
  `NumMovil` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `DirecciónResidencia` text DEFAULT NULL,
  `ContactoDeEmergencia` text DEFAULT NULL,
  `Pais` text DEFAULT NULL,
  `DepartamentoEstado` text DEFAULT NULL,
  `MunicipioDeResidencia` text DEFAULT NULL,
  `Barrio` text DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` text DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisiciones`
--

CREATE TABLE `requisiciones` (
  `Id` int(11) NOT NULL,
  `IDCampaña` int(11) NOT NULL,
  `IdSites` int(11) NOT NULL,
  `CiudadID` int(11) DEFAULT NULL,
  `Salario` decimal(19,4) DEFAULT NULL,
  `TipoDeVinculación` text DEFAULT NULL,
  `Bonificación` float DEFAULT NULL,
  `FechaSugeridaDeIngreso` date DEFAULT NULL,
  `Comision` bit(1) DEFAULT NULL,
  `Horario` text DEFAULT NULL,
  `DíasDeCapacitación` float DEFAULT NULL,
  `HoraDeInicio` time DEFAULT NULL,
  `HoraDeFinalizacion` time DEFAULT NULL,
  `TipoDeTurno` text DEFAULT NULL,
  `CapacitaciónPagada` bit(1) DEFAULT NULL,
  `Justificación` text DEFAULT NULL,
  `Observaciones` text DEFAULT NULL,
  `CantidadDeVacantes` float DEFAULT NULL,
  `NCandidatos` float DEFAULT NULL,
  `NContratados` float DEFAULT NULL,
  `FechaInicioContrato` date DEFAULT NULL,
  `FechaTentativaCierreRQ` date DEFAULT NULL,
  `IDSolicitud` text DEFAULT NULL,
  `DuracionContratoEnMeses` float DEFAULT NULL,
  `HorasALaborarPorSemana` text DEFAULT NULL,
  `EstadoRequisicion` text DEFAULT NULL,
  `Tiempo_Contratación` text DEFAULT NULL,
  `TipoDeConvocatoria` text DEFAULT NULL,
  `Cierre_Seleccionados` bit(1) DEFAULT NULL,
  `RequiereFormación` bit(1) DEFAULT NULL,
  `FechaCierreRequisición` date DEFAULT NULL,
  `FechaCierreSeleccionados` date DEFAULT NULL,
  `TiempoDíasCierreSeleccionados` text DEFAULT NULL,
  `JustificacionRQ` text DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` text DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seleccionados`
--

CREATE TABLE `seleccionados` (
  `Modificado` datetime DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `RutaDeAcceso` varchar(255) DEFAULT NULL,
  `IdDeActivoDeCumplimientoNormativo` varchar(255) DEFAULT NULL,
  `Cargo` varchar(255) DEFAULT NULL,
  `Idioma` varchar(255) DEFAULT NULL,
  `FechaInicioContrato` datetime DEFAULT NULL,
  `FechaVencimientoContrato` datetime DEFAULT NULL,
  `CampañaID` varchar(255) DEFAULT NULL,
  `JefeDirecto` varchar(255) DEFAULT NULL,
  `HorasALaborarPorSemana` float DEFAULT NULL,
  `EtiquetaDeColor` varchar(255) DEFAULT NULL,
  `ModificadoPor` varchar(255) DEFAULT NULL,
  `CreadoPor` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `NumFijo` varchar(255) DEFAULT NULL,
  `NumMovil` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PerfilCargoID` varchar(255) DEFAULT NULL,
  `AreaDelCargo` varchar(255) DEFAULT NULL,
  `Campaña` varchar(255) DEFAULT NULL,
  `Salario` float DEFAULT NULL,
  `Bonificacion` float DEFAULT NULL,
  `Referencias` varchar(255) DEFAULT NULL,
  `TipoContrato` varchar(255) DEFAULT NULL,
  `LugarDeTrabajo` varchar(255) DEFAULT NULL,
  `CapacitaciónPagada` varchar(255) DEFAULT NULL,
  `Observaciones` varchar(255) DEFAULT NULL,
  `ControlTraslado` float DEFAULT NULL,
  `ControlCorreo` float DEFAULT NULL,
  `NumSeleccionados` float DEFAULT NULL,
  `NumDesercionS` float DEFAULT NULL,
  `AuxEstado` float DEFAULT NULL,
  `Aux_Solicitar_Doc` float DEFAULT NULL,
  `SolicitudDeDocumentos` varchar(255) DEFAULT NULL,
  `FechaInicioCapacitación` datetime DEFAULT NULL,
  `NumPendContra` float DEFAULT NULL,
  `Estado0` varchar(255) DEFAULT NULL,
  `ID_PendC` float DEFAULT NULL,
  `ReferenciaLaboral` varchar(255) DEFAULT NULL,
  `ReferenciaPersonal1` varchar(255) DEFAULT NULL,
  `ReferenciaPersonal2` varchar(255) DEFAULT NULL,
  `Municipio` varchar(255) DEFAULT NULL,
  `SolicitudExamen` bit(1) DEFAULT NULL,
  `ExamenMédico` bit(1) DEFAULT NULL,
  `DuracionContratoEnMeses` float DEFAULT NULL,
  `ControlPendiente` bit(1) DEFAULT NULL,
  `PeriodoPrueba` varchar(150) DEFAULT NULL,
  `SeleccionInterna` bit(1) DEFAULT NULL,
  `ValidacionDesempeñoJefe` varchar(255) DEFAULT NULL,
  `ValidacionDesempeño` bit(1) DEFAULT NULL,
  `ObservacionesMedicas` varchar(255) DEFAULT NULL,
  `DeserciónSelección` bit(1) DEFAULT NULL,
  `Requi_Anterior` varchar(255) DEFAULT NULL,
  `DiligenciaEncuesta` bit(1) DEFAULT NULL,
  `DeserciónExamenMédico` bit(1) DEFAULT NULL,
  `CandidatoNotificado` bit(1) DEFAULT NULL,
  `RequiereFormación` float DEFAULT NULL,
  `FechaProgramaciónExamenMédico` datetime DEFAULT NULL,
  `FechaAprobaciónDeserciónExamenMédico` datetime DEFAULT NULL,
  `RecomendacionesMédicas` varchar(255) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `ID_Requisicion` varchar(255) DEFAULT NULL,
  `Tipo_De_Identificación` varchar(255) DEFAULT NULL,
  `N°_De_Identificación` varchar(255) DEFAULT NULL,
  `ValidaciónDeReferencias` varchar(255) DEFAULT NULL,
  `Estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sites`
--

CREATE TABLE `sites` (
  `Id` int(11) NOT NULL,
  `Abbr` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL,
  `Modificado` datetime DEFAULT NULL,
  `ModificadoPor` varchar(150) DEFAULT NULL,
  `Creado` datetime DEFAULT NULL,
  `CreadoPor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sites`
--

INSERT INTO `sites` (`Id`, `Abbr`, `name`, `Active`, `Modificado`, `ModificadoPor`, `Creado`, `CreadoPor`) VALUES
(1, 'PATB', 'Patio Bonito', b'1', '2024-05-28 16:23:21', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:18:00', 'Cesar Augusto Bedoya Escobar'),
(2, 'AGUA', 'Aguacatala', b'1', '2024-05-28 16:23:24', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:22:00', 'Cesar Augusto Bedoya Escobar'),
(3, 'ANDE', 'Andes - Ayuntamiento', b'0', '2024-05-28 16:39:53', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:23:00', 'Cesar Augusto Bedoya Escobar'),
(4, 'HOME', 'Home Office', b'1', '2023-10-09 09:25:01', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:25:00', 'Cesar Augusto Bedoya Escobar'),
(5, 'CLI', 'Cliente', b'1', '2023-10-09 09:25:16', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:25:00', 'Cesar Augusto Bedoya Escobar'),
(6, 'SINE', 'Sinero', b'0', '2024-05-28 16:39:55', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:25:00', 'Cesar Augusto Bedoya Escobar'),
(7, 'CULT', 'Andes - Casa de la cultura', b'1', '2024-05-28 16:23:37', 'Cesar Augusto Bedoya Escobar', '2023-10-09 09:26:00', 'Cesar Augusto Bedoya Escobar');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_centrocostos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_centrocostos` (
`IdCECO` int(11)
,`CECO` varchar(10)
,`AreaCargo` varchar(50)
,`Cuenta` varchar(80)
,`Campaña` varchar(80)
,`NombreCEBE` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_perfilcampañas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_perfilcampañas` (
`ID` int(11)
,`Cargo` varchar(50)
,`AreaCargo` varchar(50)
,`CECO` varchar(10)
,`Campaña` varchar(80)
,`Estado` varchar(50)
,`Salario` decimal(19,4)
,`Bonificacion` float
,`Solicitante` varchar(150)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_perfilcargos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_perfilcargos` (
`IdPerfilCargo` int(11)
,`IdCargo` int(11)
,`Cargo` varchar(50)
,`Estado` varchar(50)
,`Nivel` int(11)
,`NivelRol` varchar(50)
,`Aprobacion` int(11)
,`Meses_de_experiencia` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_requisiciones`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_requisiciones` (
`Id` int(11)
,`Cargo` varchar(50)
,`Campaña` varchar(80)
,`Creado` datetime
,`EstadoRequisicion` text
,`FechaInicioContrato` date
,`FechaTentativaCierreRQ` date
,`CantidadDeVacantes` float
,`NCandidatos` float
,`NContratados` float
,`Salario` decimal(19,4)
,`Bonificación` float
,`LugarTrabajo` varchar(100)
,`AreaCargo` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_seleccionados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_seleccionados` (
`Modificado` datetime
,`Creado` datetime
,`RutaDeAcceso` varchar(255)
,`IdDeActivoDeCumplimientoNormativo` varchar(255)
,`Cargo` varchar(255)
,`Idioma` varchar(255)
,`FechaInicioContrato` datetime
,`FechaVencimientoContrato` datetime
,`CampanaID` varchar(255)
,`JefeDirecto` varchar(255)
,`HorasALaborarPorSemana` float
,`EtiquetaDeColor` varchar(255)
,`ModificadoPor` varchar(255)
,`CreadoPor` varchar(255)
,`Nombre` varchar(255)
,`NumFijo` varchar(255)
,`NumMovil` varchar(255)
,`Email` varchar(255)
,`PerfilCargoID` varchar(255)
,`AreaDelCargo` varchar(255)
,`Campana` varchar(255)
,`Salario` float
,`Bonificacion` float
,`Referencias` varchar(255)
,`TipoContrato` varchar(255)
,`LugarDeTrabajo` varchar(255)
,`CapacitacionPagada` varchar(255)
,`Observaciones` varchar(255)
,`ControlTraslado` float
,`ControlCorreo` float
,`NumSeleccionados` float
,`NumDesercions` float
,`AuxEstado` float
,`AuxSolicitarDoc` float
,`SolicitudDeDocumentos` varchar(255)
,`FechaInicioCapacitacion` datetime
,`NumPendContra` float
,`Estado0` varchar(255)
,`IdPendC` float
,`ReferenciaLaboral` varchar(255)
,`ReferenciaPersonal1` varchar(255)
,`ReferenciaPersonal2` varchar(255)
,`Municipio` varchar(255)
,`SolicitudExamen` bit(1)
,`ExamenMedico` bit(1)
,`DuracionContratoEnMeses` float
,`ControlPendiente` bit(1)
,`PeriodoPrueba` varchar(150)
,`SeleccionInterna` bit(1)
,`ValidacionDesempenoJefe` varchar(255)
,`ValidacionDesempeno` bit(1)
,`ObservacionesMedicas` varchar(255)
,`DesercionSeleccion` bit(1)
,`Requi_Anterior` varchar(255)
,`DiligenciaEncuesta` bit(1)
,`DesercionExamenMedico` bit(1)
,`CandidatoNotificado` bit(1)
,`RequiereFormacion` float
,`FechaProgramacionExamenMedico` datetime
,`FechaAprobacionDesercionExamenMedico` datetime
,`RecomendacionesMedicas` varchar(255)
,`ID` int(11)
,`IdRequisicion` varchar(255)
,`TipoDeIdentificacion` varchar(255)
,`NDeIdentificacion` varchar(255)
,`ValidacionDeReferencias` varchar(255)
,`Estado` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ubicaciongeografica`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ubicaciongeografica` (
`Sigla` varchar(3)
,`PaisID` int(11)
,`Pais` varchar(100)
,`DivisionID` int(11)
,`Division` varchar(100)
,`CiudadID` int(11)
,`Ciudad` varchar(100)
,`CodigoPostal` varchar(15)
,`Latitud` float
,`Longitud` float
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_centrocostos`
--
DROP TABLE IF EXISTS `vw_centrocostos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_centrocostos`  AS SELECT `cc`.`Id` AS `IdCECO`, `cc`.`CECO` AS `CECO`, `a`.`Nombre` AS `AreaCargo`, `cc`.`Cuenta` AS `Cuenta`, `cc`.`Campaña` AS `Campaña`, `cb`.`Name` AS `NombreCEBE` FROM ((`centrocostos` `cc` join `area` `a` on(`cc`.`IdArea` = `a`.`Id`)) join `cebe` `cb` on(`a`.`IdCEBE` = `cb`.`Id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_perfilcampañas`
--
DROP TABLE IF EXISTS `vw_perfilcampañas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_perfilcampañas`  AS SELECT `pcp`.`ID` AS `ID`, `c`.`Cargo` AS `Cargo`, `a`.`Nombre` AS `AreaCargo`, `cc`.`CECO` AS `CECO`, `cc`.`Campaña` AS `Campaña`, `pcp`.`Estado` AS `Estado`, `pcp`.`Salario` AS `Salario`, `pcp`.`Bonificacion` AS `Bonificacion`, `pcp`.`CreadoPor` AS `Solicitante` FROM (((((`perfilcampaña` `pcp` join `centrocostos` `cc` on(`pcp`.`IDCentroCosto` = `cc`.`Id`)) join `area` `a` on(`cc`.`IdArea` = `a`.`Id`)) join `perfilcargo` `pcg` on(`pcp`.`IDPerfilCargo` = `pcg`.`ID`)) join `cargos` `c` on(`pcg`.`IdCargo` = `c`.`Id`)) join `perfilequipo` `pe` on(`pcp`.`IDPerfilEquipo` = `pe`.`Id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_perfilcargos`
--
DROP TABLE IF EXISTS `vw_perfilcargos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_perfilcargos`  AS SELECT `pc`.`ID` AS `IdPerfilCargo`, `pc`.`IdCargo` AS `IdCargo`, `c`.`Cargo` AS `Cargo`, `pc`.`Estado` AS `Estado`, `n`.`Nivel` AS `Nivel`, `n`.`Nombre` AS `NivelRol`, `pc`.`Aprobacion` AS `Aprobacion`, `pc`.`Meses_de_experiencia` AS `Meses_de_experiencia` FROM ((`perfilcargo` `pc` join `cargos` `c` on(`pc`.`IdCargo` = `c`.`Id`)) join `niveles` `n` on(`pc`.`IdNivel` = `n`.`Id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_requisiciones`
--
DROP TABLE IF EXISTS `vw_requisiciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_requisiciones`  AS SELECT `r`.`Id` AS `Id`, `c`.`Cargo` AS `Cargo`, `cc`.`Campaña` AS `Campaña`, `r`.`Creado` AS `Creado`, `r`.`EstadoRequisicion` AS `EstadoRequisicion`, `r`.`FechaInicioContrato` AS `FechaInicioContrato`, `r`.`FechaTentativaCierreRQ` AS `FechaTentativaCierreRQ`, `r`.`CantidadDeVacantes` AS `CantidadDeVacantes`, `r`.`NCandidatos` AS `NCandidatos`, `r`.`NContratados` AS `NContratados`, `r`.`Salario` AS `Salario`, `r`.`Bonificación` AS `Bonificación`, `s`.`name` AS `LugarTrabajo`, `a`.`Nombre` AS `AreaCargo` FROM ((((((`requisiciones` `r` join `perfilcampaña` `pcp` on(`r`.`IDCampaña` = `pcp`.`ID`)) join `sites` `s` on(`r`.`IdSites` = `s`.`Id`)) join `centrocostos` `cc` on(`pcp`.`IDCentroCosto` = `cc`.`Id`)) join `perfilcargo` `pcg` on(`pcp`.`IDPerfilCargo` = `pcg`.`ID`)) join `cargos` `c` on(`pcg`.`IdCargo` = `c`.`Id`)) join `area` `a` on(`cc`.`IdArea` = `a`.`Id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_seleccionados`
--
DROP TABLE IF EXISTS `vw_seleccionados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_seleccionados`  AS SELECT `seleccionados`.`Modificado` AS `Modificado`, `seleccionados`.`Creado` AS `Creado`, `seleccionados`.`RutaDeAcceso` AS `RutaDeAcceso`, `seleccionados`.`IdDeActivoDeCumplimientoNormativo` AS `IdDeActivoDeCumplimientoNormativo`, `seleccionados`.`Cargo` AS `Cargo`, `seleccionados`.`Idioma` AS `Idioma`, `seleccionados`.`FechaInicioContrato` AS `FechaInicioContrato`, `seleccionados`.`FechaVencimientoContrato` AS `FechaVencimientoContrato`, `seleccionados`.`CampañaID` AS `CampanaID`, `seleccionados`.`JefeDirecto` AS `JefeDirecto`, `seleccionados`.`HorasALaborarPorSemana` AS `HorasALaborarPorSemana`, `seleccionados`.`EtiquetaDeColor` AS `EtiquetaDeColor`, `seleccionados`.`ModificadoPor` AS `ModificadoPor`, `seleccionados`.`CreadoPor` AS `CreadoPor`, `seleccionados`.`Nombre` AS `Nombre`, `seleccionados`.`NumFijo` AS `NumFijo`, `seleccionados`.`NumMovil` AS `NumMovil`, `seleccionados`.`Email` AS `Email`, `seleccionados`.`PerfilCargoID` AS `PerfilCargoID`, `seleccionados`.`AreaDelCargo` AS `AreaDelCargo`, `seleccionados`.`Campaña` AS `Campana`, `seleccionados`.`Salario` AS `Salario`, `seleccionados`.`Bonificacion` AS `Bonificacion`, `seleccionados`.`Referencias` AS `Referencias`, `seleccionados`.`TipoContrato` AS `TipoContrato`, `seleccionados`.`LugarDeTrabajo` AS `LugarDeTrabajo`, `seleccionados`.`CapacitaciónPagada` AS `CapacitacionPagada`, `seleccionados`.`Observaciones` AS `Observaciones`, `seleccionados`.`ControlTraslado` AS `ControlTraslado`, `seleccionados`.`ControlCorreo` AS `ControlCorreo`, `seleccionados`.`NumSeleccionados` AS `NumSeleccionados`, `seleccionados`.`NumDesercionS` AS `NumDesercions`, `seleccionados`.`AuxEstado` AS `AuxEstado`, `seleccionados`.`Aux_Solicitar_Doc` AS `AuxSolicitarDoc`, `seleccionados`.`SolicitudDeDocumentos` AS `SolicitudDeDocumentos`, `seleccionados`.`FechaInicioCapacitación` AS `FechaInicioCapacitacion`, `seleccionados`.`NumPendContra` AS `NumPendContra`, `seleccionados`.`Estado0` AS `Estado0`, `seleccionados`.`ID_PendC` AS `IdPendC`, `seleccionados`.`ReferenciaLaboral` AS `ReferenciaLaboral`, `seleccionados`.`ReferenciaPersonal1` AS `ReferenciaPersonal1`, `seleccionados`.`ReferenciaPersonal2` AS `ReferenciaPersonal2`, `seleccionados`.`Municipio` AS `Municipio`, `seleccionados`.`SolicitudExamen` AS `SolicitudExamen`, `seleccionados`.`ExamenMédico` AS `ExamenMedico`, `seleccionados`.`DuracionContratoEnMeses` AS `DuracionContratoEnMeses`, `seleccionados`.`ControlPendiente` AS `ControlPendiente`, `seleccionados`.`PeriodoPrueba` AS `PeriodoPrueba`, `seleccionados`.`SeleccionInterna` AS `SeleccionInterna`, `seleccionados`.`ValidacionDesempeñoJefe` AS `ValidacionDesempenoJefe`, `seleccionados`.`ValidacionDesempeño` AS `ValidacionDesempeno`, `seleccionados`.`ObservacionesMedicas` AS `ObservacionesMedicas`, `seleccionados`.`DeserciónSelección` AS `DesercionSeleccion`, `seleccionados`.`Requi_Anterior` AS `Requi_Anterior`, `seleccionados`.`DiligenciaEncuesta` AS `DiligenciaEncuesta`, `seleccionados`.`DeserciónExamenMédico` AS `DesercionExamenMedico`, `seleccionados`.`CandidatoNotificado` AS `CandidatoNotificado`, `seleccionados`.`RequiereFormación` AS `RequiereFormacion`, `seleccionados`.`FechaProgramaciónExamenMédico` AS `FechaProgramacionExamenMedico`, `seleccionados`.`FechaAprobaciónDeserciónExamenMédico` AS `FechaAprobacionDesercionExamenMedico`, `seleccionados`.`RecomendacionesMédicas` AS `RecomendacionesMedicas`, `seleccionados`.`ID` AS `ID`, `seleccionados`.`ID_Requisicion` AS `IdRequisicion`, `seleccionados`.`Tipo_De_Identificación` AS `TipoDeIdentificacion`, `seleccionados`.`N°_De_Identificación` AS `NDeIdentificacion`, `seleccionados`.`ValidaciónDeReferencias` AS `ValidacionDeReferencias`, `seleccionados`.`Estado` AS `Estado` FROM `seleccionados` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ubicaciongeografica`
--
DROP TABLE IF EXISTS `vw_ubicaciongeografica`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ubicaciongeografica`  AS SELECT `p`.`Sigla` AS `Sigla`, `p`.`PaisID` AS `PaisID`, `p`.`Pais` AS `Pais`, `dg`.`DivisionID` AS `DivisionID`, `dg`.`Division` AS `Division`, `c`.`CiudadID` AS `CiudadID`, `c`.`Ciudad` AS `Ciudad`, `c`.`CodigoPostal` AS `CodigoPostal`, `c`.`Latitud` AS `Latitud`, `c`.`Longitud` AS `Longitud` FROM ((`ciudades` `c` join `divisiongeografica` `dg` on(`c`.`DivisionID` = `dg`.`DivisionID`)) join `pais` `p` on(`dg`.`PaisID` = `p`.`PaisID`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicativos`
--
ALTER TABLE `aplicativos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Area_CEBE` (`IdCEBE`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `cebe`
--
ALTER TABLE `cebe`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `centrocostos`
--
ALTER TABLE `centrocostos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_CentroCostos_Area` (`IdArea`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`CiudadID`),
  ADD KEY `FK_Ciudades_DivisionGeografica` (`DivisionID`);

--
-- Indices de la tabla `competenciasser`
--
ALTER TABLE `competenciasser`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `detalleaplicativosperilcampaña`
--
ALTER TABLE `detalleaplicativosperilcampaña`
  ADD KEY `FK_DetalleAPlicativosPerilCampaña_Aplicativos` (`IDAplicativo`),
  ADD KEY `FK_DetalleAPlicativosPerilCampaña_PerfilCampaña` (`IDPerfilCampaña`);

--
-- Indices de la tabla `detallecompetenciaser`
--
ALTER TABLE `detallecompetenciaser`
  ADD KEY `FK_DetalleCompetenciaSer_CompetenciasSer` (`IDCompetenciaSer`),
  ADD KEY `FK_DetalleCompetenciaSer_PerfilCargo` (`IDPerfilCargo`);

--
-- Indices de la tabla `detallenivelidiomaperilcampaña`
--
ALTER TABLE `detallenivelidiomaperilcampaña`
  ADD KEY `FK_DetalleNivelIdiomaPerilCampaña_NivelesIdioma` (`IDNivelIdioma`),
  ADD KEY `FK_DetalleNivelIdiomaPerilCampaña_PerfilCampaña` (`IDPerfilCampaña`);

--
-- Indices de la tabla `divisiongeografica`
--
ALTER TABLE `divisiongeografica`
  ADD PRIMARY KEY (`DivisionID`),
  ADD KEY `FK_DivisionGeografica_Pais` (`PaisID`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `movimientopersonas`
--
ALTER TABLE `movimientopersonas`
  ADD PRIMARY KEY (`Id`,`IdPersona`);

--
-- Indices de la tabla `nivelacademicoprofesional`
--
ALTER TABLE `nivelacademicoprofesional`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_NivelAcademicoProfesional_NivelesAcademicos` (`IdNivelAcademico`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `nivelesacademicos`
--
ALTER TABLE `nivelesacademicos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `nivelesidioma`
--
ALTER TABLE `nivelesidioma`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`PaisID`);

--
-- Indices de la tabla `perfilcampaña`
--
ALTER TABLE `perfilcampaña`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PerfilCampaña_CentroCostos` (`IDCentroCosto`),
  ADD KEY `FK_PerfilCampaña_PerfilCargo` (`IDPerfilCargo`),
  ADD KEY `FK_PerfilCampaña_PerfilEquipo` (`IDPerfilEquipo`);

--
-- Indices de la tabla `perfilcargo`
--
ALTER TABLE `perfilcargo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PerfilCargo_Cargos` (`IdCargo`),
  ADD KEY `FK_PerfilCargo_Cargos1` (`IdCargo_Reporta`),
  ADD KEY `FK_PerfilCargo_Niveles` (`IdNivel`);

--
-- Indices de la tabla `perfilequipo`
--
ALTER TABLE `perfilequipo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `requisiciones`
--
ALTER TABLE `requisiciones`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Requisiciones_Ciudades` (`CiudadID`),
  ADD KEY `FK_Requisiciones_PerfilCampaña` (`IDCampaña`),
  ADD KEY `FK_Requisiciones_Sites` (`IdSites`);

--
-- Indices de la tabla `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicativos`
--
ALTER TABLE `aplicativos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `CiudadID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `competenciasser`
--
ALTER TABLE `competenciasser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `divisiongeografica`
--
ALTER TABLE `divisiongeografica`
  MODIFY `DivisionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivelacademicoprofesional`
--
ALTER TABLE `nivelacademicoprofesional`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivelesidioma`
--
ALTER TABLE `nivelesidioma`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `PaisID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfilequipo`
--
ALTER TABLE `perfilequipo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `FK_Area_CEBE` FOREIGN KEY (`IdCEBE`) REFERENCES `cebe` (`Id`);

--
-- Filtros para la tabla `centrocostos`
--
ALTER TABLE `centrocostos`
  ADD CONSTRAINT `FK_CentroCostos_Area` FOREIGN KEY (`IdArea`) REFERENCES `area` (`Id`);

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `FK_Ciudades_DivisionGeografica` FOREIGN KEY (`DivisionID`) REFERENCES `divisiongeografica` (`DivisionID`);

--
-- Filtros para la tabla `detalleaplicativosperilcampaña`
--
ALTER TABLE `detalleaplicativosperilcampaña`
  ADD CONSTRAINT `FK_DetalleAPlicativosPerilCampaña_Aplicativos` FOREIGN KEY (`IDAplicativo`) REFERENCES `aplicativos` (`Id`),
  ADD CONSTRAINT `FK_DetalleAPlicativosPerilCampaña_PerfilCampaña` FOREIGN KEY (`IDPerfilCampaña`) REFERENCES `perfilcampaña` (`ID`);

--
-- Filtros para la tabla `detallecompetenciaser`
--
ALTER TABLE `detallecompetenciaser`
  ADD CONSTRAINT `FK_DetalleCompetenciaSer_CompetenciasSer` FOREIGN KEY (`IDCompetenciaSer`) REFERENCES `competenciasser` (`ID`),
  ADD CONSTRAINT `FK_DetalleCompetenciaSer_PerfilCargo` FOREIGN KEY (`IDPerfilCargo`) REFERENCES `perfilcargo` (`ID`);

--
-- Filtros para la tabla `detallenivelidiomaperilcampaña`
--
ALTER TABLE `detallenivelidiomaperilcampaña`
  ADD CONSTRAINT `FK_DetalleNivelIdiomaPerilCampaña_NivelesIdioma` FOREIGN KEY (`IDNivelIdioma`) REFERENCES `nivelesidioma` (`Id`),
  ADD CONSTRAINT `FK_DetalleNivelIdiomaPerilCampaña_PerfilCampaña` FOREIGN KEY (`IDPerfilCampaña`) REFERENCES `perfilcampaña` (`ID`);

--
-- Filtros para la tabla `divisiongeografica`
--
ALTER TABLE `divisiongeografica`
  ADD CONSTRAINT `FK_DivisionGeografica_Pais` FOREIGN KEY (`PaisID`) REFERENCES `pais` (`PaisID`);

--
-- Filtros para la tabla `nivelacademicoprofesional`
--
ALTER TABLE `nivelacademicoprofesional`
  ADD CONSTRAINT `FK_NivelAcademicoProfesional_NivelesAcademicos` FOREIGN KEY (`IdNivelAcademico`) REFERENCES `nivelesacademicos` (`Id`);

--
-- Filtros para la tabla `perfilcampaña`
--
ALTER TABLE `perfilcampaña`
  ADD CONSTRAINT `FK_PerfilCampaña_CentroCostos` FOREIGN KEY (`IDCentroCosto`) REFERENCES `centrocostos` (`Id`),
  ADD CONSTRAINT `FK_PerfilCampaña_PerfilCargo` FOREIGN KEY (`IDPerfilCargo`) REFERENCES `perfilcargo` (`ID`),
  ADD CONSTRAINT `FK_PerfilCampaña_PerfilEquipo` FOREIGN KEY (`IDPerfilEquipo`) REFERENCES `perfilequipo` (`Id`);

--
-- Filtros para la tabla `perfilcargo`
--
ALTER TABLE `perfilcargo`
  ADD CONSTRAINT `FK_PerfilCargo_Cargos` FOREIGN KEY (`IdCargo`) REFERENCES `cargos` (`Id`),
  ADD CONSTRAINT `FK_PerfilCargo_Cargos1` FOREIGN KEY (`IdCargo_Reporta`) REFERENCES `cargos` (`Id`),
  ADD CONSTRAINT `FK_PerfilCargo_Niveles` FOREIGN KEY (`IdNivel`) REFERENCES `niveles` (`Id`);

--
-- Filtros para la tabla `requisiciones`
--
ALTER TABLE `requisiciones`
  ADD CONSTRAINT `FK_Requisiciones_Ciudades` FOREIGN KEY (`CiudadID`) REFERENCES `ciudades` (`CiudadID`),
  ADD CONSTRAINT `FK_Requisiciones_PerfilCampaña` FOREIGN KEY (`IDCampaña`) REFERENCES `perfilcampaña` (`ID`),
  ADD CONSTRAINT `FK_Requisiciones_Sites` FOREIGN KEY (`IdSites`) REFERENCES `sites` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- exampla data

ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_CEBE] FOREIGN KEY([IdCEBE])
REFERENCES [dbo].[CEBE] ([Id])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_CEBE]
GO
ALTER TABLE [dbo].[CentroCostos]  WITH CHECK ADD  CONSTRAINT [FK_CentroCostos_Area] FOREIGN KEY([IdArea])
REFERENCES [dbo].[Area] ([Id])
GO
ALTER TABLE [dbo].[CentroCostos] CHECK CONSTRAINT [FK_CentroCostos_Area]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK__Ciudades__Divisi__5224328E] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[DivisionGeografica] ([DivisionID])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK__Ciudades__Divisi__5224328E]
GO
ALTER TABLE [dbo].[DetalleAPlicativosPerilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_DetalleAPlicativosPerilCampaña_Aplicativos] FOREIGN KEY([IDAplicativo])
REFERENCES [dbo].[Aplicativos] ([Id])
GO
ALTER TABLE [dbo].[DetalleAPlicativosPerilCampaña] CHECK CONSTRAINT [FK_DetalleAPlicativosPerilCampaña_Aplicativos]
GO
ALTER TABLE [dbo].[DetalleAPlicativosPerilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_DetalleAPlicativosPerilCampaña_PerfilCampaña] FOREIGN KEY([IDPerfilCampaña])
REFERENCES [dbo].[PerfilCampaña] ([ID])
GO
ALTER TABLE [dbo].[DetalleAPlicativosPerilCampaña] CHECK CONSTRAINT [FK_DetalleAPlicativosPerilCampaña_PerfilCampaña]
GO
ALTER TABLE [dbo].[DetalleCompetenciaSer]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCompetenciaSer_CompetenciasSer] FOREIGN KEY([IDCompetenciaSer])
REFERENCES [dbo].[CompetenciasSer] ([ID])
GO
ALTER TABLE [dbo].[DetalleCompetenciaSer] CHECK CONSTRAINT [FK_DetalleCompetenciaSer_CompetenciasSer]
GO
ALTER TABLE [dbo].[DetalleCompetenciaSer]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCompetenciaSer_PerfilCargo] FOREIGN KEY([IDPerfilCargo])
REFERENCES [dbo].[PerfilCargo] ([ID])
GO
ALTER TABLE [dbo].[DetalleCompetenciaSer] CHECK CONSTRAINT [FK_DetalleCompetenciaSer_PerfilCargo]
GO
ALTER TABLE [dbo].[DetalleNivelIdiomaPerilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_DetalleNivelIdiomaPerilCampaña_NivelesIdioma] FOREIGN KEY([IDNivelIdioma])
REFERENCES [dbo].[NivelesIdioma] ([Id])
GO
ALTER TABLE [dbo].[DetalleNivelIdiomaPerilCampaña] CHECK CONSTRAINT [FK_DetalleNivelIdiomaPerilCampaña_NivelesIdioma]
GO
ALTER TABLE [dbo].[DetalleNivelIdiomaPerilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_DetalleNivelIdiomaPerilCampaña_PerfilCampaña] FOREIGN KEY([IDPerfilCampaña])
REFERENCES [dbo].[PerfilCampaña] ([ID])
GO
ALTER TABLE [dbo].[DetalleNivelIdiomaPerilCampaña] CHECK CONSTRAINT [FK_DetalleNivelIdiomaPerilCampaña_PerfilCampaña]
GO
ALTER TABLE [dbo].[DivisionGeografica]  WITH CHECK ADD FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[NivelAcademicoProfesional]  WITH CHECK ADD  CONSTRAINT [FK_NivelAcademicoProfesional_NivelesAcademicos] FOREIGN KEY([IdNivelAcademico])
REFERENCES [dbo].[NivelesAcademicos] ([Id])
GO
ALTER TABLE [dbo].[NivelAcademicoProfesional] CHECK CONSTRAINT [FK_NivelAcademicoProfesional_NivelesAcademicos]
GO
ALTER TABLE [dbo].[PerfilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_PerfilCampaña_CentroCostos] FOREIGN KEY([IDCentroCosto])
REFERENCES [dbo].[CentroCostos] ([Id])
GO
ALTER TABLE [dbo].[PerfilCampaña] CHECK CONSTRAINT [FK_PerfilCampaña_CentroCostos]
GO
ALTER TABLE [dbo].[PerfilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_PerfilCampaña_PerfilCargo] FOREIGN KEY([IDPerfilCargo])
REFERENCES [dbo].[PerfilCargo] ([ID])
GO
ALTER TABLE [dbo].[PerfilCampaña] CHECK CONSTRAINT [FK_PerfilCampaña_PerfilCargo]
GO
ALTER TABLE [dbo].[PerfilCampaña]  WITH CHECK ADD  CONSTRAINT [FK_PerfilCampaña_PerfilEquipo] FOREIGN KEY([IDPerfilEquipo])
REFERENCES [dbo].[PerfilEquipo] ([Id])
GO
ALTER TABLE [dbo].[PerfilCampaña] CHECK CONSTRAINT [FK_PerfilCampaña_PerfilEquipo]
GO
ALTER TABLE [dbo].[PerfilCargo]  WITH CHECK ADD  CONSTRAINT [FK_PerfilCargo_Cargos] FOREIGN KEY([IdCargo])
REFERENCES [dbo].[Cargos] ([Id])
GO
ALTER TABLE [dbo].[PerfilCargo] CHECK CONSTRAINT [FK_PerfilCargo_Cargos]
GO
ALTER TABLE [dbo].[PerfilCargo]  WITH CHECK ADD  CONSTRAINT [FK_PerfilCargo_Cargos1] FOREIGN KEY([IdCargo_Reporta])
REFERENCES [dbo].[Cargos] ([Id])
GO
ALTER TABLE [dbo].[PerfilCargo] CHECK CONSTRAINT [FK_PerfilCargo_Cargos1]
GO
ALTER TABLE [dbo].[PerfilCargo]  WITH CHECK ADD  CONSTRAINT [FK_PerfilCargo_Niveles] FOREIGN KEY([IdNivel])
REFERENCES [dbo].[Niveles] ([Id])
GO
ALTER TABLE [dbo].[PerfilCargo] CHECK CONSTRAINT [FK_PerfilCargo_Niveles]
GO
ALTER TABLE [dbo].[Requisiciones]  WITH CHECK ADD  CONSTRAINT [FK_Requisiciones_Ciudades] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
GO
ALTER TABLE [dbo].[Requisiciones] CHECK CONSTRAINT [FK_Requisiciones_Ciudades]
GO
ALTER TABLE [dbo].[Requisiciones]  WITH CHECK ADD  CONSTRAINT [FK_Requisiciones_PerfilCampaña] FOREIGN KEY([IDCampaña])
REFERENCES [dbo].[PerfilCampaña] ([ID])
GO
ALTER TABLE [dbo].[Requisiciones] CHECK CONSTRAINT [FK_Requisiciones_PerfilCampaña]
GO
ALTER TABLE [dbo].[Requisiciones]  WITH CHECK ADD  CONSTRAINT [FK_Requisiciones_Sites] FOREIGN KEY([IdSites])
REFERENCES [dbo].[Sites] ([Id])
GO
ALTER TABLE [dbo].[Requisiciones] CHECK CONSTRAINT [FK_Requisiciones_Sites]
GO