class SignupsController < ApplicationController


    def index
    end

    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_params)

        redirect_to signup_path(signup)
    end

    def edit
    end

    def update

    end

    def destroy

    end
    def show
    end


    private

    def signup_params
        params.require(:signup).permit(:time, :camper_id, :activity_id)
    end
end
