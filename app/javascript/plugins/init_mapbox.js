import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    navigator.geolocation.getCurrentPosition(position => {
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });


      const directions = new MapboxDirections({
        accessToken:  mapboxgl.accessToken,
        unit: 'metric',
        profile: 'mapbox/walking',
        controls: {inputs: false, instructions: false}
      });

      map.addControl(directions);

      // let geolocate = new mapboxgl.GeolocateControl({
      //   positionOptions: {
      //   enableHighAccuracy: true
      //   },
      //   trackUserLocation: true })

      // map.addControl(geolocate);

      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '65px';
        element.style.height = '65px';

        new mapboxgl.Marker(element)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);

        element.addEventListener('click', function(e){
          e.stopPropagation();
          directions.setOrigin([position.coords.longitude, position.coords.latitude])
          directions.setDestination([marker.lng, marker.lat])
        });

      });
      fitMapToMarkers(map, markers);
    })
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

const succesPosition = (pos) => {
  return [pos.coords.longitude, pos.coords.latitude]
};

export { initMapbox };
