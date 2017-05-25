def sign_in_and_play
  visit '/'
  fill_in "player1", :with => "Sally"
  fill_in "player2", :with => "Geoff"
  click_button "Fight!"
end
