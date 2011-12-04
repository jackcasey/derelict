module Derelict

  class Room
    attr_accessor :name, :history, :actors

    def initialize( name=nil )
      @name = name || Utils::Name.generate
      @actors = []
      @history = []
    end

    def <<( actor )
      @actors << actor
      @history << "#{actor.name} has entered #{@name}."
    end
  end

end