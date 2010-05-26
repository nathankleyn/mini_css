require 'rubygems'
require 'rainpress'

class Mini_CSS
  def self.version
    '0.0.1'
  end

  def self.compress(files)
    output = []
    files.each do |file|
      File.open(file) do |f|
        output << '/* Compressed CSS From ' + File.basename(file) + ' */'
        output << Rainpress.compress(f.readlines.join("\n"))
      end
    end

    output.join("\n\n")
  end
end