# Implements multiplication table
class MultiplicationTable
  attr_reader :size

  def initialize(size = 9)
    @size = size
    @table = []
  end

  def header_row
    (1..size).to_a
  end

  def content
    (1..size).each do |row|
      new_row = []
      # Try .map method
      header_row.each do |number|
        new_row.push(number * row)
      end
      @table.push(new_row)
    end
    @table
  end

  def to_s
    output = format_row('*', header_row) + "\n"
    output += content.each_with_index.map do |row, index|
      format_row((index + 1).to_s, row) + "\n"
    end.join
    output
  end

  private

  def format_row(leader, row)
    output = leader.rjust(4)
    row.each do |element|
      output <<  element.to_s.rjust(4)
    end
    output
  end
end
