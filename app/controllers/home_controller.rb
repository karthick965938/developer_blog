class HomeController < ApplicationController
  def index
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	@contact.save
  	redirect_to root_path
  	# flash[:notice] = 'Conact created successfully'
  end

  private

  def contact_params
  	params.require(:contact).permit(:name, :email, :phone_number, :message)
  end
end
