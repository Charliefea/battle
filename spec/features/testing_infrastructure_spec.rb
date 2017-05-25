require './app.rb'

feature 'Start a fight' do
  scenario 'Can enter name and submit' do
    visit '/'
    fill_in "player1", :with => "Sally"
    fill_in "player2", :with => "Geoff"
    click_button "Fight!"
    expect(page).to have_content("Sally vs Geoff")
  end
end

  feature 'See a hit point' do
    scenario 'After starting the battle, player 1 sees player 2 hit points' do
      visit '/'
      fill_in "player1", :with => "Sally"
      fill_in "player2", :with => "Geoff"
      click_button "Fight!"
      expect(page).to have_content('Geoff score: 5')
    end
  end
