require 'json'

file = File.read('markers.json')
markers = JSON.parse(file)

wanted_markers = markers['d']['Result']['Markers'].select do |marker|
  marker['HasStrictQueryMatch'] == true
end
