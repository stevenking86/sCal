get '/calendars' do

  erb :'/calendars/all'

end

get '/calendars/new' do

  erb :'/calendars/create'

end

post '/calendars' do

  @calendar = Calendar.create(name: params[:name])

  @calendar.generate_days

erb :'/calendars/show'

end
