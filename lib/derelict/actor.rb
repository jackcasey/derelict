module Derelict

  class Actor
    attr_accessor :name

    def initialize( name=nil )
      @name = name || generate_name
    end

  private

    def generate_name
      lines = 2.times.map{|x| (rand * 235886).to_i}
      return lines.map{|x| `tail -n #{x} /usr/share/dict/words | head -n 1`.strip}.join(" ")
    end
  end

end