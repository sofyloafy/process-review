require_relative '../lib/echo'

describe Echo do
  let(:echo) { Echo.new }
  let(:date) { Time.now.strftime('%F') }
  let(:time) { Time.now.strftime('%H:%M') }

  it 'should print request for input' do
    expect(echo.output("hello, world")).to eq("#{date} | #{time} | You said: 'hello, world'!")
  end
end