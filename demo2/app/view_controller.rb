class ColorsViewController < UIViewController
  def viewDidLoad
    super
     self.view.backgroundColor = UIColor.yellowColor

     @little_view = UIView.alloc.initWithFrame(CGRectMake(0.0, 0.0, 50.0, 50.0))

     @little_view.backgroundColor = UIColor.greenColor
     self.view.addSubview(@little_view)

     @another_view = CubeView.initWithColor(UIColor.greenColor)
     self.view.addSubview(@another_view)
  end
end

