var CustomCheckboxICheck = {

  init: function() {
    $('.custom-checkbox-icheck').each(function() {
      var colorClass = '';
      var sizeClass = '';
      // StyleoAdminColors is a global variable defined in styleo-admin.js
      var colors = Object.keys(StyleoAdminColors);
      var sizes = ['small', 'large', 'extra-large'];

      for (var i = 0, l = colors.length; i < l; ++i) {
        if ($(this).hasClass(colors[i])) {
          colorClass = colors[i];

          break;
        }
      }

      for (var i = 0, l = sizes.length; i < l; ++i) {
        if ($(this).hasClass(sizes[i])) {
          sizeClass = sizes[i];

          break;
        }
      }

      var baseClass = 'custom-control-checkbox-icheck';
      var checkboxClass = baseClass + ' ' + baseClass + '-checkbox ' + colorClass + ' ' + sizeClass;
      var radioClass = baseClass + ' ' + baseClass + '-radio ' + colorClass + ' ' + sizeClass;

      $(this).iCheck({
        checkboxClass: checkboxClass,
        radioClass: radioClass
      });
    });
  }

};