class CubeView < UIView
  def initWithColor(color)
    self.initWithFrame(CGRectMake(0.0, 0.0, 50.0, 50.0))
    self.backgroundColor color
    self
  end
end
