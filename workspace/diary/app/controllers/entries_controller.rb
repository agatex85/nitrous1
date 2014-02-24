class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
  def show
    @entry = Entry.find(params["id"])
  end
  def new
    @entry = Entry.new
  end
  def create
    entry_params=params["entry"].permit("title","date","contents")
    @entry = Entry.create(entry_params)
    redirect_to(entry_path(@entry))
    #render(:text => params.inspect)
  end
    def destroy
    Entry.find(params["id"]).destroy
      redirect_to(entries_path)
  end
  def edit
    @entry = Entry.find(params["id"])
  end
  def update
    entry_params=params["entry"].permit("title","date","contents")
    @entry = Entry.find(params["id"])
    @entry.update(entry_params)
    redirect_to(entry_path(@entry))
  end
 
end
