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

  def payment
    render({:template => "calc_template/payment"})
  end

  def payment_results
    @t_apr = params.fetch("user_apr").to_f
    @t_r = @t_apr / (100 * 12)
    @t_years = params.fetch("user_years").to_i 
    @t_n = @t_years * 12
    @t_principal = params.fetch("user_pv").to_f
    @denominator = 1 - (1 + @t_r) ** (-@t_n)
    @numerator = @t_r * @t_principal
    @the_result = @numerator / @denominator
    render({:template => "calc_template/payment_results"})
  end
end 
