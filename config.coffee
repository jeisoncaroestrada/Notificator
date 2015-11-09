exports.config =
	# See http://brunch.readthedocs.org/en/latest/config.html for documentation.
	modules:
		wrapper: false
		definition: false

	files:
		javascripts:
			joinTo:
				'js/app.js': /^app/
				'js/vendor.js': /^vendor/
			order:
				before: [
					# vendor
					'vendor/jquery-2.1.3.min.js',
					'vendor/bootstrap.min.js',
					# app
					'app/js/main.js',
				] 

		stylesheets:
			joinTo:
				'css/app.css': /^(app|vendor)/
			order:
				before: [
				]
				after: []

		templates:
			joinTo: 'scripts/app.js'

			

		  

	plugins:
		autoReload:
			enabled:
				css: on
				js: on
				assets: on
		uglify:
			mangle: false
			compress:
				global_defs: 
					DEBUG: false