class MessagesController < ApplicationController
	respond_to :json

	def show
		    respond_with Message.all

    end

   def index
    respond_with Message.all
  end

def messages
	respond_with Message.all
end
    

end