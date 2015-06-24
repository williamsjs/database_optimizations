class ReportsController < ApplicationController

  def main
  end

  def thank_you
    @email = params[:email]
    @assembly = params[:assembly]
    ProcessAssemblyJob.perform_later(@assembly, @email)
  end

end
