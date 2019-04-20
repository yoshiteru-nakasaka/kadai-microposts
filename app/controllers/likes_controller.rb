class LikesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.add_like(micropost)
    flash[:success] = "お気に入りリストに追加しました"
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.remove_like(micropost)
    flash[:success] = "お気に入りリストから削除しました"
    redirect_back(fallback_location: root_path)
  end
end
