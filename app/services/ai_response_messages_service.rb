class AiResponseMessagesService
  def initialize(message)
    @message = message
  end

  def call
    response = RubyLLM.chat.ask(@message.build_prompt)
    Message.create(role: "assistant", content: response.content, feature: @message.feature)
  end
end
