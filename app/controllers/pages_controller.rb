class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    search = params[:member]
    @team = ['Ben', 'Rebecca', 'Maria', 'Milene', 'Felipe']

    if search.present?
      @team = @team.select { |name| name.downcase == search.downcase }
    end

  end
end
