// We import the express module and the "CORS" module
import express from "express";
import cors from "cors";

const PORT = 3000;
const app = express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use((req, res, next) => {
  console.log(req.url);
  next();
});

app.get("/welcome", (req, res, next) => res.send({ info: "Welcome!" }));

app.listen(PORT, () => console.log(`server started`));

app.post('/welcome', function (req, res) {
  res.send('Got a POST request' + Math.floor(Math.random() * 100))
})