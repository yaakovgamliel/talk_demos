class ViewController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.greenColor
    @view = UIView.alloc.initWithFrame(CGRectMake(40.0,50.0,80,80.0))
    @view.backgroundColor = UIColor.redColor
    self.view.addSubview(@view)

    @button = UIButton.buttonWithType UIButtonTypeRoundedRect
    @button.frame = CGRectMake(80.0, 200.0, 100.0, 40.0)
    @button.setTitle "Yeap!", forState:UIControlStateNormal

    self.view.addSubview(@button)

    @button.addTarget self, action:"animate_stuff", forControlEvents:UIControlEventTouchUpInside 
  end

  def animate_stuff
    puts "Hello"
    UIView.animateWithDuration 1.0, 
    animations: lambda{
      @view.frame = CGRectMake(40.0,200.0,80,80.0)
      @view.alpha = 0.0
    }

  end
end