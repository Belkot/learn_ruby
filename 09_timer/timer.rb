class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    #"%02d:%02d:%02d" % [ @seconds / 60 / 60 % 60, @seconds / 60 % 60, @seconds % 60 ]
    "#{ padded(@seconds / 60 / 60 % 60) }:#{ padded(@seconds / 60 % 60) }:#{ padded(@seconds % 60) }"
  end

  def padded(sec)
    "%02d" % sec
  end
end
