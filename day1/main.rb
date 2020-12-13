input = File.readlines("input", chomp: true)

def part1(input)
  input.each_with_index do |line, line_index|
    input.each_with_index do |other_line, other_line_index|
      next unless line_index != other_line_index

      if (line.to_i + other_line.to_i) == 2020
        puts line.to_i * other_line.to_i
        return
      end
    end
  end
end

def part2(input)
  input.each_with_index do |line, line_index|
    input.each_with_index do |other_line, other_line_index|
      input.each_with_index do |third_line, third_line_index|
        next unless line_index != other_line_index && other_line_index != third_line_index

        if (line.to_i + other_line.to_i + third_line.to_i) == 2020
          puts line.to_i * other_line.to_i * third_line.to_i
          return
        end
      end
    end
  end
end

part1(input)
part2(input)