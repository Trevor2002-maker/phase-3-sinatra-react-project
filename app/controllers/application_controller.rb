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
    contacts = Contact.all
    contacts.to_json
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
  
  patch '/properties/:id' do
    property_id = params[:id].to_i
    property = Property.find(property_id)
    
    if property.nil?
      status 404
      return { error: 'Property not found' }.to_json
    end
    
    # Update the property with the new data
    property.update(
      image: params[:image],
      location: params[:location],
      property_title: params[:property_title],
      house_type: params[:house_type],
      price: params[:price]
    )
    
    # Return the updated property
    status 200
    property.to_json
  end
end
