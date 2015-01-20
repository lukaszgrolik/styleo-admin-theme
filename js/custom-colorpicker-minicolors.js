var CustomColorpickerMinicolors = {

  init: function() {
    $('.colorpicker').each(function () {
      $(this).minicolors({
        control: $(this).attr('data-control') || 'hue',
        position: $(this).attr('data-position') || 'bottom left',
        opacity: $(this).attr('data-opacity'),
        inline:  'true' === $(this).attr('data-inline'),

        defaultValue: $(this).attr('data-default-value') || '',
        letterCase: $(this).attr('data-letter-case') || 'lowercase',
        theme: 'bootstrap',
        change: function (hex, opacity) {
          if (!hex) {
            return;
          }

          if (opacity) {
            hex += ', ' + opacity;
          }

          try {
            console.log(hex);
          } catch (e) {

          }
        },
      });
    });
  }

};