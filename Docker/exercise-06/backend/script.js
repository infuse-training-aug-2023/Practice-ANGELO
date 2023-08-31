const express = require("express");
const cors = require("cors");
const app = express();
app.use(cors());

const PORT = process.env.PORT || 3001;
const data = {
	content:
		"Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia debitis in culpa nemo delectus ea cupiditate voluptas voluptate saepe natus temporibus maxime optio animi voluptatem consectetur, repudiandae unde vero. Adipisci?",
};

app.get("/api", (req, res) => {
	res.send(data);
});

app.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}`);
});
