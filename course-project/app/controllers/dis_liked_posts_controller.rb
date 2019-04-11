class DisLikedPostsController < ApplicationController
  before_action :set_dis_liked_post, only: [:show, :edit, :update, :destroy]

  # GET /dis_liked_posts
  # GET /dis_liked_posts.json
  def index
    @dis_liked_posts = DisLikedPost.all
  end

  # GET /dis_liked_posts/1
  # GET /dis_liked_posts/1.json
  def show
  @dis_liked_post = DisLikedPost.find(params[:id])
  end

  # GET /dis_liked_posts/new
  def new
    @dis_liked_post = DisLikedPost.new
  end

  # GET /dis_liked_posts/1/edit
  def edit
     @dis_liked_post = DisLickedPost.find(params[:id])
  end

  # POST /dis_liked_posts
  # POST /dis_liked_posts.json
  def create
    @dis_liked_post = DisLikedPost.new(dis_liked_post_params)

    respond_to do |format|
      if @dis_liked_post.save
        format.html { redirect_to @dis_liked_post, notice: 'Dis liked post was successfully created.' }
        format.json { render :show, status: :created, location: @dis_liked_post }
      else
        format.html { render :new }
        format.json { render json: @dis_liked_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_liked_posts/1
  # PATCH/PUT /dis_liked_posts/1.json
  def update
    respond_to do |format|
      if @dis_liked_post.update(dis_liked_post_params)
        format.html { redirect_to @dis_liked_post, notice: 'Dis liked post was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_liked_post }
      else
        format.html { render :edit }
        format.json { render json: @dis_liked_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_liked_posts/1
  # DELETE /dis_liked_posts/1.json
  def destroy
    @dis_liked_post.destroy
    respond_to do |format|
      format.html { redirect_to dis_liked_posts_url, notice: 'Dis liked post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_liked_post
      @dis_liked_post = DisLikedPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_liked_post_params
      params.require(:dis_liked_post).permit(:creation_date, :post_id, :user_id)
    end
end
