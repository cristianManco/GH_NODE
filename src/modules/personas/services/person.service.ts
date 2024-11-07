import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { Personas } from "../../models/userModel";

export const getAllPersons = async (): Promise<Personas[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM personas",
    );
    return rows as Personas[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createPerson = async (person: Personas): Promise<Personas> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO personas SET ?", [person]);
    return person;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
