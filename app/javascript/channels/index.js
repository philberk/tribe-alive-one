// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.



const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


//filter books
const list= document.querySelector('#js')
const searchBar = document.forms['search-books'].querySelector('input');
searchBar.addEventListener('keyup', function(e){
  const term = e.target.value.toLowerCase(); 
  const list = list.getElementsByTagName('li');
  Array.from(Product).forEach(function(product){
    const name = product.firstElementChild.textContent;
    if(name.toLowerCase().indexOf(term) != -1)
    product.style.display= 'block';
  } else {
    product.style.display ='none';
  }
  })
})
