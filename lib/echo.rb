class Echo
  def request_input
    "Say something:"
  end

  def output(input)
    "#{date} | #{time} | You said: '#{input}'!"
  end

  def date
    Time.now.strftime('%F')
  end
  
  def time
    Time.now.strftime('%H:%M')
  end
end
