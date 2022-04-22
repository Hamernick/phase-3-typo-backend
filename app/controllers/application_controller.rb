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
    notebook = User.find(params[:id]).notebooks.uniq
    notebook.to_json(include: :notes)
  end

  post '/users' do
    user = User.create(
      name: params[:username],
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      bio: params[:bio],
      picture: params[:picture]
    )
    user.to_json
  end
    # updated this!! ^



  post '/new_note' do
    note = Note.create(
      title: params[:title],
      body: params[:body],
      notebook_id: params[:notebook_id],
      user_id: params[:user_id],
      updated_at: params[:updated_at]
    )
    note.to_json
  end

  post '/new_notebook' do
    notebook = Notebook.create(
      title: params[:title],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    notebook.to_json
  end

  get '/login/:username' do
    user = User.find_by(:username => params[:username])
    user.to_json(include: { notes: {include: :notebook}})
  end
    # updated this!! ^

  delete '/notes/:id' do
    note = Note.find(params[:id])
    note.destroy
    note.to_json
  end

  delete '/notebooks/:id' do
    notebook = Notebook.find(params[:id])
    notebook.destroy
    notebook.to_json
  end


  patch '/notes/:id' do
    note = Note.find(params[:id])
    note.update(
      title: params[:title],
      body: params[:body],
      updated_at: params[:updated_at]
    )
    note.to_json
  end

end
