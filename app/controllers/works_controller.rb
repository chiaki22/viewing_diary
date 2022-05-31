class WorksController < ApplicationController

  def index
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    @works = Work.all
  end

  private

  def work_params
    params.require(:work).permit(:title, :category_id, :day, :star_id, :memo, :image)
  end
end
