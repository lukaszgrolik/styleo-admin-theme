var yaml = require('yamljs');

var swigLocals = {
	// routes: yaml.load('./src/templates/data/routes.yaml'),

	getRouteBySlug: function(routes, slug) {
		// var routes = swigLocals.routes;
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

				if (nestedRoute) {
					result = nestedRoute;

					break;
				}
			}
		}

		return result;
	},

	// getRouteBySlug: function(routes, slug) {
	// 	// var routes = swigLocals.routes;
	// 	var result = {};

	// 	routes.forEach(function(route) {
	// 		if (slug === route.slug) {
	// 			result = route;

	// 			return;
	// 		}

	// 		if (route.routes) {
	// 			route.routes.forEach(function(route1) {
	// 				if (slug === route1.slug) {
	// 					result = route1;

	// 					return;
	// 				}

	// 				if (route1.routes) {
	// 					route1.routes.forEach(function(route2) {
	// 						if (slug === route2.slug) {
	// 							result = route2;

	// 							return;
	// 						}
	// 					});
	// 				}
	// 			});
	// 		}
	// 	});

	// 	return result;
	// },

	getBreadcrumbsRoutes: function(routes, slug) {
		// var routes = swigLocals.routes;
		var result = [];

		routes.forEach(function(route) {
			if (slug === route.slug) {
				result.push(route);

				return;
			}

			if (route.routes) {
				route.routes.forEach(function(route1) {
					// if (slug === route.slug + '-' + route1.slug) {
					if (slug === route1.slug) {
						result.push(route);
						result.push(route1);

						return;
					}

					if (route1.routes) {
						route1.routes.forEach(function(route2) {
							// if (slug === route.slug + '-' + route1.slug + '-' + route2.slug) {
							if (slug === route2.slug) {
								result.push(route);
								result.push(route1);
								result.push(route2);

								return;
							}
						});
					}
				});
			}
		});

		return result;
	}
};

module.exports = swigLocals;

// var yaml = require('yamljs');

// var swigLocals = {
// 	routes: yaml.load('./src/templates/data/routes.yaml'),

// 	getRouteBySlug: function(slug) {
// 		var routes = swigLocals.routes;
// 		var result = {};

// 		routes.forEach(function(route) {
// 			if (slug === route.slug) {
// 				result = route;

// 				return;
// 			}

// 			if (route.routes) {
// 				route.routes.forEach(function(route1) {
// 					if (slug === route1.slug) {
// 						result = route1;

// 						return;
// 					}

// 					if (route1.routes) {
// 						route1.routes.forEach(function(route2) {
// 							if (slug === route2.slug) {
// 								result = route2;

// 								return;
// 							}
// 						});
// 					}
// 				});
// 			}
// 		});

// 		return result;
// 	},

// 	getBreadcrumbsRoutes: function(slug) {
// 		var routes = swigLocals.routes;
// 		var result = [];

// 		routes.forEach(function(route) {
// 			if (slug === route.slug) {
// 				result.push(route);

// 				return;
// 			}

// 			if (route.routes) {
// 				route.routes.forEach(function(route1) {
// 					// if (slug === route.slug + '-' + route1.slug) {
// 					if (slug === route1.slug) {
// 						result.push(route);
// 						result.push(route1);

// 						return;
// 					}

// 					if (route1.routes) {
// 						route1.routes.forEach(function(route2) {
// 							// if (slug === route.slug + '-' + route1.slug + '-' + route2.slug) {
// 							if (slug === route2.slug) {
// 								result.push(route);
// 								result.push(route1);
// 								result.push(route2);

// 								return;
// 							}
// 						});
// 					}
// 				});
// 			}
// 		});

// 		return result;
// 	}
// };

// module.exports = swigLocals;