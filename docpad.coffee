# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	# ...
  templateData:
    site:
      title: "High Arts"
    getTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
    plugins:
      uglify:
        # Disable UglifyJS on the development environment.
        environments:
          development:
            enabled: false
        # Pass false to skip compressing entirely. Pass an object to specify custom
        # compressor options: http://lisperator.net/uglifyjs/compress .
        compress: true
        # Pass false to skip mangling names.
        mangle: true
      cleancss:
        # These are options passed to the clean-css dependency
        cleancssOpts:
          # * for keeping all (default), 1 for keeping first one only, 0 for removing all
          keepSpecialComments: '1'
          # Whether to keep line breaks
          keepBreaks: false
          # Turns on benchmarking mode measuring time spent on cleaning up.
          benchmark: false
          # Whether to process @import rules.
          processImport: true
          # Set to false to skip URL rebasing
          rebase: true
          # Set to false to disable advanced optimizations
          advanced: false
          # Set to true to get minification statistics under stats property
          debug: true
        # Disabled on development environments by default.
        environments:
          development:
            enabled: false
  collections:
    'issue2016-1': ->
      @getCollection('html').findAllLive(
        relativeOutDirPath: 'issues/2016-1/articles',
        isPagedAuto: $ne: true
      )
}

# Export the DocPad Configuration
module.exports = docpadConfig
