class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  
  # GET /posts
  # GET /posts.json
  def index
    @pagy, @posts = pagy(Post.all.order(:cached_votes_up => :desc), items: 5)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
   @comment = Comment.new
   @pagy , @comments =pagy(@post.comments.order("created_at DESC"), items: 8)
  end

  # GET /posts/new
  def new
    @post = Post.new
    logger.debug("[PostsController::create] rendered new")
  end
  
  def search
    @posts =Post.where("title LIKE ?","%" + params[:q] + "%")
    @posts =Post.where("text LIKE ?","%" + params[:q] + "%")
    @users =User.where("name LIKE ?","%" + params[:q] + "%")
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    logger.debug("[PostsController::create] begin create, '#{current_user.id}'") if !current_user.nil?
    logger.debug("[PostsController::create] begin create, user nil!") if current_user.nil?
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        logger.debug("[PostsController::create] post create")
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
  
    end
  end
  def upvote
    @post.upvote_from current_user
    redirect_to posts_path
  end

  def downvote
    @post.downvote_from current_user
    redirect_to posts_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:creation_date, :text, :title, :user_id, :geofence_id, :apropriated, :is_open, :is_solved, :share_counter, :report_counter, :is_hidden, :is_linked, :file_attachment, :image, :file)
    end



   

end
