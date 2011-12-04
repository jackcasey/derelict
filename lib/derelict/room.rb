module Derelict

  class Room
    attr_accessor :name, :events, :actors

    def initialize( name=nil )
      @name = name || Utils::Name.generate
      @actors = []
      @events = []
    end

    def <<( actor )
      @actors << actor
      actor.listeners << self # TODO careful of circular reference confusing GC
      event Event.new( self, :enters, actor )
    end

    def event( e )
      raise ArgumentError.new("Argument must be an instance of Event") unless e.is_a? Event
      @events << e
      @actors.each {|x| x.hear( e.message )}
    end

    def event_messages
      @events.map{|x| x.message}
    end

    def find_actor( name )
      @actors.select{|x| x.name == name}[0]
    end

    def to_s
      name
    end

  end

end