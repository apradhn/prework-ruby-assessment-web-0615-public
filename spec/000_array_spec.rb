describe "Arrays" do
  languages = ["Ruby", "JavaScript", "HTML"]

  it 'adds an element to an array' do
    # write your code here!
    languages << "Python"
    expect(languages.count).to eq(4) 
  end

  it 'prints out all the elements in the array' do
    expect(STDOUT).to receive(:puts).with(languages)
    # write your code here!
    puts languages
  end

  it 'returns the value at index 1' do
    expect(languages[1]).to eq("JavaScript") 
  end

  it 'returns the index for the value "HTML"' do 
    expect(languages.index("HTML")).to eq(2)
  end
end