const clockElement = document.getElementById("clock");
const darkModeToggle = document.getElementById("darkModeToggle");

function updateClock() {
	const now = new Date();
	const hours = now.getHours().toString().padStart(2, "0");
	const minutes = now.getMinutes().toString().padStart(2, "0");
	const seconds = now.getSeconds().toString().padStart(2, "0");
	clockElement.textContent = `${hours}:${minutes}:${seconds}`;
}

function toggledarkmode() {
	document.body.classList.toggle("dark-mode");
	clockElement.classList.toggle("clocktimefont");
}
setInterval(updateClock, 1000);

darkModeToggle.addEventListener("change", toggledarkmode);
