class HelloWorld < UIViewController

  attr_accessor :label

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor

    self.setupLabel
  end

  def setupLabel
    self.label = UILabel.alloc.initWithFrame(CGRectZero)
    self.label.font = UIFont.fontWithName("Helvetica", size: 24)
    self.label.text = "Hello world!"
    self.label.setTextAlignment(UITextAlignmentCenter)
    self.label.frame = [[10, 150], [300, 50]]
    self.view.addSubview(self.label)
  end

end