local bpm = 4
local boom = 1

function onEvent(name, v1, v2)
    if (name == 'BPM Cam') then
        bpm = tonumber(v1)
        boom = tonumber(v2)
    end
end

function onBeatHit()
    if (curBeat % bpm == 0) then
        triggerEvent('Add Camera Zoom', 0.015 * boom, 0.03 * boom)
    end
end