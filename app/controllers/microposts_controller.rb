class MicropostsController < ApplicationController
    before_filter :signed_in_user, only: [:create, :destroy]

    def index
    end
  
    def create
        @micropost = current_user.microposts.build(params[:micropost])
        if @micropost.save
            flash[:success] = "Micropost created!"
            redirect_to root_url
        else
            @feed_items = []
            redirect_to root_url
        end
    end
  
    def destroy
        @micropost = Micropost.find(params[:id])
        @micropost.destroy

        respond_to do |format|
        format.html { redirect_to root_url }
        format.json { head :no_content }
        end
    end
end