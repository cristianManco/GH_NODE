import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { Cargos } from "../../models/userModel";

export const getAllCargos = async (): Promise<Cargos[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM cargos",
    );
    return rows as Cargos[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createCargos = async (cargos: Cargos): Promise<Cargos> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO cargos SET ?", [cargos]);
    return cargos;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
