def Reader(filename, encoding="UTF-8")
    return Array.New if !File.exist?(filename)
    file = File.new(filename, "r:#{encoding}")
    file.readlines.map { |line| line.strip }.filter { |str| !str.empty? }
end

mas_lines = Reader("ListOfWords.txt").sort_by { |line| line.scan(/[a-zA-Z]+/).length }
puts mas_lines
