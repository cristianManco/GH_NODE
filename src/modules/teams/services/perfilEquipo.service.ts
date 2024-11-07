import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { PerfilEquipo } from "../../models/userModel";

export const getAllPerfilEquipo = async (): Promise<PerfilEquipo[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM perfilEquipo",
    );
    return rows as PerfilEquipo[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createPerfilEquipo = async (
  equipo: PerfilEquipo,
): Promise<PerfilEquipo> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO perfilEquipo SET ?", [equipo]);
    return equipo;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
