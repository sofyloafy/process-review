require_relative '../lib/echo'

describe Echo do
  let(:echo) { Echo.new }

  it 'should print request for input' do
    expect(echo.you_said("hello, world")).to eq("You said: 'hello, world'!")
  end
end