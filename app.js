const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('¡Hola desde Docker!');
});

app.listen(port, () => {
  console.log(`La app está corriendo en http://localhost:${port}`);
});