class MessagesController < ApplicationController
    def create
    @feature = Feature.find(params[:feature_id])
    @message = Message.new(message_params)
    @message.role = "user"
    @message.feature = @feature

    if @message.valid?
      @feature.with_instructions(@message.build_prompt).ask(@message.content)
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
#when user create message call the service
# create a service instance (AiResponseMessagesService.new(message_instance))
# call the service (service_instance.call)
# the service will ai response
