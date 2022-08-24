require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song tile' do
    artist = Artist.create!(name: 'Carly Rea Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2345)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 21345)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of artist for song' do
    artist = Artist.create!(name: 'Carly Rea Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2345)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 21345)

    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
end