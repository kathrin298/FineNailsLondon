module Spree
  class Spree::ContactsController < ::Spree::BaseController
    def create
      @contact = Contact.new(contact_params)
      @contact.request = request
      respond_to do |format|
        if @contact.deliver
          @contact = Contact.new
          format.html { render '../spree/home/contact'}
          format.js   { flash.now[:success] = @message = "Thank you for your message. We'll get back to you soon!" }
        else
          format.html { render '../spree/home/contact' }
          format.js   { flash.now[:error] = @message = "Message did not send." }
        end
      end
    end

    private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
end
