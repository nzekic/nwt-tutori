class MessagesController < ApplicationController
	respond_to :json


	def show
		    @messages = Message.all

    end

     def create
    respond_with Message.create(message_params)
  
  end

   def index
    @messages = Message.all
  end

def messages
	@messages = Message.all
end

private
    def message_params
      params.require(:message).permit(:sender_id, :receiver_id, :content, :subject)
    end
    

end