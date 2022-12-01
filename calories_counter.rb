class CaloriesCounter
  def self.parse_file
    file = File.open('lists.rb')
    lists_string = file.read
    lists_string.split("\n\n").map {|elf_load| elf_load.split("\n")}
  end

  def self.sums
    lists = parse_file
    lists.map! {|list| list.map!(&:to_i).sum }
  end

  def self.select_biggest
    sums.sort!.last
  end
end
