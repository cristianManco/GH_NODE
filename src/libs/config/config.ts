// import mysql from "mysql2/promise";
// import sql from "mssql";
// import dotenv from "dotenv";

// dotenv.config();

// // Configuración para MySQL
// const mysqlConfig = {
//   host: process.env.MYSQL_HOST,
//   user: process.env.MYSQL_USER,
//   password: process.env.MYSQL_PASSWORD,
//   database: process.env.MYSQL_DATABASE,
//   port: Number(process.env.MYSQL_PORT) || 3306,
// };

// // Configuración para SQL Server
// const sqlServerConfig = {
//   user: process.env.SQLSERVER_USER || '',
//   password: process.env.SQLSERVER_PASSWORD || '',
//   server: process.env.SQLSERVER_HOST || '',
//   database: process.env.SQLSERVER_DATABASE || '',
//   port: Number(process.env.SQLSERVER_PORT) || 1433,
//   options: {
//     encrypt: true,
//     trustServerCertificate: false,
//   },
// };

// export const getConnection = async (): Promise<mysql.Connection | sql.ConnectionPool> => {
//   const dbType = process.env.DB_TYPE || "mysql"; // 'mysql' o 'mssql'
//   if (dbType === "mysql") {
//     const connection = await mysql.createConnection(mysqlConfig);
//     console.log("Conexión exitosa a MySQL");
//     return connection;
//   } else if (dbType === "mssql") {
//     const pool = await sql.connect(sqlServerConfig);
//     console.log("Conexión exitosa a SQL Server");
//     return pool;
//   } else {
//     throw new Error("Tipo de base de datos no soportado");
//   }
// };

import mysql from "mysql2/promise";
import dotenv from "dotenv";

dotenv.config();

const connectionConfig = {
  host: process.env.MYSQL_DB_HOST,
  user: process.env.MYSQL_DB_USER,
  password: process.env.MYSQL_DB_PASSWORD,
  database: process.env.MYSQL_DB_DATABASE,
  port: Number(process.env.MYSQL_DB_PORT) || 3306,
};

export const getConnection = async () => {
  try {
    const connection = await mysql.createConnection(connectionConfig);
    console.log("Successfully connected to the database");
    return connection;
  } catch (error) {
    console.error("Failed to connect to the database", error);
    process.exit(1);
  }
};
