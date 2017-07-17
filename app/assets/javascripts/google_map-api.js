function initMap() {
  var styledMapType = new google.maps.StyledMapType(
    [
      {
        "stylers": [
          {
            "saturation": -100
          }
        ]
      }
    ],
    {name: 'STANDING PINE MAP'});

  var myLatlng = {lat: 35.1714807, lng: 136.9012269};

  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: myLatlng,
    zoom: 15,
    mapTypeControlOptions: {
      mapTypeIds: [
        // 'roadmap', 'satellite', 'hybrid', 'terrain', 'styled_map'
      ]
    }
  });

  var image = image_path('marker.png');

  var marker = new google.maps.Marker({
    position: myLatlng,
    title:"STANDING PINE",
    icon: image
  });

  map.mapTypes.set('styled_map', styledMapType);
  map.setMapTypeId('styled_map');
  marker.setMap(map);
}

