class LikesController < ApplicationController
    def likes_taggle
        like = Like.find_by(user_id: current_user.id, post_id: params[:id])
        
        if like.nil?
            Like.create(user_id: current_user.id post_id: params[:id])
            
        else
            liek.destroy
        end
        
        redirect_to :back
end