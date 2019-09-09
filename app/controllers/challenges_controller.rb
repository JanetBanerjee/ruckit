class ChallengesController < ApplicationController
  before_action :authenticate_user!

  def index
    @challenge = Challenge.where(receiver_id: current_user.id)

    @challenger = Challenge.where(challenger_id: current_user.id)

    @fixture = Fixture.where(:user_id => current_user.id)

    @user = current_user
  end

  def new

  end

  def list

  end

  def show
    @fixture = Fixture.find(params[:id])

    @challenge = Challenge.new
  end
  
  def create
    @challenge = Challenge.new(params.required(:challenge).permit(
        :match_date, :challenger_id, :receiver_id,
        :full_name, :message, :phone_number, :response,
        :response_message, :user_id, :club_name, :image, :match_date))

    @challenge.challenger_id = current_user.id


    if @challenge.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])

    @details = Challenge.find(params[:id])

    @challenger = Fixture.where(:club_name => @details.club_name)[0]
  end

  def update
    @challenge = Challenge.find(params[:id])

    if @challenge.update(params.required(:challenge).permit(
        :match_date, :challenger_id, :receiver_id,
        :full_name, :message, :phone_number, :response,
        :response_message, :user_id, :match_date
    ))

      @challenge.update(response: "Accept") if accept?

      @challenge.update(response: "Decline") if decline?

      redirect_to @challenge
    else
      render :edit
    end

  end

  private

  def accept?
    params[:commit] == "Accept"
  end

  def decline?
    params[:commit] == "Decline"
  end

  def authenticate_user
    unless user.signed_in?
      flash[:alert] = "You must sign in to view this page"
      redirect_to(root_path)
    end
  end
  
end
