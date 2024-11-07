import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { CentroCostos } from "../../models/userModel";

export const getAllCentroCostos = async (): Promise<CentroCostos[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM centroCostos",
    );
    return rows as CentroCostos[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createCentroCostos = async (
  centroCosto: CentroCostos,
): Promise<CentroCostos> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO centroCostos SET ?", [centroCosto]);
    return centroCosto;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
