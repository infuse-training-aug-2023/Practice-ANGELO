const apiKey = 'b73dbbee'; // Replace with your actual API key

document.addEventListener('DOMContentLoaded', function() {
  const searchButton = document.getElementById('searchButton');
  const searchInput = document.getElementById('searchInput');
  const sortName = document.getElementById('sortName');
  const sortYear = document.getElementById('sortYear');
  const moviesContainer = document.getElementById('moviesContainer');
  const nextButton = document.getElementById('nextButton');
  const prevButton = document.getElementById('prevButton');

  let currentPage = 1;
  let totalResults = 0;
  let currentMovies = [];

  searchButton.addEventListener('click', async function() {
    const searchTerm = searchInput.value;
    const selectedSortName = sortName.value;
    const selectedSortYear = sortYear.value;
    currentPage = 1; // Reset current page when a new search is performed

    const apiUrl = `https://www.omdbapi.com/?apikey=${apiKey}&s=${searchTerm}&type=movie`;
    // const imdbUrl = `https://www.imdb.com/title/${}/`;

    try {
      const data = await fetchMovies(apiUrl);
      totalResults = data.totalResults;
      currentMovies = data.Search;
      console.log(totalResults,currentMovies);
      updateMoviesDisplay();
    } catch (error) {
      console.error('Error:', error.message);
    }
  });

  nextButton.addEventListener('click', function() {
    if (currentPage < Math.ceil(totalResults / 10)) {
      currentPage++;
      updateMoviesDisplay();
    }
  });

  prevButton.addEventListener('click', function() {
    if (currentPage > 1) {
      currentPage--;
      updateMoviesDisplay();
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
        throw new Error(data.Error || 'No movies found.');
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
      .map(movie => createMovieCard(movie))
      .join('');
  }

  function createMovieCard(movie) {
    return `
      <div class="movie-card">
        <img src="${movie.Poster}" alt="${movie.Title} Poster">
        <h2>${movie.Title}</h2>
        <p> ${movie.Year} <button id="imdbButton">More Info</button></p>
      </div>
    `;
  }
});
