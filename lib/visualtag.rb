require "visualtag/version"
require 'rasem'

module Visualtag
	def Visualtag.create(pattern, filename, pattern_dimension, border_dimension)

		
		cell_dimension = Float(pattern_dimension)/6

		tag_dimension = pattern_dimension + border_dimension*2

		img = Rasem::SVGImage.new(tag_dimension,tag_dimension) do
			rectangle 0, 0, tag_dimension,tag_dimension, :stroke=>'black', :fill=>'black'
			if pattern.length != 6
				raise 'Wrong pattern dimension'
			end
			pattern.each.with_index do |row, row_index|
				if row.length != 6
					raise 'Wrong pattern dimension'
				end
				row.reverse.each.with_index do |cell, column_index|
					if cell == 0
						color = 'black'
					else
						color = 'white'
					end
					rectangle row_index*cell_dimension+border_dimension, column_index*cell_dimension+border_dimension, cell_dimension, cell_dimension, :stroke=>color, :fill=>color
				end
			end
		end

		File.open(filename, "w") do |f|
		  f << img.output
		end
	end
end
