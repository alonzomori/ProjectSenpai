class Project < ApplicationRecord
  belongs_to :user
  has_many :features, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true

  def build_prompt
    prompt = <<-PROMPT
    You are a senior-level experienced programmer and teacher.

    I am a beginner developer who wants to learn coding in a beginner-friendly environment.

    This is the project that i'm going to start: #{name}. description: #{description}.

    I would like 3 to 5 features on this project. Only give me the name of these features in a json array

    PROMPT
  end
end
