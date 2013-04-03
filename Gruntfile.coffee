'use strict'

module.exports = (grunt) =>
	grunt.initConfig(
		pkg: grunt.file.readJSON 'package.json'
		meta:
			banner:
				"""
				/*!
				 * Asyncjs Coffeescript Talk, 11th April 2013
				 * http://asyncjs.org
				 * CC-BY 3.0 licensed
				 * Copyright (C) 2013 Dave Gurnell, http://untyped.com
				 *
				 * Written using reveal.js <%= pkg.version %>
				 * http://lab.hakim.se/reveal-js
				 * MIT licensed
				 * Copyright (C) 2013 Hakim El Hattab, http://hakim.se
			   */
			  """

		# Tests will be added soon
		qunit:
			files: [ 'test/**/*.html' ]

		uglify:
			options:
				banner:
				  """
				  <%= meta.banner %>

          """
			build:
				src: 'js/reveal.js'
				dest: 'js/reveal.min.js'
		cssmin:
			compress:
				files:
					'css/reveal.min.css': [ 'css/reveal.css' ]
		sass:
			main:
				files:
					'css/theme/default.css'   : 'css/theme/source/default.scss'
					'css/theme/beige.css'     : 'css/theme/source/beige.scss'
					'css/theme/coffee.css'    : 'css/theme/source/coffee.scss'
					'css/theme/night.css'     : 'css/theme/source/night.scss'
					'css/theme/serif.css'     : 'css/theme/source/serif.scss'
					'css/theme/simple.css'    : 'css/theme/source/simple.scss'
					'css/theme/sky.css'       : 'css/theme/source/sky.scss'
					'css/theme/moon.css'      : 'css/theme/source/moon.scss'
					'css/theme/solarized.css' : 'css/theme/source/solarized.scss'
		jshint:
			options:
				curly: false
				eqeqeq: true
				immed: true
				latedef: true
				newcap: true
				noarg: true
				sub: true
				undef: true
				eqnull: true
				browser: true
				expr: true
				globals:
					head: false
					module: false
					console: false
			files: [ 'js/reveal.js' ]
		watch:
			main:
				files: [ 'js/reveal.js', 'css/reveal.css' ]
				tasks: 'default'
			theme:
				files: [ 'css/theme/source/*.scss', 'css/theme/template/*.scss' ]
				tasks: 'themes'
  )

	# Dependencies
	grunt.loadNpmTasks 'grunt-contrib-jshint'
	grunt.loadNpmTasks 'grunt-contrib-cssmin'
	grunt.loadNpmTasks 'grunt-contrib-uglify'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-contrib-sass'

	# Default task
	grunt.registerTask 'default', [ 'jshint', 'cssmin', 'uglify' ]

	# Theme task
	grunt.registerTask 'themes', [ 'sass' ]
