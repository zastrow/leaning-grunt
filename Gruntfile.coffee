module.exports = (grunt) ->
  # A very basic default task.
  grunt.registerTask "default", "Log some stuff.", ->
    grunt.log.write("Logging some stuff...").ok()

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    assemble:

  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "assemble"
  grunt.loadNpmTasks "grunt-newer"

  # Default task(s).
  grunt.registerTask "default", ["uglify"]
