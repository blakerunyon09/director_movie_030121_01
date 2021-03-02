const apiURL = "http://localhost:3000/directors/"
const searchParams = new URLSearchParams(window.location.search)
const directorID = searchParams.get('id')

fetch(apiURL + directorID)
  .then(response => response.json())
  .then(director => {
    const h1 = document.createElement('h1')
    const ol = document.createElement('ol')

    h1.innerText = director.name

    document.body.append(h1)
    document.body.append(ol)

    director.movies.forEach(movie => {
      const li = document.createElement('li')

      li.innerHTML = `Movie: ${movie.name}<br> Rating: ${movie.rating}`

      ol.append(li)
    })
  })