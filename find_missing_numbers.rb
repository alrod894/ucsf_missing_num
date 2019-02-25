def find_missing_numbers(num_arr)
  return [] if num_arr.nil?
  num_arr = num_arr.empty? ? [0] : num_arr.sort!
  (num_arr[0]..num_arr[-1]).to_a - num_arr
end

RSpec.describe 'Method' do
  it 'should return missing numbres' do
    input = [2,4,5,7,1]
    output = find_missing_numbers(input)
    expect(output).to eq([3,6])
  end

  it 'should return empty array' do
    input = [1,2,3,4]
    output = find_missing_numbers(input)
    expect(output).to eq([])
  end

  it 'should return empty array if empty input' do
    input = []
    output = find_missing_numbers(input)
    expect(output).to eq([])
  end

  it 'should return empty array if nil input' do
    input = nil
    output = find_missing_numbers(input)
    expect(output).to eq([])
  end
end
