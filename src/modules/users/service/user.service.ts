import { RowDataPacket } from "mysql2";
import { getConnection } from "../../../libs/config/config";
import User from "../../models/userModel";

export const getAllUsers = async (
  limit: number,
  page: number,
  sortField: string,
  sortOrder: string,
): Promise<{ users: User[]; total: number } | undefined> => {
  try {
    const connection = await getConnection();
    const offset = (page - 1) * limit;
    const [rows] = await connection.query<RowDataPacket[]>(
      `SELECT SQL_CALC_FOUND_ROWS * FROM users ORDER BY ${sortField} ${sortOrder} LIMIT ?, ?`,
      [offset, limit],
    );
    const [totalRows] = await connection.query<RowDataPacket[]>(
      "SELECT FOUND_ROWS() as total",
    );
    const total = totalRows[0].total;
    return { users: rows as User[], total };
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const createUser = async (
  name: string,
  email: string,
  password: string,
): Promise<void> => {
  try {
    const connection = await getConnection();
    await connection.query(
      "INSERT INTO users (name, email, password) VALUES (?, ?, ?)",
      [name, email, password],
    );
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const getUserById = async (id: number): Promise<User | undefined> => {
  try {
    const connection = await getConnection();
    const [rows] = await connection.query<RowDataPacket[]>(
      "SELECT * FROM users WHERE id = ?",
      [id],
    );
    if (rows.length === 0) {
      return undefined;
    }
    return rows[0] as User;
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const updateUser = async (
  id: number,
  name: string,
  email: string,
  password: string,
): Promise<void> => {
  try {
    const connection = await getConnection();
    await connection.query(
      "UPDATE users SET name = ?, email = ?, password = ? WHERE id = ?",
      [name, email, password, id],
    );
  } catch (err) {
    console.error("Ups..." + err);
  }
};

export const deleteUser = async (id: number): Promise<void> => {
  try {
    const connection = await getConnection();
    await connection.query("DELETE FROM users WHERE id =?", [id]);
  } catch (err) {
    console.error("Ups..." + err);
  }
};
