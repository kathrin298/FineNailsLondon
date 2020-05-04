# require 'spree/base_controller'

Spree::HomeController.class_eval do
  def contact
    @contact = Contact.new(params[:contact])
  end
end
