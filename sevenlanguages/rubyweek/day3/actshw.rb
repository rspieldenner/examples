class CsvRow
  def method_missing name, *args
    @row[@headers.index(name.to_s)]
  end
  
  def initialize(row, headers)
    @row = row
    @headers = headers
  end
end

class ActsAsCsv
  def read
    file = File.new(self.class.to_s.downcase + '.txt')
    @headers = file.gets.chomp.split(', ')
    file.each do |row|
      @result << CsvRow.new(row.chomp.split(', '), @headers)
    end
  end
  
  def headers
    @headers
  end
  
  def csv_contents
    @result
  end
  
  def each(&block)
    csv_contents.each { |row| block.call row}
  end
  
  def initialize
    @result = []
    read
  end
end

class RubyCsv < ActsAsCsv
end

csv = RubyCsv.new
puts csv.headers.inspect
puts csv.csv_contents.inspect
csv.each { |row| puts row.one }