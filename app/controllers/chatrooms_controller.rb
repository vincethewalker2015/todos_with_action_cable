class ChatroomsController < ApplicationController
  
  def show
    @message = Message.new
    @messages = Message.most_recent #This comes from model/message.rb
  end
  
end