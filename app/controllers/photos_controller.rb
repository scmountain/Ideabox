class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    @comments = Comment.all
    commentable = Post.create
    comment = commentable.comments.create
    comment.title = "First comment."
    comment.comment = "This is the first comment."
    comment.save
  end

  def new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "Photo Saved"
      redirect_to photos_path
    else
      render :new
    end
  end

  private

  def photo_params
    params.required(:photo).permit(:url, :caption, :category)
  end
end
