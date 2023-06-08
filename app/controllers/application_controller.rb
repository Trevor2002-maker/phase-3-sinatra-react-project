class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/properties" do
    properties = Property.all
    properties.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  patch '/properties/:id' do
    property = Property.find(params[:id])
    property.update(
      image: params[:image],
      location: params[:location],
      property_title: params[:property_title],
      house_type: params[:house_type],
      price: params[:price]
    )
    property.to_json
  end
end
  
 