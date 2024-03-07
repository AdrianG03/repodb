import { Router } from "express";
import Connection from "../database.js";

const router = Router();

const connection = new Connection();
connection.createConnection();

router.get("/list", async (req, res) => {
  try {
    const db = connection.getClient();
    console.log("DB:", db); 
    const [result] = await db.query("SELECT * FROM juego");
    console.log("Result:", result);
    res.render("juego/list", { juego: result });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

/* export default router;

import { Router } from "express";
import pool from "../database.js";

const router = Router();


router.get("/list", async (req, res) => {
  try {
    const [result] = await pool.query("SELECT * FROM juego");
    res.render("juego/list", { juego: result });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

export default router; */
