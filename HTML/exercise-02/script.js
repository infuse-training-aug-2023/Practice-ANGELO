const clockElement = document.getElementById('clock');
const darkModeToggle = document.getElementById('darkModeToggle');

function updateClock() {
  const now = new Date();
  const hours = String(now.getHours()).padStart(2, '0');
  const minutes = String(now.getMinutes()).padStart(2, '0');
  const seconds = String(now.getSeconds()).padStart(2, '0');
  clockElement.textContent = `${hours}:${minutes}:${seconds}`;
}

function toggledarkmode(){
    document.body.classList.toggle("dark-mode");
    clockElement.classList.toggle("clocktimefont")
}
setInterval(updateClock, 1000);

darkModeToggle.addEventListener("change", toggledarkmode)