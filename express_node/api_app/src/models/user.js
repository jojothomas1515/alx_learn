import { Schema, model } from "mongoose";

const userSchema = new Schema(
  {
    firstName: { type: String, required: true },
    lastName: { type: String, required: true },
    age: Number,
    email: { type: String, required: true },
  },
  {
    timestamps: true,
    virtuals: {
      fullName: {
        get() {
          this.firstName + " " + this.lastName
        }
      },
      birthYear: {
        get() {
          const date = new Date()
          return date.getFullYear() - this.age
        }
      }
    }
  }
);

const User = model("users", userSchema)
export default User;
