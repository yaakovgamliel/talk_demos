class ColorController < UIViewController

  COLORS = [UIColor.grayColor, UIColor.brownColor, UIColor.greenColor,UIColor.yellowColor,UIColor.blueColor,UIColor.redColor]
  COLORS_NAMES = ['gray','brown','green','yellow','blue','red']
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor
    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.font = UIFont.systemFontOfSize(50)
    @label.text = "colors"
    @label.sizeToFit
    @label.center = [self.view.frame.size.width / 2,self.view.frame.size.height / 2]
    @label.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin
    @label.backgroundColor = UIColor.clearColor
    self.view.addSubview(@label)
    change_background_colors

  end

  def change_background_colors
    @timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target:self, selector:'change_color', userInfo:nil, repeats:true)
  end

  def change_color
    index = random_stuff
    self.view.backgroundColor = COLORS[index]
    @label.text = COLORS_NAMES[index]
    @label.sizeToFit
  end

  def random_stuff
    random_index = rand(COLORS.count)
    random_index
  end
end

