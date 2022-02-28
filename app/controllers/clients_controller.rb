class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        render json: client, methods: [:membership_total]
    end

    def index
        render Client.all, status: :ok
    end

    def updated
        client = Client.find(params[:id])
        client.update!(client_params)
    end

    private

    def client_params
        params.permit(:name, :age)
    end
end
