feature 'Using a daily diary' do
  scenario 'Adding a new diary entry' do
    visit '/diary'

    click_button "Add Entry"
    expect(page).to have_content "Please enter a title and your diary entry"
    expect(page).to have_css("input", :count => 3)
  end

  scenario 'Displaying added diary entry' do
    visit '/diary'

    click_button "Add Entry"
    fill_in "title", with: "Databases are fun"
    fill_in "entry", with: "Today I am learning about databases. They are fun"
    click_button "Save Entry"

    expect(page).to have_content "Diary Entries"
    expect(page).to have_content "Databases are fun"
  end
end
