require 'json'

# 1. Fetch data on check with postman
# 2. Process usefull data
# 3. Fetch info on properties
# 4. Persist them on the system if do not exist
# 5. Display them on an app

file = File.read('markers.json')
markers = JSON.parse(file)

wanted_markers = markers['d']['Result']['Markers'].select do |marker|
  marker['HasStrictQueryMatch'] == true
end
