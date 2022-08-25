require 'rails_helper'

# As a user
# When I visit the home page
# And I click on the link New Task
# Then I see a form to create a task

RSpec.describe "songs index page". type: :feature do
  describe "As a user" do
    describe "When I visit /songs" do
      it "i can see each song's title and play count" do

        artist = Artist.create! (name: "Carly")

        song_1 = Song.create!(title: "I Really Like You", length: 208, play_count: 24319854, artist: artist)

        visit '/songs'
        save_and_open_page
      end
    end
  end
end