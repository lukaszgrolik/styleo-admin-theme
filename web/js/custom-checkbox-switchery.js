var CustomCheckboxSwitchery = {

  init: function() {
    $('.custom-checkbox-switchery').each(function() {
      var options = {
        color: '#3498db',
        className: 'switchery'
      };
      var colors = {
        success: '#2ecc71',
        info: '#1abc9c',
        warning: '#e67e22',
        danger: '#e74c3c',
        yellow: '#f1c40f',
        violet: '#9b59b6',
        brown: '#be643c',
        navy: '#34495e',
      };
      var sizes = {
        small: 'switchery-sm',
        large: 'switchery-lg',
        'extra-large': 'switchery-xl',
      }

      for (var key in colors) {
        if ($(this).hasClass(key)) {
          options.color = colors[key];

          break;
        }
      }

      for (var key in sizes) {
        if ($(this).hasClass(key)) {
          options.className += (' ' + sizes[key]);

          break;
        }
      }

      if ($(this).hasClass('sharp')) {
        options.className += ' sharp';
      }

      new Switchery($(this)[0], options);
    });
  }

};