class PerfumesController < ApplicationController

 before_action :authenticate_user!, only: [:new, :create]   
 def index
    end

    def new
        @perfume = Perfume.new
    end



    def show
        @perfume = Perfume.find_by(id: params[:id])
    end

    def create
        @perfume = Perfume.new(perfume_params)
         params[:perfume][:question] ? @perfume.question = params[:perfume][:question].join("") : false
         @perfume.user_id = current_user.id

        if @perfume.save
            flash[:notice] = "診断が完了しました"
            redirect_to perfume_path(@perfume.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def perfume_params
        params.require(:perfume).permit(:id, question: [])
    end
end
