class StaticController < ApplicationController

  def homepage
    @fixture= Fixture.all
  end

  def about

  end
end