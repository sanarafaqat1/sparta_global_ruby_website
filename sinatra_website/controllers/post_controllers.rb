
class PostController<Sinatra:: Base

set :root, File.join(File.dirname(__FILE__), "..")

set :view, Proc.new { File.join(root, "views") }

configure:development do
  register Sinatra::Reloader
end

get "/" do
  @title = "Mexican Food"
  erb :"food/index"
end
get "/tacos" do
  @h1 = "Tacos"
  erb :"food/tacos"
end
get "/:id" do
  id = params[:id]

  case "#{tacos.erb}"
  when id == "Tacos"
    "<h1>Hi its #{id}</h1>"
  when id == "Borritos"
    "<h1>Hi its #{id}</h1>"
  when id == "Fajita"
    "<h1>Hi its #{id}</h1>"
  else
      "<h2>Nothing Else</h2>"
  end
 end
end
