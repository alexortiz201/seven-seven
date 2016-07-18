# import metaMagick module
require_relative "metaMagick"

# use macro to add behavior to RubyCsv
class RubyCsv < ActAsCsv
    act_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
