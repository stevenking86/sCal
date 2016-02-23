
get '/login' do
  erb :'/users/login'

end

get '/register' do

  erb :'/users/register'

end

post '/users/new' do

  @user = User.new(username: params[:username], password: params[:password])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/register'
  end
end

post '/users/login' do

  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/login'

  end

end
