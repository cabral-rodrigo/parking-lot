import places from 'places.js';

const boundries = {
  countries: ['ar'] // only search in the United States, the rest of the settings are unchanged: we're still searching for cities in German.
};

const initAutocomplete = () => {
  const addressInput = document.getElementById('parking_address');
  if (addressInput) {
    places({ container: addressInput }).configure(boundries);

  }
};

export { initAutocomplete };
