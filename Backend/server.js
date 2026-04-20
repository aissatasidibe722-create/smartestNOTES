const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/api/health', (req, res) => {
    res.json({ status: 'OK', timestamp: new Date() });
});

app.get('/api/notes', (req, res) => {
    res.json({ notes: [] });
});

app.post('/api/notes', (req, res) => {
    res.json({ message: 'Note créée', data: req.body });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`smartNOTES Backend running on port ${PORT}`);
});
