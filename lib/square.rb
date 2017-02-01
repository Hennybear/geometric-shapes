class Square
	attr_reader :x, :y, :side, :length, :width

	def initialize(side, x=0, y=0)
		@side = side 
		@x, @y = x, y
		@width = @side
		@length = @side
	end

	def diameter
    Math.sqrt((@length.to_f ** 2) + (@width.to_f ** 2))
	end

	def perimeter
		@width * 2 + @length * 2
	end

	def area
		@side * @side
	end

	def contains_point?(x_1, y_1)
		right_edge = @x + (@width / 2.0)
		left_edge = @x - (@width / 2.0)
		top_edge = @y + (@length / 2.0)
		bottom_edge = @y - (@length / 2.0)

		if (x_1 <= right_edge && x_1 >= left_edge) && (y_1 <= top_edge && y_1 >= bottom_edge)
			true
		else
			false
		end
		
	end
end


#attempt to fix Sublime indentation issue when pushing to GitHub