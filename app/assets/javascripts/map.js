
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
            hoverColor: '#EBB200',
            hoverOpacity: null,
            normalizeFunction: 'linear',
            scaleColors: ['#b6d6ff', '#005ace'],
            selectedColor: '#5462EE',
            selectedRegion: null,
            showTooltip: true,
            onRegionClick: function(element, code, region)
            {
                var message = 'You clicked "'
                  + region
                  + '" which has the code: '
                  + code.toUpperCase();

                alert(message);
            }
            
          });
    });
