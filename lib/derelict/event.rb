class Event
  attr_accessor :who, :how, :what

  def initialize( what, how=nil, who=nil )
    @who = who
    @how = how
    @what = what
  end

  def ==( e )
    return e.who == who && e.how == how && e.what == what
  end

  def message
    m = "#{@what}"
    m = "#{@how} #{m}" if @how
    m = "#{@who} #{m}" if @who
    m << "." unless m[-1] == "."
    return m
  end

  def to_s
    "<#{message}>"
  end



end