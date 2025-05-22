class JournalsController < ApplicationController
  def index
    @journals = Journal.ordered
  end
end
