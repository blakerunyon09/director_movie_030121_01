const apiURL = "http://localhost:3000/directors"
const select = document.querySelector('select')
const container = document.querySelector('.container')
fetch(apiURL)
  .then(response => response.json())
  .then(directors => directors.forEach(
    director => {
      const option = document.createElement('option')
      
      option.value = director.id
      option.textContent = director.name

      select.append(option)
    }))

fetch(apiURL)
  .then(response => response.json())
  .then(directors => directors.forEach(
    director => {
      const h2 = document.createElement('h2')
      
      h2.innerHTML = `<a href="director.html?id=${director.id}">${director.name}</a>`

      container.append(h2)
  }))