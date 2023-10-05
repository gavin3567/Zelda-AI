local counter = 0

while true do
    if counter < 25 then
        joypad.set(1, {up=true})
        print("Pressing Up")
    else if counter < 50 then
        joypad.set(1, {up=false, down=true})
        print("Pressing Down")
    else if counter < 75 then
        joypad.set(1, {down=false, left=true})
        print("Pressing Left")
    else if counter < 100 then
        joypad.set(1, {left=false, right=true})
        print("Pressing Right")
    else
        joypad.set(1, {right=false})
        print("Releasing Right")
    end
    end
    end
    end

    counter = (counter + 1) % 100 -- Reset counter every 20 frames

    -- Advance one frame
    emu.frameadvance()
end
