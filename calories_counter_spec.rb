require_relative 'calories_counter.rb'

RSpec.describe CaloriesCounter do
  it 'parses the list' do
    expect(described_class.parse_file).to be_a Array
  end

  it 'sums the calories of each elf' do
    expect(described_class.sums.first).to be_a Integer
  end

  it 'selects the biggest load' do
    expect(described_class.select_biggest).to eq 70698
  end
end