class BookmarkedsController < ApplicationController
  before_action :current_user_must_be_bookmarked_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_bookmarked_user
    bookmarked = Bookmarked.find(params[:id])

    unless current_user == bookmarked.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @bookmarkeds = Bookmarked.all

    render("bookmarkeds/index.html.erb")
  end

  def show
    @bookmarked = Bookmarked.find(params[:id])

    render("bookmarkeds/show.html.erb")
  end

  def new
    @bookmarked = Bookmarked.new

    render("bookmarkeds/new.html.erb")
  end

  def create
    @bookmarked = Bookmarked.new

    @bookmarked.entree_id = params[:entree_id]
    @bookmarked.user_id = params[:user_id]

    save_status = @bookmarked.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmarkeds/new", "/create_bookmarked"
        redirect_to("/bookmarkeds")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmarked created successfully.")
      end
    else
      render("bookmarkeds/new.html.erb")
    end
  end

  def edit
    @bookmarked = Bookmarked.find(params[:id])

    render("bookmarkeds/edit.html.erb")
  end

  def update
    @bookmarked = Bookmarked.find(params[:id])

    @bookmarked.entree_id = params[:entree_id]
    @bookmarked.user_id = params[:user_id]

    save_status = @bookmarked.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmarkeds/#{@bookmarked.id}/edit", "/update_bookmarked"
        redirect_to("/bookmarkeds/#{@bookmarked.id}", :notice => "Bookmarked updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmarked updated successfully.")
      end
    else
      render("bookmarkeds/edit.html.erb")
    end
  end

  def destroy
    @bookmarked = Bookmarked.find(params[:id])

    @bookmarked.destroy

    if URI(request.referer).path == "/bookmarkeds/#{@bookmarked.id}"
      redirect_to("/", :notice => "Bookmarked deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bookmarked deleted.")
    end
  end
end
