class PagesController < ApplicationController
  def home
  end

  def about
    @page_title = "BC | About"
  end

  def contact
    @page_title = "BC | Contact"
  end
end
