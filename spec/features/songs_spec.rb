require 'spec_helper'

feature 'User can manage a playlist' do

  scenario 'User can add songs to a playlist' do
    song_name = 'Chillout Mix 2013'
    song_url = 'https://www.youtube.com/watch?v=IHDZP2qTDuY'
    visit '/songs'
    click_on 'Add new song'
    fill_in 'Title', with: song_name
    fill_in 'Url', with: song_url
    click_on 'Create Song'
    expect(page).to have_content(song_name)
    expect(page).to have_content(song_url)
  end

end