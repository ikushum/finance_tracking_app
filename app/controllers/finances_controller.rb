class FinancesController < ApplicationController
      def index
        @records=Finance.all
        @balance=Finance.balance
        @debt=Finance.debt
        @total=Finance.total
    end
    
    def new
    end
    
    def create
        @record=Finance.create(finance_params)
        if @record.valid?
            flash[:success] = "New record has been added!"
            redirect_to root_path
        else
            redirect_to new_finance_path
        end
    end
    
    def edit
        @records = Finance.find(params[:id])
    end
    
    def update
        @record = Finance.find(params[:id])
        
        if @record.update(finance_params)
            flash[:success] = "The record has been edited!"
            redirect_to root_path
        else
            redirect_to edit_finance_path
        end
    end
    
    def destroy
        @records=Finance.find(params[:id])
        @records.destroy
        flash[:success] = "The record has been deleted!"
        redirect_to root_path
    end
    
    private
    def finance_params
        params.require(:finance).permit(:title,:amount)
    end

end
