function onBeatHit()
    if curBeat > 224 then
		if curBeat < 352 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 351 then
		if curBeat < 524 then
			if curBeat % 2 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 523 then
		if curBeat < 528 then
			if curBeat % 1 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 527 then
		if curBeat < 540 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 539 then
		if curBeat < 544 then
			if curBeat % 1 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 543 then
		if curBeat < 556 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 555 then
		if curBeat < 560 then
			if curBeat % 1 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 559 then
		if curBeat < 572 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 571 then
		if curBeat < 577 then
			if curBeat % 1 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end
end

function onStepHit()
    if curStep == 2072 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2075 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2078 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2136 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2139 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2142 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end
    
    if curStep == 2200 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2203 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2206 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2264 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2267 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end

    if curStep == 2270 then
        triggerEvent('Add Camera Zoom', 0.1,0.1)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    cameraShake('game', 0.008, 0.1)
end

