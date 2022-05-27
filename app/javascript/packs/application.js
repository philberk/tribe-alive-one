// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "stylesheets/application"
import "bootstrap/dist/js/boostrap"
import "bootstrap/dist/css/bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


//= require_tree
//= require jquery
//= require jquery_ujs
//== require turbolinks

//$(document).on('turbolinks:load', function (){ alert("turbolinks on load event works") });
// const list= document.querySelector('#js ul')
// const searchBar = document.forms['search-products'].querySelector('input');
// searchBar.addEventListener('keyup', function(e){
//   const term = e.target.value.toLowerCase();
//   const products = list.getElementsByTagName('li');
//   Array.from(products).forEach(function(product){
//     const name = product.firstElementChild.textContent;
//     if(name.toLowerCase().indexOf(term) != -1){
//     product.style.display= 'block';
//   } else {
//     product.style.display ='none';
//   }
//   });
// });

import "controllers"
