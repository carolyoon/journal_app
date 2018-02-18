class EntriesController < ApplicationController
  def new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry
    else
      @errors = entry.errors.full_messages
      redirect_to new_entry
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
    def entry_params
      params.require(:entry).permit(:date, :text)
    end
end
 