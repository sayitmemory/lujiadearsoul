class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      ContactMailer.new_message(@message).deliver_now
      redirect_to new_message_path, notice: "Thanks for your message."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
