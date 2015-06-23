class ReportsController < ApplicationController

  def main
  end

  def thank_you
    @email = params[:email]
    @assembly = params[:assembly]
  end

end
