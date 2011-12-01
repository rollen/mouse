require 'trollop'

options = Trollop::options do
  opt :file, "Full Path to location of yml port file", :type => String
end
