class DumpsterController < ApplicationController
  def main
    @pagy, @posts = pagy(Post.all.order(:cached_votes_up => :desc), items: 7)
  end
end
