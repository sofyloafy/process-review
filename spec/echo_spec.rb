require_relative '../lib/echo'

describe Echo do
  let(:echo) { Echo.new }
  let(:date) { Time.now.strftime('%F') }
  let(:time) { Time.now.strftime('%H:%M') }

  it 'should print request for input' do
    expect(echo.output("hello, world")).to eq("#{date} | #{time} | You said: 'hello, world'!")
  end

  it 'should return the date' do
    expect(echo.date).to eq(date)
  end

  it 'should return the time' do
    expect(echo.time).to eq(time)
  end

  it 'should request input' do
    expect{echo.request_input}.to output("Say something:").to_stdout
  end
end
