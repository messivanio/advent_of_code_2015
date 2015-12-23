require 'matrix'

ON = 1
OFF = 0

class Matrix
  def []=(row, column, value)
    @rows[row][column] = value
  end
end

@lights = Matrix.zero(1000)

def execute instruction
	command, state, x_start, y_start, x_end, y_end = instruction.match(/^(\w*)\s?(\w*) (\d*),(\d*) through (\d*),(\d*)/).captures
	to_execute = "#{command} #{[state.upcase, x_start, y_start, x_end, y_end].reject(&:empty?).join(', ')}"
	p to_execute
	eval to_execute
end

def toggle(x_start, y_start, x_end, y_end)
	for x in x_start..x_end
		for y in y_start..y_end
			@lights[x,y] = @lights[x,y] == 1 ? 0 : 1
		end
	end
end

def turn(state, x_start, y_start, x_end, y_end)
	for x in x_start..x_end
		for y in y_start..y_end
			@lights[x,y] = state
		end
	end
end

File.readlines('input.txt').select do |instruction|
	p execute(instruction.strip)
end

p @lights.inject{|sum,x| sum + x }
