var CustomCheckboxSwitchery = {

  init: function() {
    $('.custom-checkbox-switchery').each(function() {
      var options = {
        color: '#3498db',
        className: 'switchery'
      };

      // StyleoAdminColors is a global variable defined in styleo-admin.js
      var colors = StyleoAdminColors;
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