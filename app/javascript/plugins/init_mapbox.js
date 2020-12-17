import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    // style: 'mapbox://styles/mapbox/streets-v10',   // mapa normal
    // style: 'mapbox://styles/rafasart/ckisvnauh1ca019npe1cetlur',  // ruas verde turquesa
    // style: 'mapbox://styles/rafasart/ckisuvwxt1bl319oc8rxexjzm',  // ruas laranjas
    // style: 'mapbox://styles/rafasart/ckisw627m0tyi19qun3liekfm',   // quarteirões laranja
    style: 'mapbox://styles/rafasart/ckiswqkp41cyy19nnmdxcb5k4',  // quarteirões verde

    center: [-54.603801, -20.48572],
    zoom: 15
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (!mapElement) {
    // Only build a map if there's a div#map to inject into
    return;
  }

  const map = buildMap(mapElement);
  const markers = JSON.parse(mapElement.dataset.markers);
  // Excludes places without visit markers
  const filteredMarkers = markers.filter(function (el) {
    return el !=null;
  });
  console.log(markers);
  
  addMarkersToMap(map, filteredMarkers);
  // fitMapToMarkers(map, filteredMarkers);
  
  // Add Geocoder Plugin to mapbox
  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl
  });
  map.addControl(geocoder);
  
  return {
    map,
    geocoder // return "geocoder" so we can handle events from it
  };
};

export { initMapbox };