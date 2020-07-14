class Echo
  def start
    request_input
    input = gets.chomp
    output(input)
  end

  def request_input
    print "Say something:"
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
