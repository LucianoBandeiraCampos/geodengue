// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
require("chartkick")
require("chart.js")
// External imports
import "bootstrap";


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initMapbox } from '../plugins/init_mapbox';
// import { initAutocomplete } from '../plugins/init_autocomplete';
import { toggleButton } from '../components/toggle_button';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // initAutocomplete();
  toggleButton();
  const mapboxInstance = initMapbox();
  
  // Wait for the user to find and select an address
  if (mapboxInstance && mapboxInstance.geocoder) {
    mapboxInstance.geocoder.on('result', (e) => {
      const result = e.result;
      if (result && result.place_name) {
        // update the Form with the full address (place_name)
        const addressInputEl = document.getElementById('place_address');
        addressInputEl.value = result.place_name;
      }
    })
  }
});
