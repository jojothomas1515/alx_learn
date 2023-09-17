#!/usr/bin/env node
import express from "express";
import mongoose from "mongoose";
import authRoute from "./routes/auth.js";
const app = express();
app.use(express.json())
app.use("/auth", authRoute)
async function conn() {
  await mongoose.connect("mongodb://127.0.0.1:27017/food")
}


app.use((err, req, res, next) => {
  if (err.status === 403)
    res.json({ "error": "Not Found" });
  console.log(err.status);
  console.log(req.status);
  console.log(res.status);
  next();
})

async function run(port) {
  conn();
  const j = await app.listen(port);
  console.log(`listening on port ${port}`);
}

run(5000);
