const user = {
	name: "Piyush Sharma",
	designation: "Senior Software Engineer",
	company: "Infuse Consulting",
	hobbies: ["Reading", "Listening to music", "Collecting stamps"],
};

/*** Use destructuting to log the following*/

const printUserProfile = (user) => {
	// Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
	const { name, designation, company, hobbies } = user;
	let add_hobbies = "";
	for (let each = 0; each < hobbies.length; each++) {
		if (each == hobbies.length - 1) {
			add_hobbies += "and " + hobbies[each];
		} else {
			add_hobbies += hobbies[each] + ", ";
		}
	}
	console.log(
		`${name} is a ${designation} at ${company}. He likes ${add_hobbies}`
	);
};

printUserProfile(user);
