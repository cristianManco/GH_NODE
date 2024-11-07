import { RowDataPacket } from "mysql2";
import { PendientesContratar } from "../../models/userModel";
import { getConnection } from "../../../libs/config/config";

export const getAllPendientesContratar = async (): Promise<
  PendientesContratar[]
> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM pendientesContratar",
    );
    return rows as PendientesContratar[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createPendientesContratar = async (
  pendiente: PendientesContratar,
): Promise<PendientesContratar> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO pendientesContratar SET ?", [
      pendiente,
    ]);
    return pendiente;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
