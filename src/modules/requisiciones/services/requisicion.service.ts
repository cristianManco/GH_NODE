import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { Requisiciones } from "../../models/userModel";

export const getAllRequisiciones = async (
  limit: number,
  page: number,
  sortField: string,
  sortOrder: string,
): Promise<{ requisiciones: Requisiciones[]; total: number } | undefined> => {
  try {
    const connection = await getConnection();
    const offset = (page - 1) * limit;
    const [rows] = await connection.query<RowDataPacket[]>(
      `SELECT SQL_CALC_FOUND_ROWS * FROM requisiciones ORDER BY ${sortField} ${sortOrder} LIMIT ?, ?`,
      [offset, limit],
    );
    const [totalRows] = await connection.query<RowDataPacket[]>(
      "SELECT FOUND_ROWS() as total",
    );
    const total = totalRows[0].total;
    return { requisiciones: rows as Requisiciones[], total };
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const createRequisicion = async (
  IDCampaña: number,
  IdSites: number,
  CiudadID: number,
  Salario: number,
  TipoDeVinculación: string,
  Bonificación: number,
  FechaSugeridaDeIngreso: string,
  Comision: boolean,
  Horario: string,
  DíasDeCapacitación: number,
  HoraDeInicio: string,
  HoraDeFinalizacion: string,
  TipoDeTurno: string,
  CapacitaciónPagada: boolean,
  Justificación: string,
  Observaciones: string,
  CantidadDeVacantes: number,
  NCandidatos: number,
  NContratados: number,
  FechaInicioContrato: string,
  FechaTentativaCierreRQ: string,
  IDSolicitud: string,
  DuracionContratoEnMeses: number,
  HorasALaborarPorSemana: string,
  EstadoRequisicion: string,
  Tiempo_Contratación: string,
  TipoDeConvocatoria: string,
  Cierre_Seleccionados: boolean,
  RequiereFormación: boolean,
  FechaCierreRequisición: string,
  FechaCierreSeleccionados: string,
  TiempoDíasCierreSeleccionados: string,
  JustificacionRQ: string,
): Promise<void> => {
  try {
    const connection = await getConnection();
    await connection.query(
      `INSERT INTO requisiciones (
        IDCampaña, IdSites, CiudadID, Salario, TipoDeVinculación, Bonificación, FechaSugeridaDeIngreso, Comision, Horario, DíasDeCapacitación, HoraDeInicio, HoraDeFinalizacion, TipoDeTurno, CapacitaciónPagada, Justificación, Observaciones, CantidadDeVacantes, NCandidatos, NContratados, FechaInicioContrato, FechaTentativaCierreRQ, IDSolicitud, DuracionContratoEnMeses, HorasALaborarPorSemana, EstadoRequisicion, Tiempo_Contratación, TipoDeConvocatoria, Cierre_Seleccionados, RequiereFormación, FechaCierreRequisición, FechaCierreSeleccionados, TiempoDíasCierreSeleccionados, JustificacionRQ
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        IDCampaña,
        IdSites,
        CiudadID,
        Salario,
        TipoDeVinculación,
        Bonificación,
        FechaSugeridaDeIngreso,
        Comision,
        Horario,
        DíasDeCapacitación,
        HoraDeInicio,
        HoraDeFinalizacion,
        TipoDeTurno,
        CapacitaciónPagada,
        Justificación,
        Observaciones,
        CantidadDeVacantes,
        NCandidatos,
        NContratados,
        FechaInicioContrato,
        FechaTentativaCierreRQ,
        IDSolicitud,
        DuracionContratoEnMeses,
        HorasALaborarPorSemana,
        EstadoRequisicion,
        Tiempo_Contratación,
        TipoDeConvocatoria,
        Cierre_Seleccionados,
        RequiereFormación,
        FechaCierreRequisición,
        FechaCierreSeleccionados,
        TiempoDíasCierreSeleccionados,
        JustificacionRQ,
      ],
    );
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const getRequisicionById = async (
  id: number,
): Promise<Requisiciones | undefined> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM requisiciones WHERE Id = ?",
      [id],
    );
    if (rows.length === 0) {
      return undefined;
    }
    return rows[0] as Requisiciones;
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const updateRequisicion = async (
  id: number,
  IDCampaña: number,
  IdSites: number,
  CiudadID: number,
  Salario: number,
  TipoDeVinculación: string,
  Bonificación: number,
  FechaSugeridaDeIngreso: string,
  Comision: boolean,
  Horario: string,
  DíasDeCapacitación: number,
  HoraDeInicio: string,
  HoraDeFinalizacion: string,
  TipoDeTurno: string,
  CapacitaciónPagada: boolean,
  Justificación: string,
  Observaciones: string,
  CantidadDeVacantes: number,
  NCandidatos: number,
  NContratados: number,
  FechaInicioContrato: string,
  FechaTentativaCierreRQ: string,
  IDSolicitud: string,
  DuracionContratoEnMeses: number,
  HorasALaborarPorSemana: string,
  EstadoRequisicion: string,
  Tiempo_Contratación: string,
  TipoDeConvocatoria: string,
  Cierre_Seleccionados: boolean,
  RequiereFormación: boolean,
  FechaCierreRequisición: string,
  FechaCierreSeleccionados: string,
  TiempoDíasCierreSeleccionados: string,
  JustificacionRQ: string,
): Promise<void> => {
  try {
    const connection = await getConnection();
    await connection.query(
      `UPDATE requisiciones SET
        IDCampaña = ?, IdSites = ?, CiudadID = ?, Salario = ?, TipoDeVinculación = ?, Bonificación = ?, FechaSugeridaDeIngreso = ?, Comision = ?, Horario = ?, DíasDeCapacitación = ?, HoraDeInicio = ?, HoraDeFinalizacion = ?, TipoDeTurno = ?, CapacitaciónPagada = ?, Justificación = ?, Observaciones = ?, CantidadDeVacantes = ?, NCandidatos = ?, NContratados = ?, FechaInicioContrato = ?, FechaTentativaCierreRQ = ?, IDSolicitud = ?, DuracionContratoEnMeses = ?, HorasALaborarPorSemana = ?, EstadoRequisicion = ?, Tiempo_Contratación = ?, TipoDeConvocatoria = ?, Cierre_Seleccionados = ?, RequiereFormación = ?, FechaCierreRequisición = ?, FechaCierreSeleccionados = ?, TiempoDíasCierreSeleccionados = ?, JustificacionRQ = ? WHERE Id = ?`,
      [
        IDCampaña,
        IdSites,
        CiudadID,
        Salario,
        TipoDeVinculación,
        Bonificación,
        FechaSugeridaDeIngreso,
        Comision,
        Horario,
        DíasDeCapacitación,
        HoraDeInicio,
        HoraDeFinalizacion,
        TipoDeTurno,
        CapacitaciónPagada,
        Justificación,
        Observaciones,
        CantidadDeVacantes,
        NCandidatos,
        NContratados,
        FechaInicioContrato,
        FechaTentativaCierreRQ,
        IDSolicitud,
        DuracionContratoEnMeses,
        HorasALaborarPorSemana,
        EstadoRequisicion,
        Tiempo_Contratación,
        TipoDeConvocatoria,
        Cierre_Seleccionados,
        RequiereFormación,
        FechaCierreRequisición,
        FechaCierreSeleccionados,
        TiempoDíasCierreSeleccionados,
        JustificacionRQ,
        id,
      ],
    );
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const deleteRequisicion = async (id: number): Promise<void> => {
  try {
    const connection = await getConnection();
    await connection.query("DELETE FROM requisiciones WHERE Id = ?", [id]);
  } catch (err) {
    console.error("Ups..." + err);
  }
};
