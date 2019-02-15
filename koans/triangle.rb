# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	if a > 0 and b > 0 and c > 0
		if a + b > c and a + c > b and b + c > a
			if a == b and a == c and b == c
				result = :equilateral
				
			elsif (a == b and a != c and b != c) or (a == c and a != b and c != b) or (b == c and b != a and c != a)
				result = :isosceles
			elsif a != b and a != c and b != c
				result = :scalene
			end
		else
			raise TriangleError, "This is not a valid triangle."
		end	
	else
		raise TriangleError, "There are some arguments that are wrong for the triangle side size."
	end		
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
