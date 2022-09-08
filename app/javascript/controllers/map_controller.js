import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
    }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element, // container ID
      style: 'mapbox://styles/mapbox/streets-v11', // style URL
      // center: [-74.5, 40], // starting position [lng, lat]
      // zoom: 9, // starting zoom
      // projection: 'globe' // display the map as a 3D globe
    });
    // map.on('style.load', () => {
    //   map.setFog({}); // Set the default atmosphere style
    // });
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat])
      this.map.fitBounds(bounds, {padding: 50, maxZoom: 9, duration: 10})
    })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map);
    })
  }
}
