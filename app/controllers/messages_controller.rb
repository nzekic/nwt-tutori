class MessagesController < ApplicationController
	respond_to :json
	before_action :set_message, only: [:show, :edit, :update, :destroy, :view_message]


	def show
		    @messages = Message.all

    end

     def create
    respond_with Message.create(message_params)

  end

  def view_message
    @message = Message.find(params[:id])
  end

   def index
    @messages = Message.all
  end

def messages
	@messages = Message.all
end

private
	def set_message
      @message = Message.find(params[:id])
    end
    
    def message_params
      params.require(:message).permit(:sender_id, :receiver_id, :content, :subject)
    end
    

end