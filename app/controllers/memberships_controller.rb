class MembershipsController < ApplicationController

    def create
        # byebug
        membership = Membership.create!(membership_params)
        render json: membership
    end


    private
    def membership_params
        # params.require(:membership).permit(:charge, :gym_id, :client_id)
        params.permit(:charge, :gym_id, :client_id)
    end
end
