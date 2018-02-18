class EntriesController < ApplicationController
  def new
  end

  def create
    @entry = Entry.new(params.require[:article].permit(:date, :text))

    if @entry.save
      redirect_to @entry
    else
      @errors = entry.errors.full_messages
      redirect_to new_entry
    end
  end
end
 