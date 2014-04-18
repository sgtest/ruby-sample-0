class C
  def self.ccm; end
  def im; end
  def im2;
    im
    self.im
  end

  attr_accessor :x
  def ivdef
    @x = 1
    self.x = 2
  end
  def ivref
    @x
    x
  end

  class D
      def self.dcm; end
      def im; end
  end
end

C.new.im
C.ccm
C::D.new.im
C::D.dcm
