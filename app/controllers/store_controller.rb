class StoreController < ApplicationController
  def index
    @tutors = Tutor.order(:name)
  end
end
