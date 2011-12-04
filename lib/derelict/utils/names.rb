module Derelict
  module Utils
    class Name

      def self.generate( words=2, prefix=nil )
        lines = words.times.map{|x| (rand * 235886).to_i}
        name = lines.map{|x| `tail -n #{x} /usr/share/dict/words | head -n 1`.strip}.join(" ")
        name = "#{prefix} #{name}" if prefix
        return name
      end

    end
  end
end