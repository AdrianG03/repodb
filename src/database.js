import mysql from "mysql2/promise";

export default class Connection {
  dbClient;

  config = {
    host: "maria",
    user: "root",
    password: "therootpass",
    database: "epicgames",
    port: "3310",
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
  host: "maria", // Nombre del servicio en el docker-compose.yml
  user: "willy", // Usuario definido en el docker-compose.yml
  password: "fortinaito", // Contraseña definida en el docker-compose.yml
  database: "epicgames", // Nombre de la base de datos que quieres usar
});

export default pool; */
