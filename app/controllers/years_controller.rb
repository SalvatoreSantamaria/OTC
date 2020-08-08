class YearsController < ApplicationController
        
    def index
        @years = Year.all
    end
    
    def new
    end

    def create
        # render plain: params[:year].inspect
        #need to add an owner as well here
        #pseudo code
        #@owner = Owner.find(owner.id)

        @year = Year.new(year_params)
        @year.save
        # redirect_to @year
    end

    def show
        @year = Year.find(params[:id])
    end

    private
        def year_params
            params.require(:year).permit(:name)
        end
end
