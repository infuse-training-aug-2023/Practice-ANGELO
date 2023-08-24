const apiKey = "b73dbbee";
const searchButton = document.getElementById("searchButton");
const searchInput = document.getElementById("searchInput");
const sortValue = document.getElementById("sortValue");
const moviesContainer = document.getElementById("moviesContainer");
const nextButton = document.getElementById("nextButton");
const prevButton = document.getElementById("prevButton");
const displayIframe = document.getElementById("displayIframe");

let currentPage = 1;
let totalResults = 0;
let currentMovies = [];

searchButton.onclick = () => {
	const apiUrl = `https://www.omdbapi.com/?apikey=${apiKey}&s=${searchInput.value}&type=movie`;
	currentPage = 1;
	fetchMovies(apiUrl);
};

prevButton.onclick = () => {
	if (currentPage - 1 > 0) {
		currentPage = currentPage - 1;
		getPage(currentPage);
	}
};

nextButton.onclick = () => {
	currentPage = currentPage + 1;
	getPage(currentPage);
};

moviesContainer.onclick = () => {
	const moreInfobutton = event.target;
	if (moreInfobutton.id === "imdbButton") {
		const buttonValue = moreInfobutton.value;
		const imdbUrl = `https://www.imdb.com/title/${buttonValue}/`;
		displayIframe.contentWindow.postMessage(buttonValue, "*");
	}
};

async function fetchMovies(apiUrl) {
	var movies = [];
	try {
		const response = await fetch(apiUrl);
		const data = await response.json();
		totalResults = data.totalResults;

		if (data.Search) {
			data.Search.forEach((movie) => {
				const existingMovie = currentMovies.find(
					(m) => m.Title === movie.Title
				);
				if (!existingMovie) {
					movies.push(movie);
				}
			});
			currentMovies.push(movies);
			sortMovies(movies);
		} else {
			throw new Error(`No movies found. Error: ${data.Error}`);
		}
	} catch (error) {
		throw new Error(`Error fetching movie data: ${error.message}`);
	}
}

function sortMovies(movies) {
	try {
		if (sortValue.value == "ascname") {
			return displayMovies(
				movies.sort((a, b) => a.Title.localeCompare(b.Title))
			);
		} else {
			return displayMovies(
				movies.sort((a, b) => b.Title.localeCompare(a.Title))
			);
		}
	} catch (error) {
		throw new Error(`Error: ${error.message}`);
	}
}

function displayMovies(movies) {
	moviesContainer.innerHTML = movies
		.map((movie) => createMovieCard(movie))
		.join("");
}

async function getPage(currentPage) {
	try {
		const url = `https://www.omdbapi.com/?apikey=${apiKey}&s=${searchInput.value}&page=${currentPage}&type=movie`;
		newMovies = await fetchMovies(url);
	} catch (error) {
		throw new Error(`Error: ${error.message}`);
	}
}

function createMovieCard(movie) {
	return `
  <div class="movie-card">
	<img src="${movie.Poster}" alt="${movie.Title} Poster">
	<h2>${movie.Title}</h2>
	<p> ${movie.Year} <button id="imdbButton" value= ${movie.imdbID}>More Info</button>
	</p>
  </div>
`;
}
