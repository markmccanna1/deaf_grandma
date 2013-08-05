get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"

  if params[:user_input] == params[:user_input].upcase
    # she heard you
    redirect to("/?grandma=No%20solicitors!")
  else
    # she didn't hear you
    redirect to("/?grandma=Speak%20up,%20son!")
  end
end
