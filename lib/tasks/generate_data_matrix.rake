require 'barby'
require 'barby/barcode/data_matrix'
require 'barby/outputter/png_outputter'


namespace :generate do

  desc "This generates a data_matrix png"
  task png: :environment do
    data_string="1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    data_string+="1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    data_string+="1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    data_string+="1234"
    barcode = Barby::DataMatrix.new(data_string)
    File.open('tmp/barcode.png', 'w'){|f| f.write barcode.to_png }
    puts("Encoded information: '#{data_string}'. Number of characters: #{data_string.length}")
  end
end
