class ZebraController < ApplicationController
  def square
    render({:template => "calc_template/square"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({:template => "calc_template/square_results"})
  end

  def square_root
    render({:template => "calc_template/square_root"})
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** (0.5)
    render({:template => "calc_template/square_root_results"})
  end
end 
