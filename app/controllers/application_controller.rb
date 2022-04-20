class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/notes" do
    notes = Note.all
   notes.to_json
  end

  get "/notebooks" do
    notebooks = Notebook.all
   notebooks.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  get '/notebook/:title' do
    notebook = Notebook.find_by(:title => params[:title])
    notebook.to_json(include: :notes)
  end
  
  get '/users/notebooks/:id' do
    notebook = User.find(params[:id]).notebooks
    notebook.to_json(include: :notes)
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      email: params[:email],
      bio: params[:bio],
      picture: params[:picture]
    )
    user.to_json
  end


  post '/new_note' do
    note = Note.create(
      title: params[:title],
      body: params[:body],
      notebook_id: params[:notebook_id],
      user_id: params[:user_id]
    )
    note.to_json
  end

  get '/login/:name' do
    user = User.find_by(:name => params[:name])
    user.to_json(include: { notes: {include: :notebook}})
  end

  # get 'notebooks/:name' do
  #   user = User.find_by(:name => params[:name])
  #   user.to_json(include: { notes: {include: :notebook}})
  # end

  delete '/notes/:id' do
    # find the review using the ID
    note = Note.find(params[:id])
    # delete the review
    note.destroy
    # send a response with the deleted review as JSON
    note.to_json
  end

end
