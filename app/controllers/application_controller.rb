class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/about" do
    { message: "About page" }.to_json
  end

  get "/login" do
    { message: "Login page" }.to_json
  end

  get "/contact" do
    { message: "Contact page" }.to_json
  end

  get "/properties" do
    { message: "Properties page" }.to_json
  end
end
