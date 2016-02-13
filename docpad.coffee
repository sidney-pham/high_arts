# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	# ...
  templateData:
    site:
      title: "High Arts"
    getTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
}

# Export the DocPad Configuration
module.exports = docpadConfig
