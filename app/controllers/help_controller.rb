class HelpController < ApplicationController
  #Creates a help model
  def index
    @contact = Help.new(params[:help])
  end
  #Creates a new Help model and returns different
  def create
    @contact = Help.new(params[:help])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Help.new
        format.html { render 'index'}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end
end
