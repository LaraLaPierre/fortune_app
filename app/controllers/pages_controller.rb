class PagesController < ApplicationController
  def fortune_method
    fortunes = ["Today it's up to you to create the peacefulness you long for.", "A friend asks only for your time not your money.", "A smile is your passport into the hearts of others.", "Your high-minded principles spell success.", "Change can hurt, but it leads a path to something better."]
    fortune = fortunes.shuffle[0]
    render json: {fortune_teller_says: fortune}
  end
  
  def numbers_method 
    lotto_numbers = []
    6.times { lotto_numbers << rand(1..60)} 
    lotto_string = lotto_numbers.join(", ") 
    render json: {lucky_numbers: lotto_string}
  end  

  def bottles_method
    index = 99
    song = []

    99.times do 
      lyrics = "#{index} bottles of beer on the wall, #{index} bottles of beer. Take one down, pass it around, #{index-1} bottles of beer on the wall."
      song << lyrics
      index -= 1
    end 
    

    render json: {song: song}
  end

  def visit_method
    count = 0
    count = count + 1 
    render json: {page_visit: count}
  end 

end  
    
    
 



