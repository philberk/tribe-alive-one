// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.



const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


//filter books
const products= document.querySelector()
const searchBar = document.forms['search-books'].querySelector('input');
searchBar.addEventListener('keyup', function(e){
const term = e.target.value.toLowerCase();
// const products = list.getElementsByTagName('li');
})
