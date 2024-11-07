import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { PerfilCargo } from "../../models/userModel";

export const getAllCargos = async (): Promise<PerfilCargo[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM perfilCargo",
    );
    return rows as PerfilCargo[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createCargo = async (cargo: PerfilCargo): Promise<PerfilCargo> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO perfilCargo SET ?", [cargo]);
    return cargo;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

//  ademas de buscar por id  eliminar y editar un perfil de cargo

export const getPerfilCargoById = async (
  id: number,
): Promise<PerfilCargo | undefined> => {
  try {
    const connection = await getConnection();
    const [row] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM perfilCargo WHERE ID = ?",
      [id],
    );
    return row[0] as PerfilCargo;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const deleteCargo = async (id: number): Promise<void | object> => {
  try {
    const connection = await getConnection();
    await connection.query("DELETE FROM perfilCargo WHERE ID = ?", [id]);
    return { message: "user deleted" };
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const updateCargo = async (
  id: number,
  updatedCargo: Partial<PerfilCargo>,
): Promise<PerfilCargo | undefined> => {
  try {
    const connection = await getConnection();
    await connection.query("UPDATE perfilCargo SET ? WHERE ID = ?", [
      updatedCargo,
      id,
    ]);
    return getPerfilCargoById(id);
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
