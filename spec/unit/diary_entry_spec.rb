require 'diary_entry'

describe DiaryEntry do
  it 'adds a new diary entry' do
    expect(subject.add).to eq "Entry added"
  end
end
