class FixturesController < ApplicationController
  
  def index
    @fixture = Fixture.all
  end
  
  def new
    @fixture = Fixture.new
  end
  
  def create
    @fixture = Fixture.new(params.required(:fixture).permit(
                                                        :club_name, :club_info, :address,
                                                        :city, :providence, :country,
                                                        :club_email, :club_twitter, :club_website,
                                                        :club_phone, :age, :club_facebook, :image))

    @fixture.user_id = current_user.id

    if @fixture.save!
      redirect_to @fixture
    else
      render :new
    end
  end

  def show
    @fixture = Fixture.find(params[:id])
  end
  
  def update
    if @fixture.update(params.required(:fixture).permit(
        :club_name, :club_info, :address,
        :city, :providence, :country,
        :club_email, :club_twitter, :club_website,
        :club_phone, :age, :club_facebook, :image
    ))
      redirect_to @fixture
    else
      render :edit
    end
  end
end
