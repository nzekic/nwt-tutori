class MessagesController < ApplicationController
	respond_to :json

	def show
		@messages = Message.all
    end

   def index
    @messages = Message.all
  end

def messages
	@messages = Message.all
end
    

end