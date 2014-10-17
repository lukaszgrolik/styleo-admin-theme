var swigLocals = {

  getRouteBySlug: function(routes, slug) {
    var result = {};
    var route = null;
    var nestedRoute = null;

    for (var i = 0, l = routes.length; i < l; ++i) {
      route = routes[i];

      if (slug === route.slug) {
        result = route;

        break;
      } else if (route.routes) {
        nestedRoute = swigLocals.getRouteBySlug(route.routes, slug);

        if ('string' === typeof nestedRoute.slug) {
          result = nestedRoute;

          break;
        }
      }
    }

    return result;
  },

  // @todo recursively
  getBreadcrumbsRoutes: function(routes, slug) {
    var result = [];
    var route = null;
    var route1 = null;
    var route2 = null;

    // iterate over first routes level
    for (var i = 0, l = routes.length; i < l; ++i) {
      route = routes[i];

      if (slug === route.slug) {
        result.push(route);

        break;
      }

      if (route.routes) {
        // iterate over second routes level
        for (var j = 0, m = route.routes.length; j < m; ++j) {
          route1 = route.routes[j];

          if (slug === route1.slug) {
            result.push(route);
            result.push(route1);

            break;
          }

          if (route1.routes) {
            // iterate over third routes level
            for (var k = 0, n = route1.routes.length; k < n; ++k) {
              route2 = route1.routes[k];

              if (slug === route2.slug) {
                result.push(route);
                result.push(route1);
                result.push(route2);

                break;
              }
            }
          }
        }
      }
    }

    return result;
  }

};

module.exports = swigLocals;