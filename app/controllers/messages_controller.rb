class MessagesController < ApplicationController
  def create
    @feature = Feature.find(params[:feature_id])
    @message = Message.new(message_params)
    @message.role = "user"
    @message.feature = @feature

    if @message.save
      raise
      response = "Message was saved"
      redirect_to feature_path(@feature)
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
