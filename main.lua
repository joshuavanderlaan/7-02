-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- april 16, 2019
--
-- 
--
-----------------------------------------------------------------------------------------

-- Character move





local upArrow = display.newImageRect( "/assets/sprites/upArrow.png", 25, 25 )
upArrow.x = 150
upArrow.y = display.contentHeight - 122
upArrow.id = "up arrow"


local downArrow = display.newImageRect( "/assets/sprites/downArrow.png", 25, 25 )
downArrow.x = 150
downArrow.y = display.contentHeight - 40
downArrow.id = "up arrow"


local rightArrow = display.newImageRect( "/assets/sprites/rightArrow.png", 25, 25 )
rightArrow.x = 190
rightArrow.y = display.contentHeight - 80
rightArrow.id = "up arrow"


local leftArrow = display.newImageRect( "/assets/sprites/leftArrow.png", 25, 25 )
leftArrow.x = 110
leftArrow.y = display.contentHeight - 80
leftArrow.id = "up arrow"

local dPad = display.newImageRect( "/assets/sprites/d-pad.png", 110, 110 )
dPad.x = 150
dPad.y = display.contentHeight - 80
dPad.id = "d-pad"



local theCharacter = display.newImageRect( "/assets/sprites/character.png" , 150, 250)
theCharacter.x = display.contentCenterX + 50
theCharacter.y = display.contentCenterY - 100
theCharacter.id = "the character"

 

function upArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character up

        transition.moveBy( theCharacter, { 

        	x = 0, -- move 0 in the x direction 

        	y = -50, -- move up 50 pixels

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



upArrow:addEventListener( "touch", upArrow )



function downArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character down

        transition.moveBy( theCharacter, { 

        	x = 0, -- move 0 in the x direction 

        	y = 50, -- move down 50 pixels

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



downArrow:addEventListener( "touch", downArrow )



function leftArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character left

        transition.moveBy( theCharacter, { 

        	x = -50, -- move 50 pixels to the left  

        	y = 0, -- move  0 in the y direction

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



leftArrow:addEventListener( "touch", leftArrow )



function rightArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character right

        transition.moveBy( theCharacter, { 

        	x = 50, -- move right 50 pixels 

        	y = 0, -- move 0 in the y direction

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end



rightArrow:addEventListener( "touch", rightArrow )