import express from 'express';
const app = express();

const PORT = process.env.PORT || 3000;
const ENV = process.env.ENVIRONMENT || "dev";

app.get("/", (req, res) => {
  res.send(`🚀 Node.js App running in ${ENV} environment`);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
