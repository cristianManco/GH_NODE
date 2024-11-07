export default interface User {
  id: number;
  name: string;
  email: string;
  password: string;
}

export interface Aplicativos {
  Id: number;
  Aplicativo: string;
  Modificado: Date;
  ModificadoPor: string;
  Creado: Date;
  CreadoPor: string;
}

export interface Area {
  Id: number;
  IdCEBE: number | null;
  Abbr: string | null;
  Nombre: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

export interface CambioBaseEmpleados {
  Identificador: number;
  IdDeTiposDeContenido: string | null;
  TipoDeContenido: string | null;
  Title: string | null;
  Modificado: Date | null;
  Creado: Date | null;
  CreadoPorId: number | null;
  ModificadoPorId: number | null;
  Owshiddenversion: number | null;
  Versión: string | null;
  RutaDeAcceso: string | null;
  IdDeActivoDeCumplimientoNormativo: string | null;
  OnlyDate: Date | null;
  TipoDeGestiónValue: string | null;
  NombreCompleto: string | null;
  CampañaNueva1: string | null;
  PorcentajeNuevoCampaña1: number | null;
  ÁreaDelCargoValue: string | null;
  Cargo: string | null;
  SalarioNuevo: number | null;
  BonificacionNueva: number | null;
  TipoDeContratoNuevoValue: string | null;
  ObservacionesEnGeneral: string | null;
  CausaDelRetiroValue: string | null;
  AutorizacionDelRetiro: string | null;
  Idioma: string | null;
  ARLNRValue: string | null;
  FechaInicioContrato: Date | null;
  FechaVencimientoContrato: Date | null;
  FechaInicialTraining: Date | null;
  FechaVencimientoTraining: Date | null;
  Id: string | null;
  FechaRetiro: Date | null;
  PazYSalvoValue: string | null;
  FechaPazYSalvo: Date | null;
  CorreoCorporativo: string | null;
  Estado: string | null;
  AuxTipoGestion: string | null;
  CentroDeCosto: string | null;
  PerfilID: string | null;
  CampañaID: string | null;
  CodContrato: string | null;
  IdInfoEmpleado: number | null;
  IDBD_V2: number | null;
  LugarDeTrabajoValue: string | null;
  Ciudad: string | null;
  DepartamentoRegion: string | null;
  Pais: string | null;
  TipoDeCambioValue: string | null;
  FechaInicioCambio: Date | null;
  FechaFinalCambio: Date | null;
  Estado_Aprobacion: string | null;
  JefeDirecto: string | null;
  EntidadBancariaValue: string | null;
  NúmeroDeCuenta: string | null;
  HorasALaborarPorSemana: number | null;
  CambioSalario: boolean | null;
  EtiquetaDeColor: string | null;
  CampanaOld: string | null;
  CuentaValue: string | null;
  SalarioOld: number | null;
  CECO_Old: string | null;
  FechaReporteRenuncia: Date | null;
  Nivel_Old: number | null;
  Nivel_New: number | null;
  MotivoRetiroValue: string | null;
  ModificadoPor: string | null;
  CreadoPor: string | null;
}

export interface Cargos {
  Id: number;
  Cargo: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

export interface CEBE {
  Id: number;
  Abbr: string | null;
  Name: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

export interface CentroCostos {
  Id: number;
  IdArea: number | null;
  Cuenta: string | null;
  Campaña: string | null;
  CECO: string | null;
  Active: boolean | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

export interface Ciudades {
  CiudadID: number;
  Ciudad: string;
  DivisionID: number;
  CodigoPostal: string | null;
  Longitud: number | null;
  Latitud: number | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

export interface CompetenciasSer {
  ID: number;
  CompetenciaSer: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

export interface DetalleAplicativosPerilCampaña {
  IDPerfilCampaña: number | null;
  IDAplicativo: number | null;
  Creado: Date | null;
  CreadoPor: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
}

export interface DetalleCompetenciaSer {
  IDPerfilCargo: number;
  IDCompetenciaSer: number;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

// export Interface para DetalleNivelIdiomaPerilCampaña
export interface DetalleNivelIdiomaPerilCampaña {
  IDPerfilCampaña: number | null;
  IDNivelIdioma: number | null;
  Creado: Date | null;
  CreadoPor: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
}

// export Interface para DetalleNivelIdiomas
export interface DetalleNivelIdiomas {
  IdPerfilCampaña: number;
  IdNivelIdioma: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

// export Interface para DivisionGeografica
export interface DivisionGeografica {
  DivisionID: number;
  Division: string;
  PaisID: number;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

// export Interface para Idiomas
export interface Idiomas {
  Id: number;
  Idioma: string | null;
  Modificado: Date | null;
  ModificadoPor: string | null;
  Creado: Date | null;
  CreadoPor: string | null;
}

// InformacionEmpleados
export interface InformacionEmpleados {
  IDRQ: string;
  FechaExpedicionIdentificacion: Date;
  Nombre: string;
  RHValue: string;
  FechaDeNacimiento: Date;
  LugarNacimiento: string;
  DireccionResidencia: string;
  Barrio: string;
  NumFijo: number;
  NumMovil: string;
  Email: string;
  ContactoDeEmergencia: string;
  NumeroDeCuenta: string;
  Beneficiarios: string;
  NumHijos: number;
  TituloObtenido: string;
  PerfilCargoID: number;
  Idioma: string;
  Salario: number;
  Bonificacion: number;
  Referencias: string;
  FechaInicioContrato: Date;
  FechaInicialTraining: Date;
  FechaVencimientoTraining: Date;
  EmailCorporativo: string;
  AprobacionDocumentos: boolean;
  AprobacionFormularios: boolean;
  ExamenMedico: boolean;
  Afiliaciones: boolean;
  EnvioContrato: boolean;
  FirmaContrato: boolean;
  ActivoFijo: string;
  Reingreso: number;
  Licencias: string;
  FechaDeRetiro: Date;
  Solicitud: string;
  Localizacion: string;
  CapacitacionPagada: string;
  PeriodoCapacitacion: string;
  CodContrato: string;
  CampañaID: string;
  Observaciones: string;
  ControlTraslado: number;
  ControlCorreo: number;
  AuxEstado: number;
  AuxSolicitarDoc: number;
  Estado: number;
  SolicitudDeDocumentos: string;
  ObservacionesEMedico: string;
  AuxRetiro: number;
  HabeasData: string;
  DescargosInvolucrados: number;
  DescargosHV: number;
  TallaCamisa: string;
  TallaPantalon: string;
  TallaCalzado: string;
  CentroCosto: string;
  ReferenciaLaboral: string;
  ReferenciaPersonal1: string;
  ReferenciaPersonal2: string;
  IdDeTiposDeContenido: string;
  TipoDeContenido: string;
  Modificado: Date;
  Creado: Date;
  RutaDeAcceso: string;
  IdDeActivoDeCumplimientoNormativo: string;
  DuracionContratoEnMeses: number;
  PeriodoDePrueba: string;
  FechaNotificacion: string;
  JefeDirecto: string;
  HorasALaborarPorSemana: number;
  EtiquetaDeColor: string;
  FechaProgramacionExamenMedico: Date;
  FechaAprobacionDesercionExamenMedico: Date;
  RecomendacionesMedicas: string;
  Cuenta: string;
  Nivel: number;
  CambioFoto: boolean;
  ModificadoPor: string;
  CreadoPor: string;
  TipoDeIdentificacion: string;
  NumeroDeIdentificacion: string;
  CiudadExpedicion: string;
  Genero: string;
  Pais: string;
  DepartamentoEstado: string;
  MunicipioDeResidencia: string;
  EntidadBancaria: string;
  TipoDeCuenta: string;
  EPS: string;
  AFP: string;
  Cesantias: string;
  EstadoCivil: string;
  NivelAcademico: string;
  EstadoContrato: string;
  Cargo: string;
  AreaDelCargo: string;
  Campaña: string;
  ValidacionDeReferencias: string;
  TipoContrat: string;
  Desercion: string;
  LugarDeTrabajo: string;
  Ubicacion: string;
  EnvioExamenMedico: string;
  ModeloRopa: string;
  ID: number;
  Ciudad: string;
}

// MovimientoPersonas
export interface MovimientoPersonas {
  Id: string;
  IdPersona: bigint;
  PerfilCargoID: number;
  EmailCorporativo: string;
  ActivoFijo: string;
  Licencias: string;
  Salario: number;
  Bonificacion: number;
  EntidadBancaria: string;
  TipoDeCuenta: string;
  NumeroDeCuenta: string;
  AreaDelCargo: string;
  Cuenta: string;
  Campaña: string;
  Cargo: string;
  Nivel: number;
  JefeDirecto: string;
  LugarDeTrabajo: string;
  TipoContrato: string;
  Reingreso: number;
  DuracionContratoEnMeses: number;
  FechaVencimientoContrato: Date;
  Estado: string;
  FechaInicioContrato: Date;
  FechaDeRetiro: Date;
  HorasALaborarPorSemana: number;
  RequiereFormacion: number;
  PeriodoPrueba: string;
  FechaVencimientoTraining: Date;
  CapacitacionPagada: string;
  ValidacionDeReferencias: string;
  ReferenciaLaboral: string;
  ReferenciaPersonal1: string;
  ReferenciaPersonal2: string;
  Afiliaciones: boolean;
  AfiliacionEPS: boolean;
  EPS: string;
  AfiliacionCAJACOMPENSACION: boolean;
  AfiliacionARL: boolean;
  AfiliacionPENSION: boolean;
  AFP: string;
  Cesantias: string;
  Beneficiarios: string;
  EstadoCivil: string;
  NumHijos: number;
  NivelAcademico: string;
  TituloObtenido: string;
  Idioma: string;
  ModeloRopa: string;
  TallaCamisa: string;
  TallaPantalon: string;
  TallaCalzado: string;
  SolicitudDeDocumentos: string;
  AprobacionDocumentos: boolean;
  AprobacionFormularios: boolean;
  SolicitudExamen: string;
  ExamenMedico: boolean;
  FechaProgramacionExamenMedico: Date;
  FechaAprobacionDesercionExamenMedico: Date;
  ObservacionesMedicas: string;
  RecomendacionesMedicas: string;
  DesercionExamenMedico: boolean;
  Desercion: string;
  EnvioContrato: boolean;
  FirmaContrato: boolean;
  Requi: string;
  DescargosInvolucrados: number;
  DescargosHV: number;
  CodContrato: string;
  Observaciones: string;
  Origen: string;
  IsSeleccionado: number;
  dtmSeleccionado: Date;
  IsPendienteContratar: number;
  dtmPendienteContratar: Date;
  IsInformationEmpleados: number;
  dtmInformacionEmpleado: Date;
  Creado: Date;
  CreadoPor: string;
  Modificado: Date;
  ModificadoPor: string;
  ControlCorreo: number;
}

// NivelAcademicoProfesional
export interface NivelAcademicoProfesional {
  Id: number;
  IdNivelAcademico: number;
  NivelFormacion: string;
}

// Niveles
export interface Niveles {
  Id: number;
  Nombre: string;
  Nivel: number;
  Modificado: Date;
  ModificadoPor: string;
  Creado: Date;
  CreadoPor: string;
}

// NivelesAcademicos
export interface NivelesAcademicos {
  Id: number;
  NivelAcademico: string;
}

// NivelesIdioma
export interface NivelesIdioma {
  Id: number;
  IdIdioma: number;
  NivelEscEuro: string;
  Modificado: Date;
  ModificadoPor: string;
  Creado: Date;
  CreadoPor: string;
}

// Pais
export interface Pais {
  PaisID: number;
  Pais: string;
  Sigla: string;
  Modificado: Date;
  ModificadoPor: string;
  Creado: Date;
  CreadoPor: string;
}

// export Interface para la tabla PendientesContratar
export interface PendientesContratar {
  FechaExpedicionIdentificacion?: Date;
  CiudadExpedicion?: string;
  Nombre?: string;
  FechaDeNacimiento?: Date;
  LugarNacimiento?: string;
  DireccionResidencia?: string;
  DepartamentoEstado?: string;
  Municipio?: string;
  Barrio?: string;
  NumFijo?: number;
  NumFijo0?: string;
  Email?: string;
  ContactoDeEmergencia?: string;
  NumeroDeCuenta?: string;
  Beneficiarios?: string;
  NumHijos?: number;
  TituloObtenido?: string;
  TallaCamisa?: string;
  TallaPantalon?: string;
  TallaCalzado?: string;
  PerfilCargoID?: string;
  Cargo?: string;
  AreaDelCargo?: string;
  Idioma?: string;
  Salario?: number;
  Bonificacion?: number;
  Referencias?: string;
  FechaInicioContrato?: Date;
  TipoContrato?: string;
  FechaInicialTraining?: Date;
  FechaVencimientoTraining?: Date;
  EmailCorporativo?: string;
  AprobacionDocumentos?: boolean;
  AprobacionFormularios?: boolean;
  ExamenMedico?: boolean;
  Afiliaciones?: boolean;
  EnvioContrato?: boolean;
  FirmaContrato?: boolean;
  ActivoFijo?: string;
  Reingreso?: number;
  Licencias?: string;
  FechaDeRetiro?: Date;
  SolicitudDeEquipo?: string;
  LugarDeTrabajo?: string;
  CapacitacionPagada?: string;
  PeriodoCapacitacion?: string;
  CodContrato?: string;
  CampanaID?: string;
  Observaciones?: string;
  ControlTraslado?: number;
  ControlCorreo?: number;
  AuxSolicitarDoc?: number;
  SolicitudDeDocumentos?: string;
  AuxEstado?: number;
  Estado?: string;
  NContratados?: number;
  NCandidatos?: number;
  NDContratacion?: number;
  NDSeleccion?: number;
  ObservacionesEMedico?: string;
  AuxSeleccion?: number;
  ID?: number;
  IdDeTiposDeContenido?: string;
  TipoDeContenido?: string;
  Modificado?: Date;
  Creado?: Date;
  RutaDeAcceso?: string;
  IdDeActivoDeCumplimientoNormativo?: string;
  CentroCosto?: string;
  ReferenciaLaboral?: string;
  ReferenciaPersonal1?: string;
  ReferenciaPersonal2?: string;
  DuracionContratoEnMeses?: number;
  FechaVencimientoContrato?: Date;
  PeriodoPrueba?: string;
  JefeDirecto?: string;
  HorasALaborarPorSemana?: number;
  EtiquetaDeColor?: string;
  AfiliacionEPS?: boolean;
  AfiliacionCajaCompensacion?: boolean;
  AfiliacionARL?: boolean;
  AfiliacionPension?: boolean;
  FechaProgramacionExamenMedico?: Date;
  FechaAprobacionDesercionExamenMedico?: Date;
  RecomendacionesMedicas?: string;
  AuxEstado2?: number;
  ModificadoPor?: string;
  CreadoPor?: string;
  IdRequisicion?: string;
  TipoDeIdentificacion?: string;
  NDeIdentificacion?: string;
  Genero?: string;
  RH?: string;
  EntidadBancaria?: string;
  TipoDeCuenta?: string;
  EPS?: string;
  AFP?: string;
  Cesantias?: string;
  EstadoCivil?: string;
  NivelAcademico?: string;
  ModeloRopa?: string;
  EstadoContrato?: string;
  Campana?: string;
  ValidacionDeReferencias?: string;
  Desercion?: string;
  Ubicacion?: string;
  EnvioExamenMedico?: string;
  PaisDeResidencia?: string;
}

// export Interface para la tabla PerfilCampaña
export interface PerfilCampaña {
  ID: number;
  IDCentroCosto: number;
  IDPerfilCargo: number;
  IDPerfilEquipo: number;
  Salario?: number;
  Bonificacion?: number;
  ControlAprobacion?: number;
  Estado?: string;
  DiasDeCapacitacion?: number;
  OtroAplicativo?: string;
  Riesgo?: number;
  RequiereFormacion?: boolean;
  Creado?: Date;
  CreadoPor?: string;
  Modificado?: Date;
  ModificadoPor?: string;
}

// export Interface para la tabla PerfilCargo
export interface PerfilCargo {
  ID: number;
  IdCargo: number;
  IdNivel: number;
  IdCargoReporta: number;
  Estado?: string;
  ObjetivoDelCargo?: string;
  NivelAcademicoMin?: string;
  NivelAcademico?: string;
  AreaDeConocimiento?: string;
  MesesDeExperiencia?: number;
  CompetenciasTecnicas?: string;
  FuncionesDelCargo?: string;
  Indicadores?: string;
  Creado?: Date;
  CreadoPor?: string;
  Modificado?: Date;
  ModificadoPor?: string;
  Aprobacion?: number;
}

// export Interface para la tabla PerfilEquipo
export interface PerfilEquipo {
  Id: number;
  Descripcion?: string;
  Modificado?: Date;
  ModificadoPor?: string;
  Creado?: Date;
  CreadoPor?: string;
}

// export Interface para la tabla Personas
export interface Personas {
  Id: number;
  NumIdentificacion?: string;
  TipoIdentificacion?: string;
  RH?: string;
  FechaDeNacimiento?: Date;
  LugarNacimiento?: string;
  Genero?: string;
  FechaExpedicionIdentificacion?: Date;
  CiudadExpedicion?: string;
  Nombre?: string;
  NumFijo?: number;
  NumMovil?: string;
  Email?: string;
  DireccionResidencia?: string;
  ContactoDeEmergencia?: string;
  Pais?: string;
  DepartamentoEstado?: string;
  MunicipioDeResidencia?: string;
  Barrio?: string;
  Creado?: Date;
  CreadoPor?: string;
  Modificado?: Date;
  ModificadoPor?: string;
}

// export Interface para la tabla Requisiciones
export interface Requisiciones {
  Id: number;
  IDCampaña: number;
  IdSites: number;
  CiudadID?: number;
  Salario?: number;
  TipoDeVinculacion?: string;
  Bonificacion?: number;
  FechaSugeridaDeIngreso?: Date;
  Comision?: boolean;
  Horario?: string;
  DiasDeCapacitacion?: number;
  HoraDeInicio?: string;
  HoraDeFinalizacion?: string;
  TipoDeTurno?: string;
  CapacitacionPagada?: boolean;
  Justificacion?: string;
  Observaciones?: string;
  CantidadDeVacantes?: number;
  NCandidatos?: number;
  NContratados?: number;
  FechaInicioContrato?: Date;
  FechaTentativaCierreRQ?: Date;
  IDSolicitud?: string;
  DuracionContratoEnMeses?: number;
  HorasALaborarPorSemana?: string;
  EstadoRequisicion?: string;
  TiempoContratacion?: string;
  TipoDeConvocatoria?: string;
  CierreSeleccionados?: boolean;
  RequiereFormacion?: boolean;
  FechaCierreRequisicion?: Date;
  FechaCierreSeleccionados?: Date;
  TiempoDiasCierreSeleccionados?: string;
  JustificacionRQ?: string;
  Modificado?: Date;
  ModificadoPor?: string;
  Creado?: Date;
  CreadoPor?: string;
}

// export Interface para la tabla Seleccionados
export interface Seleccionados {
  Modificado?: Date;
  Creado?: Date;
  RutaDeAcceso?: string;
  IdDeActivoDeCumplimientoNormativo?: string;
  Cargo?: string;
  Idioma?: string;
  FechaInicioContrato?: Date;
  FechaVencimientoContrato?: Date;
  CampañaID?: string;
  JefeDirecto?: string;
  HorasALaborarPorSemana?: number;
  EtiquetaDeColor?: string;
  ModificadoPor?: string;
  CreadoPor?: string;
  Nombre?: string;
  NumFijo?: string;
  NumMovil?: string;
  Email?: string;
  PerfilCargoID?: string;
  AreaDelCargo?: string;
  Campaña?: string;
  Salario?: number;
  Bonificacion?: number;
  Referencias?: string;
  TipoContrato?: string;
  LugarDeTrabajo?: string;
  CapacitacionPagada?: string;
  Observaciones?: string;
  ControlTraslado?: number;
  ControlCorreo?: number;
  NumSeleccionados?: number;
  NumDesercionS?: number;
  AuxEstado?: number;
  AuxSolicitarDoc?: number;
  SolicitudDeDocumentos?: string;
  FechaInicioCapacitacion?: Date;
  NumPendContra?: number;
  Estado0?: string;
  IDPendC?: number;
  ReferenciaLaboral?: string;
  ReferenciaPersonal1?: string;
  ReferenciaPersonal2?: string;
  Municipio?: string;
  SolicitudExamen?: boolean;
  ExamenMedico?: boolean;
  DuracionContratoEnMeses?: number;
  ControlPendiente?: boolean;
  PeriodoPrueba?: string;
  SeleccionInterna?: boolean;
  ValidacionDesempenoJefe?: string;
  ValidacionDesempeno?: boolean;
  ObservacionesMedicas?: string;
  DesercionSeleccion?: boolean;
  RequiAnterior?: string;
  DiligenciaEncuesta?: boolean;
  DesercionExamenMedico?: boolean;
  CandidatoNotificado?: boolean;
  RequiereFormacion?: number;
  FechaProgramacionExamenMedico?: Date;
  FechaAprobacionDesercionExamenMedico?: Date;
  RecomendacionesMedicas?: string;
  ID?: number;
  IdRequisicion?: string;
  TipoDeIdentificacion?: string;
  NDeIdentificacion?: string;
  ValidacionDeReferencias?: string;
  Estado?: string;
}

// export Interface para la tabla Sites
export interface Sites {
  Id: number;
  Abbr?: string;
  name?: string;
  Active?: boolean;
  Modificado?: Date;
  ModificadoPor?: string;
  Creado?: Date;
  CreadoPor?: string;
}
