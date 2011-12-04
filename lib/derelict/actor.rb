module Derelict

  class Actor
    attr_accessor :name, :listeners, :heard

    def initialize( name=nil )
      @name = name || Utils::Name.generate
      @listeners = []
      @heard = []
    end

    def say( words )
      generate_event( :says, "\"#{words}\"" )
    end

    def hear( message )
      @heard << message
    end

    def generate_event( action, content )
      @listeners.each { |l| l.event( Event.new( content, action, self ) ) }
    end

    def to_s
      name
    end

  end

end