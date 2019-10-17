require 'bundler/setup'

require 'json'
require 'dgt_finder'
require 'sinatra'

set :port, 3000

get '/?:text?' do
  content_type :json
  {:fine => (DGTFinder.fine?(params[:text]) ? 1 : 0)}.to_json
end

