
//svg jqvmap loaded on /map
jQuery(document).ready(function() {


    jQuery('#vmap').vectorMap(
      {
        map: 'usa_en',
        backgroundColor: 'transparent',
        borderColor: '#818181',
        borderOpacity: 0.25,
        borderWidth: 1,
        color: '#E8D5C9',
        enableZoom: true,
        hoverColor: '#FFBB0D',
        hoverOpacity: null,
        normalizeFunction: 'linear',
        scaleColors: ['#b6d6ff', '#005ace'],
        selectedColor: '#5462EE',
        selectedRegion: null,
        showTooltip: true,
        onRegionClick: function(element, code, region)
        {

            $("#map-box").toggle();
            var scope = angular.element(document.body).scope().$$childTail;
            console.log(code);
            $('#vmap').append('http://google.com');

            console.log(scope);
            scope.$apply(function() {
                scope.vm.state = code;
            });
        }
        
      });
});



