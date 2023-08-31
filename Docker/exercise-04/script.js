const axios = require("axios");
const moment = require("moment");

let userInputDate;

if (process.argv.length < 3) {
	userInputDate = moment().format("YYYY-MM-DD");
	console.log(`Using today's date as default date: ${userInputDate}`);
} else {
	userInputDate = process.argv[2];
	console.log(`Entered date: ${userInputDate}`);
}

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
