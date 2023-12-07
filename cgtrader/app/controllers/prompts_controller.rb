class PromptsController < ApplicationController
  def index
    @prompts = Prompt.search_highlight(params[:search] || "").results
  end
end
