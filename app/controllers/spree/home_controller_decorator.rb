module Spree
  # HomeController.class_eval do
  module HomeControllerDecorator
    def contact
      @contact = Contact.new(params[:contact])
    end
  end
end

Spree::HomeController.prepend Spree::HomeControllerDecorator
