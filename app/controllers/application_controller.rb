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

  get "/contact" do
    contact = Contact.all
    contact.to_json
  end
  post '/contact' do
    house_no = params[:house_no]
    name = params[:name]
    email = params[:email]
    # Perform form submission logic here
    # You can access the entered values using house_no, name, and email variables
    # Example: puts "#{house_no}, #{name}, #{email}"
    # Return success response
    status 200
    { message: 'Form submitted successfully' }.to_json
  end
  # PATCH /properties/:id endpoint
  patch '/properties/:id' do
    property_id = params[:id].to_i
    property = properties.find { |prop| prop[:id] == property_id }
    if property.nil?
      status 404
      return { error: 'Property not found' }.to_json
    end
    # Update the property with the new data
    property[:image] = params[:image] if params[:image]
    property[:location] = params[:location] if params[:location]
    property[:property_title] = params[:property_title] if params[:property_title]
    property[:house_type] = params[:house_type] if params[:house_type]
    property[:price] = params[:price] if params[:price]
    # Return the updated property
    status 200
    property.to_json
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
  
 