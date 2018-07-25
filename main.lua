local desc = "You are in a room. Press X to leave and go outside."

local room = "turret"

local square = {
  x = 300,
  y = 200,
  width = 50.0,
  r = 1.0,
  g = 0.4,
  b = 0.4,
  a = 1.0
}

function love.draw()
  love.graphics.rectangle("fill", square.x, square.y, square.width, square.width)
end

function love.update(dt)

  if love.keyboard.isDown("1") then

  end

  --Todo: play/edit

  tui.beginMainMenuBar()
  if tui.beginMenu("File", true) then
    if (tui.menuItem("New", "Cmd + n", false, true)) then
      -- Todo:
      print("new file")
    end
    if (tui.menuItem("Open", "Cmd + o", false, true)) then
      -- Todo:
      print("open file")
    end
    if (tui.menuItem("Save", "Cmd + s", false, true)) then
      -- Todo:
      print("save file")
    end
    tui.endMenu()
  end
  tui.endMainMenuBar()

  tui.beginWindow('Shapes!')
  tui.text('Square')
  square.r, square.g, square.b, square.a = tui.colorEdit4("color", square.r, square.g, square.b, square.a)
  tui.endWindow()

  tui.beginWindow('Rooms')
  --Todo:
  tui.endWindow()

  --if room == "turret"

  tui.beginWindow('Game')
  tui.text(desc)
  tui.endWindow()

  if love.keyboard.isDown("x") then
    desc = "You are outside now. The game is now over."
  end
end
