class StoreController < ApplicationController
  skip_before_action :authorize
  def index
    @tutors = Tutor.order(:name)
  end
end
