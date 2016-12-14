class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
    def new
      @quote = Quote.new
    end
  end
end
