class JournalsController < ApplicationController
  def index
    @journals = Journal.ordered
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      redirect_to journals_path, notice: "Journal was created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def journal_params
    params.require(:journal).permit(:title, :edition_name, :published_on, :subtitle, :intro, :content, :cover_image)
  end
end
