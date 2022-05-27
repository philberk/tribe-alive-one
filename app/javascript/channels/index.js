// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.



const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


//filter books
const list= document.querySelector('.js');

console.log(list);

const searchBar = document.forms['search-products'].querySelector('input');
searchBar.addEventListener('keyup', function(e){
  const term = e.target.value.toLowerCase();
  const products = list.getElementsByTagName('li');
  Array.from(products).forEach(function(product){
    const name = product.firstElementChild.textContent;
    if(name.toLowerCase().indexOf(term) != -1){
    product.style.display= 'block';
  } else {
    product.style.display ='none';
  }
  });
});
