class JournalsController < ApplicationController
  before_action :set_journal, only: [ :show, :edit, :update ]
  def index
    @journals = Journal.ordered
    @journals_by_year = Journal.order(published_at_date: :desc).group_by { |j| j.published_at_date&.year }
  end

  def show; end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      redirect_to @journal, notice: "Journal was created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @journal.update(journal_params)
      redirect_to @journal, notice: "Journal was successfully updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:title, :edition_name, :published_on, :subtitle, :intro, :content, :cover_image, :cover_image_url, :published_at_date)
  end
end
