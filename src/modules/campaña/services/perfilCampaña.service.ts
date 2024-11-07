import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import { Aplicativos, PerfilCampaña } from "../../models/userModel";

export const getAllPerfilCampaña = async (): Promise<PerfilCampaña[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM perfilCampaña",
    );
    return rows as PerfilCampaña[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const createPerfilCampaña = async (
  perfil: PerfilCampaña,
): Promise<PerfilCampaña> => {
  try {
    const connection = await getConnection();
    await connection.query("INSERT INTO perfilCampaña SET ?", [perfil]);
    return perfil;
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};

export const getAplicativos = async (): Promise<Aplicativos[]> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM aplicativos",
    );
    return rows as Aplicativos[];
  } catch (err) {
    console.error("Ups..." + err);
    throw err;
  }
};
