class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end
  def new
      @quote = Quote.new
  end
  def creat
    Quote.create(quote_params)
    redirect_to root_path
  end 
  private
  def
    params.require(:quote).permit(:saying , :aouther) 
  end 
end
