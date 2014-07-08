local gui = require "Quickie"


function setPlayerIdentity()
	math.randomseed( os.time() + math.random()) -- adding the randomness to prevent same image being generated if user clicks many times
	icon1 = math.random(7)
	icon2 = math.random(100)


	--use strings for player identities to match image formats
	icon2Str = ""
	if icon2 < 10 then
		icon2Str = "0"..icon2
	else
		icon2Str = ""..icon2
	end

	icon = love.graphics.newImage("/icons/Icon."..icon1.."_"..icon2Str..".png")

	return icon
end

function love.load()
	icon = setPlayerIdentity()
	

end

function love.draw()
	love.graphics.print("You are Grabthar the Mighty, Scion of Hera", 500,300)
	love.graphics.draw(icon, 80, 80)
	gui.core.draw()
end

function love.update(dt)
	if gui.Button{text = "Regenerate Character", size = {"tight"}, pos = {200, 40}} then
		setPlayerIdentity()
	end

end
