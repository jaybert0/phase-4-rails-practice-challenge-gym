class GymsController < ApplicationController

    def index
        render Gym.all, status: :ok
    end

    def updated
        gym = Gym.find(params[:id])
        gym.update!(gym_params)
    end
    def show
        gym = Gym.find(params[:id])
        render json: gym
    end


    def destroy
        gym = Gym.find(params[:id])
        gym.destroy
        head :no_content
    end

    private

    def gym_params
        params.permit(:name, :address)
    end
end
