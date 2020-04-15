require 'pry'

class TextMessage 
  attr_reader :receiver, :sender, :content
  def initialize(receiver, sender, content)
    @receiver = receiver 
    @sender = sender 
    @content = content
    @sent = false
  end
  
  def send
    binding.pry
    # we want to add the message (self) to the receiver's array of received_messages (self.receiver.received_messages)
    self.receiver.received_messages << self
    # we want to add the message (self) to the sender's array of sent_messages (self.sender.sent_messages)
    self.sender.sent_messages << self
    # we want to mark the message as sent
    @sent = true
    self
  end
end

class Person 
  attr_reader :name, :sent_messages, :received_messages
  def initialize(name)
    @name = name
    @sent_messages = []
    @received_messages = []
  end
end

dakota = Person.new("Dakota")
nicole = Person.new("Nicole")
message = TextMessage.new(nicole, dakota, "Hi there")
message.send

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.new_by_name(name)
    binding.pry
  end
  
  def self.create
    song=self.new
    song.save
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

# binding.pry
