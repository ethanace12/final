require 'sinatra'
require 'sinatra/reloader'
# require 'mystyle.css'

@@wins = "nope"

def check_wins
  if params[:space1] == params[:space2] && params[:space2] == params[:space3]
     return @@wins = "yes"
  elsif spaces[4] == spaces[5] && spaces[4] == spaces[6]
     @@wins = "yes"
  elsif spaces[7] == spaces[8] && spaces[7] == spaces[9]
     @@wins = "yes"
  elsif spaces[1] == spaces[4] && spaces[1] == spaces[7]
     @@wins = "yes"
  elsif spaces[2] == spaces[5] && spaces[2] == spaces[8]
     @@wins = "yes"
  elsif spaces[3] == spaces[6] && spaces[3] == spaces[9]
     @@wins = "yes"
  elsif spaces[1] == spaces[5] && spaces[1] == spaces[9]
     @@wins = "yes"
  elsif spaces[3] == spaces[5] && spaces[3] == spaces[7]
     @@wins = "yes"
  end
    @@wins
end


get '/' do
  erb :tic, :locals => {:wins => @@wins}
end

post '/' do
  erb :index, :locals => {:wins => @@wins}
    check_wins
  erb :tic, :locals => {:wins => @@wins}
end
