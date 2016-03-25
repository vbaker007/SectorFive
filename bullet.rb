class Bullet
  SPEED = 5
  def initialize(window, x, y, angle)
    @x = x
    @y = y
    @direction = angle
    @image = Gosu::Image.new('bullet.png')
    @radius = 3
    @window = window
  end
  def move
    @x += Gosu.offset_x(@direction, SPEED)
    @y += Gosu.offset_y(@direction, SPEED)
  end
  def draw
    @image.draw(@x - @radius, @y - @radius, 1)
  end
end