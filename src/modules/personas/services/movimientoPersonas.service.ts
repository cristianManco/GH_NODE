import { RowDataPacket } from "mysql2";
import { MovimientoPersonas } from "../../models/userModel";
import { getConnection } from "../../../libs/config/config";

export const getAllMovimientoPersonas = async (): Promise<
  MovimientoPersonas[]
> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM movimientoPersonas",
    );
    return rows as MovimientoPersonas[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createMovimientoPersonas = async (
  movimiento: MovimientoPersonas,
): Promise<MovimientoPersonas> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO movimientoPersonas SET ?", [
      movimiento,
    ]);
    return movimiento;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
