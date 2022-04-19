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

end
