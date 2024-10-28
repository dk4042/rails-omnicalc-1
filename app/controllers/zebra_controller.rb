class ZebraController < ApplicationController
  def square
    render({:template => "calc_template/square"})
  end

  def square_results
    render({:template => "calc_template/square_results"})
  end
end 
