class WelcomeController < ApplicationController
  def is_it_christmas
    date = Time.zone.now
    
    if date.month == 12 && date.day == 25
      @answer = 'Yes'
    else
      @answer = 'No'
    end
  end
end
