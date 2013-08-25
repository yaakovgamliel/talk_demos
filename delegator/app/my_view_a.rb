class MyViewA < UIViewController

  def viewDidLoad
    super
    button = UIButton.buttonWithType UIButtonTypeRoundedRect
    button.setTitle "Open B", forState: UIControlStateNormal
    button.frame = [[10, 50], [300, 50]]
    button.addTarget(self, action: "open_b", forControlEvents: UIControlEventTouchUpInside)
    self.view.addSubview button
  end

  def open_b
    view_b = MyViewB.alloc.init
    view_b.delegate = self
    self.presentViewController view_b, animated:true, completion:nil
  end

  #this a deleage 

  def done_with_b
    self.dismissViewControllerAnimated true, completion:nil
    puts "-> MyViewA This part is runing from #{self}"
  end

end