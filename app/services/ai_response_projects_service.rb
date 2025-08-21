class AiResponseProjectsService
  def initialize(project)
    @project = project
   end

   def call
    response = RubyLLM.chat.ask(@project.build_prompt)
    names = JSON.parse(response.content[8..-5])
    names.each do |name|
      feature = Feature.create(name: name, project: @project)
    end

    # Project.create(name: @project.name, description: @project.description)
   end
end
