class OwnersController < ApplicationController
    
    def index
        @owners = Owner.all
    end
    
    def new
    end

    def create
        # render plain: params[:owner].inspect
        @owner = Owner.new(owner_params)
        @owner.save
        # redirect_to @owner
    end

    def show
        @owner = Owner.find(params[:id])
    end

    private
        def owner_params
            params.require(:owner).permit(:name)
        end
end
