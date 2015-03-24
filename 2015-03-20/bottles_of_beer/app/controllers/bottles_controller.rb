class BottlesController < ApplicationController
#  include ActionView::Helpers::TextHelper
  def bottles
    @number = params[:number].to_i
#    @bottles = (@number == 0) ? 'no more' : pluralize(@number, 'bottle')
#    @string = "#{@bottles} of beer on the wall,\n#{@bottles} of beer..."
  end
  
  def take
    @number = params[:number].to_i
  end
end
