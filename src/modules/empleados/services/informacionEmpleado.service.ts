import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { InformacionEmpleados } from "../../models/userModel";

export const getAllInformacionEmpleados = async (): Promise<
  InformacionEmpleados[]
> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM informacionEmpleados",
    );
    return rows as InformacionEmpleados[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createInformacionEmpleados = async (
  info: InformacionEmpleados,
): Promise<InformacionEmpleados> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO informacionEmpleados SET ?", [info]);
    return info;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
