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
  "payment"
end

get("/payment/results") do
  "results"
end

get("/random/new") do
  "random"
end

get("/random/results") do
  "results"
end
