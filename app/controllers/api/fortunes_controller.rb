class Api::FortunesController < ApplicationController
  @@count = 0 

  def random_fortune
    fortunes = [
                "Today it's up to you to create the peacefulness you long for.",
                "A smile is your passport into the hearts of others.",
                "Your high-minded principles spell success.", 
                "Yeet"
                ]

    @fortune_output = fortunes.sample

    render 'fortunes_view.json.jbuilder'
  end 

  def lucky_numbers 
    possible_numbers = (1..60).to_a 
    @lotto_numbers = possible_numbers.sample(6).join(", ")

    render 'lotto_numbers_view.json.jbuilder'
  end 

  def beer_song
    verses = [] 

    i = 99 
    while i > 0 
      if i - 1 == 0 
        verses << "No more bottles of beer on the wall, no more bottles of beer. Go to the store buy some more, 99 bottles of beer on the wall"
      else 
        verses << "#{i} bottles of beer on the wall, #{i} bottles of beer, take one down and pass it around, #{i - 1} bottles of beer on the wall" 
      end 
      i -= 1 
    end 

    @song_lyrics = verses

    render 'song_lyrics.json.jbuilder'
  end 

  def tracking 
    @@count += 1 
    @count = @@count
    render 'websites_tracking.json.jbuilder' 
  end 

end

