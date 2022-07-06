class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

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
    if params[:q]&.dig(:title)
      squished_keywords = params[:q][:title].squish
      params[:q][:title_cont_any] = squished_keywords.split(" ")
    end
    @q = Work.ransack(params[:q])
    @works = @q.result.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to work_path(@work.id)
    else
      render :edit
    end
  end

  def destroy
    @work.destroy
    redirect_to search_works_path
  end


  private

  def work_params
    params.require(:work).permit(:title, :category_id, :day, :star_id, :memo, :image)
  end

  def set_work
    @work = Work.find(params[:id])
  end

end
