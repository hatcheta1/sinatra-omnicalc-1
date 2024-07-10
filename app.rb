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
  "square_root"
end

get("/payment/new") do
  "payment"
end

get("/random/new") do
  "random"
end
