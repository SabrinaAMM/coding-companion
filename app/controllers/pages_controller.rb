class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @interviews = Interview.where({date: Date.today}).first(8)
  end
end
