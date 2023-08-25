const axios = require("axios");
const moment = require("moment");

const userInputDate = process.argv[2];

const formattedDate = moment(userInputDate, "YYYY-MM-DD").format("DD-MM-YYYY");

console.log(`Formatted Date: ${formattedDate}`);

axios
	.get(process.env.URL)
	.then((response) => {
		console.log("API Response: ");
		console.log(response.data);
	})
	.catch((error) => {
		console.error("Error fetching API:", error);
	});
