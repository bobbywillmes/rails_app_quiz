class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @jobs = Job.all
    render json: @jobs
  end

  def findById
    @job = Job.find(params[:id])
    render json: @job
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      render json: { job: @job }
    end
  end

  def delete
    if Job.find(params[:id]).destroy
      render json: { success: true }
    end
  end

  def job_params
    params.permit(:url,:employer_name,:employer_description,:job_title,:job_description,:year_of_experience,:education_requirement,:industry,:base_salary,:employment_type_id)
  end

end
