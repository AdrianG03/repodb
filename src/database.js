import mysql from "mysql2/promise";

export default class Connection {
  dbClient;

  config = {
    host: "localhost",
    user: "root",
    password: "therootpass",
    database: "epicgames",
    port: 3310,
  };

  constructor() {
    if (process.env.NODE_ENV !== "test") {
      console.log(
        "=> MySQL Config",
        `mysql://${this.config.user}:${this.config.password}@${this.config.host}:${this.config.port}/${this.config.database}`
      );
    }
  }

  async createConnection() {
    try {
      this.dbClient = await mysql.createConnection(this.config);
      console.log("--- Maria connected from class");
    } catch (error) {
      console.log("#######################");
      console.log("Error al conectar con MYSQL");
      console.log(error);
      console.log("#######################");
    }
  }

  getClient() {
    return this.dbClient;
  }
}

/* import { createPool } from "mysql2/promise";

const pool = createPool({
  host: "localhost", 
  user: "root", 
  password: "therootpass", 
  database: "epicgames", 
  port: 3310,
});

export default pool; */
