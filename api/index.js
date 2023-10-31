// Importa los paquetes necesarios
const express = require('express');
const bodyParser = require('body-parser'); // Solo si estás utilizando Express 3.x o versiones anteriores
const morgan = require('morgan');
const helmet = require('helmet');
const cors = require('cors');
const db = require('./database');

// Configura Express
const app = express();
const port = 4500;

// Configura middleware
app.use(bodyParser.json()); // Solo si estás utilizando Express 3.x o versiones anteriores
app.use(express.json()); // Para Express 4.x y posteriores
app.use(morgan('combined'));
app.use(helmet());
app.use(cors());



// Definir rutas
const router = express.Router();

// Ruta de ejemplo
router.get('/', (req, res) => {
  res.json({ message: '¡Api login!' });
});

// Ruta para iniciar sesion de usuario


router.post('/login', async (req, res) => {
  const { username, password } = req.body;

  if (!username || !password) {
    return res.status(400).json({ message: 'Por favor, ingresa un nombre de usuario y una contraseña.' });
  }

  try {
    const user = await db.query(`SELECT * FROM users WHERE username = '${username}'`);

    if (user.length === 0) {
      return res.status(400).json({ message: 'El nombre de usuario no existe.' });
    }
    if (user[0].password !== password) {
        
      return res.status(400).json({ message: 'La contraseña es incorrecta.' });

    }
    return res.status(200).json({ message: 'Inicio de sesión exitoso.' });

  } catch (error) {
    return res.status(500).json({ message: 'Error interno del servidor.' });
  }
});

// Montar las rutas en la aplicación
app.use('/api', router);

// Iniciar el servidor
app.listen(port, () => {
  console.log(`El servidor está escuchando en el puerto ${port}`);
});
