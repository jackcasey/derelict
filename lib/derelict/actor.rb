module Derelict

  class Actor
    attr_accessor :name

    def initialize( name=nil )
      @name = name || Utils::Name.generate
    end
  end

end