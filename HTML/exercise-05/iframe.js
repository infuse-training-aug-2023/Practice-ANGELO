const displayIframe = document.getElementById("displayIframe");

window.addEventListener("message", async (event) => {
	try {
		const imdbUrl = `https://www.omdbapi.com/?apikey=b73dbbee&i=${event.data}`;
		let response = await fetch(imdbUrl);
		let data = await response.json();
		displayIframe.innerHTML = createMovieCard(data);
	} catch (error) {
		console.log(error);
	}
});

function createMovieCard(movie) {
	var movieRating = movie.Ratings.map((ele) => {
		return ele.Value;
	}).join(" ");
	const rating = movieRating.split(" ");
	return `
    <div class="iframe-container">
	<h2>${movie.Title}</h2>
	<img src="${movie.Poster}" alt="${movie.Title} Poster" />
	<p>${movie.Year}</p>
	<p>Released: ${movie.Released}</p>
	<p>Runtime: ${movie.Runtime}</p>
	<p>Actors: ${movie.Actors}</p>
	<p>Genre: ${movie.Genre}</p>
	<p>Runtime: ${movie.Runtime}</p>
	<p>Plot: ${movie.Plot}</p>
	<p>Rating: ${rating[0]}</p>
	<p>Imdb Rating: ${movie.imdbRating}</p>
</div>
`;
}
