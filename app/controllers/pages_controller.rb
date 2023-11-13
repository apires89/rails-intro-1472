class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["francisco", "joao", "claudio"]
    if params[:member]
      @members = @members.select {
        |member| member.starts_with?(params[:member])}
    end
  end

  def home
  end
end
