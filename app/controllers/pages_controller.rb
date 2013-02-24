class PagesController < ApplicationController

  def index
    
  end
  
  def about
    respond_to do |format|
      format.js
    end
  end

end