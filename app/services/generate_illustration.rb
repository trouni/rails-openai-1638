class GenerateIllustration
  def initialize(situation)
    # We initialize any params we need here for the call
    @situation = situation
  end

  def call
    # The actual execution of the service
    client = OpenAI::Client.new
    puts '-' * 50
    puts "Sending request to OpenAI API to generate an illustration..."
    puts '-' * 50
    response = client.images.generate(parameters: { model: 'dall-e-3', prompt: @situation })

    p response.dig("data", 0, "url")
  end
end

# GenerateIllustration.new().call