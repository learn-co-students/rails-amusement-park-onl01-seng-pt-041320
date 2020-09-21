class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to root_path
        end
    end

    def show
        if session.include? :user_id
            @user = User.find(params[:id])
        else
        redirect_to root_path
        end
    end

    def update
        @user = User.find_by(id: session[:user_id])
        @attraction = Attraction.find_by(id: params[:attraction_id])
        if @user.height && @attraction.min_height && @user.height >= @attraction.min_height && @user.tickets && @attraction.tickets && @user.tickets >= @attraction.tickets
            flash[:alert] = "Thanks for riding the #{@attraction.name}!"
            @user.tickets = @user.tickets - @attraction.tickets
            @user.happiness = @user.happiness = @attraction.happiness_rating
            @user.save
        elsif @user.height && @attraction.min_height && @user.height < @attraction.min_height && @user.tickets && @attraction.tickets && @user.tickets < @attraction.tickets
            flash[:alert] = "You are not tall enough to ride the #{@attraction.name} You do not have enough tickets to ride the #{@attraction.name}"
        elsif @user.height && @attraction.min_height && @user.height < @attraction.min_height
            flash[:alert] = "You are not tall enough to ride the #{@attraction.name}"
        elsif @user.tickets && @attraction.tickets && @user.tickets < @attraction.tickets
            flash[:alert] = "You do not have enough tickets to ride the #{@attraction.name}"
        end
            redirect_to user_path(@user)
    end

    private
     
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :happiness, :nausea, :height, :admin, :tickets)
    end
end



