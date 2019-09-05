feature 'if players can add names via form and submit' do
  scenario 'can sumbit names and display them' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    fill_in :player_2_name, with: 'Cat'
    click_button'Submit'
    expect(page).to have_content "Dog vs. Cat"
  end
end
