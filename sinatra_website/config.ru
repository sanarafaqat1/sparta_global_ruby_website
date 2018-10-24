require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
require_relative "./controllers/post_controllers.rb"

use Rack::Reloader
run PostController
