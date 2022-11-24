class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/todos" do 
    todos = Todo.all
    todos.to_json
  end

  post '/todos' do
    todo = Todo.create(
      name: params[:name],
      description: params[:description]
    )
    todo.to_json
  end
  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.update(
      name: params[:name],
      description: params[:description]
    )
    todo.to_json
  end

  delete '/todos/:id' do 
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end

end
