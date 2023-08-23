const apiKey = "b73dbbee";

document.addEventListener("DOMContentLoaded", function () {
	const searchButton = document.getElementById("searchButton");
	const searchInput = document.getElementById("searchInput");
	const sortValue = document.getElementById("sortValue");
	const moviesContainer = document.getElementById("moviesContainer");
	const nextButton = document.getElementById("nextButton");
	const prevButton = document.getElementById("prevButton");

	let currentPage = 1;
	let totalResults = 0;
	let currentMovies = [];

	searchButton.addEventListener("click", async function () {
		const searchTerm = searchInput.value;
		const selectedsortValue = sortValue.value;
		currentPage = 1;

		const apiUrl = `https://www.omdbapi.com/?apikey=${apiKey}&s=${searchTerm}&type=movie`;

		try {
			const data = await fetchMovies(apiUrl);
			totalResults = data.totalResults;
			currentMovies = data.Search;
			console.log(totalResults, currentMovies);
			updateMoviesDisplay();
		} catch (error) {
			console.error("Error:", error.message);
		}
	});

	nextButton.addEventListener("click", function () {
		if (currentPage < Math.ceil(totalResults / 10)) {
			currentPage++;
			updateMoviesDisplay();
		}
	});

	prevButton.addEventListener("click", function () {
		if (currentPage - 1 > 0) {
			currentPage--;
			updateMoviesDisplay();
		}
	});

	moviesContainer.addEventListener("click", function (event) {
		const moreInfobutton = event.target;

		if (moreInfobutton.id === "imdbButton") {
			const buttonValue = moreInfobutton.value;
			const imdbUrl = `https://www.imdb.com/title/${buttonValue}/`;
			window.open(imdbUrl, "_blank");
		}
	});

	async function fetchMovies(apiUrl) {
		try {
			const response = await fetch(apiUrl);
			const data = await response.json();
			console.log(data);

			if (data.Search) {
				return data;
			} else {
				throw new Error(data.Error || "No movies found.");
			}
		} catch (error) {
			throw new Error(`Error fetching movie data: ${error.message}`);
		}
	}

	function updateMoviesDisplay() {
		const startIndex = (currentPage - 1) * 10;
		const endIndex = startIndex + 10;
		const moviesToDisplay = currentMovies.slice(startIndex, endIndex);
		displayMovies(moviesToDisplay);
	}

	function displayMovies(movies) {
		moviesContainer.innerHTML = movies
			.map((movie) => createMovieCard(movie))
			.join("");
	}

	function createMovieCard(movie) {
		return `
      <div class="movie-card">
        <img src="${movie.Poster}" alt="${movie.Title} Poster">
        <h2>${movie.Title}</h2>
        <p> ${movie.Year} <button id="imdbButton" value= ${movie.imdbID}>More Info</button></p>
      </div>
    `;
	}
});
