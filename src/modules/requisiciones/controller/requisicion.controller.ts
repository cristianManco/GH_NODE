import { Request, Response } from "express";
import {
  createRequisicion,
  deleteRequisicion,
  getAllRequisiciones,
  getRequisicionById,
  updateRequisicion,
} from "../services/requisicion.service";

export const getAllRequisicionesController = async (
  req: Request,
  res: Response,
) => {
  try {
    const limit = parseInt(req.query.limit as string) || 5;
    const page = parseInt(req.query.page as string) || 1;
    const sortField = (req.query.sortField as string) || "id";
    const sortOrder = (req.query.sortOrder as string) || "ASC";

    const result = await getAllRequisiciones(limit, page, sortField, sortOrder);
    if (result) {
      res.json({
        data: result.requisiciones,
        total: result.total,
        limit,
        page,
      });
    } else {
      res.status(500).json({ error: "Error retrieving requisiciones." });
    }
  } catch (error) {
    res.status(500).json({ error: "Error retrieving requisiciones: " + error });
  }
};

export const createRequisicionController = async (
  req: Request,
  res: Response,
) => {
  const {
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
  } = req.body;
  try {
    await createRequisicion(
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
    );
    res.status(201).json({ message: "Requisición creada exitosamente" });
  } catch (error) {
    res.status(500).json({ error: "Error creando requisición: " + error });
  }
};

export const getRequisicionByIdController = async (
  req: Request,
  res: Response,
) => {
  const { id } = req.params;
  try {
    const requisicion = await getRequisicionById(Number(id));
    if (!requisicion) {
      res.status(404).json({ message: "Requisición no encontrada" });
    } else {
      res.json(requisicion);
    }
  } catch (error) {
    res.status(500).json({ error: "Error retrieving requisición: " + error });
  }
};

export const updateRequisicionController = async (
  req: Request,
  res: Response,
) => {
  const { id } = req.params;
  const {
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
  } = req.body;
  try {
    await updateRequisicion(
      Number(id),
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
    );
    res.json({ message: "Requisición actualizada exitosamente" });
  } catch (error) {
    res.status(500).json({ error: "Error actualizando requisición: " + error });
  }
};

export const deleteRequisicionController = async (
  req: Request,
  res: Response,
) => {
  const { id } = req.params;
  try {
    await deleteRequisicion(Number(id));
    res.json({ message: "Requisición eliminada exitosamente" });
  } catch (error) {
    res.status(500).json({ error: "Error eliminando requisición: " + error });
  }
};
