import { Router } from "express";
import User from "../models/user.js"

const authRoute = Router()

authRoute.route("/signup")
  .post((req, res, next) => {
    const { firstName, lastName, age, email } = req.body;
    if (email) {
      if (User.exists({ email: email })) {
        res.json({ error: "This user already exists" })
      }
    }
    const newUser = User({ firstName, lastName, age, email })
    newUser.save()

    res.json(newUser.toJSON());
  });

export default authRoute;

