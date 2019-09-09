class StaticController < ApplicationController

  def homepage
    @fixture= Fixture.all.paginate(page: params[:page], per_page: 8)
  end

  def about

  end
end