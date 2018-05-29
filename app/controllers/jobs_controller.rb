class JobsController < ApplicationController
  def index
  end
  def new
    @job = Job.new
  end
  def create
    p "This will print in the console (command prompt) if create method is working."
    job = Job.create(job_params)
    p job
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end
end
