class EntriesController < ApplicationController
  def index
    @entries = Entry.all 
  end
  
  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry
    else
      @errors = @entry.errors.full_messages
      render 'new'
    end
  end

  private
    def entry_params
      params.require(:entry).permit(:date, :text)
    end
end
 