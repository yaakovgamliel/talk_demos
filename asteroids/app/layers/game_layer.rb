class GameLayer < Joybox::Core::Layer
  def on_enter
    background =  Sprite.new file_name: 'background.png', position: Screen.center
    self << background

    @rocket = Sprite.new file_name: 'rocket.png', position: Screen.center, alive: true
    self << @rocket

  end
end

