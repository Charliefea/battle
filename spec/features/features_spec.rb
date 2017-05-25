require './app.rb'

feature 'Start a fight' do
  scenario 'Can enter name and submit' do
    sign_in_and_play
    expect(page).to have_content("Sally vs Geoff")
  end
end

feature 'See a hit point' do
  scenario 'After starting the battle, player 1 sees player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Geoff score: 5')
  end
end

feature 'Attack player and get confirmation' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content('Sally attacked Geoff')
  end
end
