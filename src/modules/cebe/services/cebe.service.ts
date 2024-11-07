import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { CEBE } from "../../models/userModel";

export const getAllCEBE = async (): Promise<CEBE[]> => {
  try {
    const connection = await getConnection();
    const [rows] =
      await connection.query<RowDataPacket[]>("SELECT * FROM cebe");
    return rows as CEBE[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createCEBE = async (cebe: CEBE): Promise<CEBE> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO cebe SET ?", [cebe]);
    return cebe;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
