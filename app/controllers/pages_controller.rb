class PagesController < ApplicationController
   def home
    @time = Time.now
    @employees = []
   end

   def about
    @members = ["Andrey", "Joana", "Pooja", "Christina", "Jess", "Tory", "Nasi", "Mel", "Ratna"]
    @query = params[:member]
    if @query.present?
      @members = @members.select { |member| member.start_with?(@query) }
    end
    raise
   end
end
