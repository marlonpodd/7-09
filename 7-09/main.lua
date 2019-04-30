
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Marlon
-- Created on: Jan 2018
-- 
-- This file animates a charact using a spritesheet
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)
 
centerX = 110
centerY = 80

local sheetOptionsIdle =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetIdleKnight = graphics.newImageSheet( "./assets/spritesheets/knightIdle.png",  sheetOptionsIdle )

local sheetOptionsWalk =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetWalkingKnight = graphics.newImageSheet( "./assets/spritesheets/knightWalking.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleKnight
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingKnight
    }
}

local knight = display.newSprite( sheetIdleKnight, sequence_data )
knight.x = centerX
knight.y = centerY
knight.xScale = 180/587
knight.yScale = 240/707

knight:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheet()
    knight:setSequence( "walk" )
    knight:play()
    print("walk")
end

timer.performWithDelay( 2000, swapSheet )

----------------
local sheetOptionsIdle =
{
    width = 232,
    height = 439,
    numFrames = 10
}
local sheetIdleNinja = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyIdle.png",  sheetOptionsIdle )

local sheetOptionsWalk =
{
    width = 363,
    height = 458,
    numFrames = 10
}
local sheetWalkingNinja = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyRun.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleNinja
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingNinja
    }
}

local ninja = display.newSprite( sheetIdleNinja, sequence_data )
ninja.x = 220
ninja.y = 360
ninja.xScale = 180/363
ninja.yScale = 240/458

ninja:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheet()
    ninja:setSequence( "walk" )
    ninja:play()
    print("walk")
end

timer.performWithDelay( 2000, swapSheet )