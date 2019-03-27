feature 'Using a daily diary' do
  scenario 'Adding a new diary entry' do
    visit '/diary'

    click_button "Add Entry"
    expect(page).to have_content "Please enter a title and your diary entry"
    expect(page).to have_css("input", :count => 3)
  end
end
