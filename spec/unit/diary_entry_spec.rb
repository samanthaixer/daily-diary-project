require 'diary_entry'

describe DiaryEntry do
  let(:diary_title) { "New Diary Title" }
  let(:diary_entry) { "Some amazing text that would be an entry" }

  it 'adds a new diary entry' do
    expect(DiaryEntry.new(diary_title, diary_entry)).to be_a(DiaryEntry)
  end

  it 'displays a newly added diary entry' do
    diary = DiaryEntry.new(diary_title, diary_entry)
    expect(diary.display).to include diary_title
  end
end
