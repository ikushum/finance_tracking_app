class FinancesController < ApplicationController
    def index
        @records=Finance.all
    end
    
    def new
    end
    
    def create
        @records=Finance.create(finance_params)
        redirect_to root_path
    end
    
    def edit
        @records = Finance.find(params[:id])
    end
    
    def update
        @records = Finance.find(params[:id])
        @records.update(finance_params)
        redirect_to root_path
    end
    
    def destroy
        @records=Finance.find(params[:id])
        @records.destroy
        redirect_to root_path
    end
    
    private
    def finance_params
        params.require(:finance).permit(:title,:amount)
    end

end
