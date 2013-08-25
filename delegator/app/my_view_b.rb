class MyViewB < UIViewController

  attr_accessor :delegate

  def viewDidLoad
    super
    button = UIButton.buttonWithType UIButtonTypeRoundedRect
    button.setTitle "Return to A", forState: UIControlStateNormal
    button.frame = [[10, 50], [300, 50]]
    button.addTarget(self, action: "press_button", forControlEvents: UIControlEventTouchUpInside)
    self.view.addSubview button
  end

  def press_button
    delegate.done_with_b
    puts "This part is runing from #{self}"
  end

end