require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get '/square/results' do
  @user_num = params.fetch("users_number").to_f
  
  @square_result = @user_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @user_num = params.fetch("number").to_f

  @square_root = Math.sqrt(@user_num)

  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @years = params.fetch("years").to_f
  @principal = params.fetch("principal").to_f

  rate_per_period = (@apr / 100) / 12
  num_of_periods = @years * 12

  numerator = rate_per_period * @principal
  denominator = 1 - (1 + rate_per_period) ** -num_of_periods

  @payment = numerator / denominator

  erb(:payment_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @min = params.fetch("minimum").to_f
  @max = params.fetch("maximum").to_f

  @result = rand(@min..@max)
  
  erb(:random_results)
end
