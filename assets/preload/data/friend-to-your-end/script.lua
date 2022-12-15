local cameraX = 100
local camerY = 800

function onBeatHit()
    if curBeat > 15 then
		if curBeat < 328 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 327 then
		if curBeat < 457 then
			if curBeat % 2 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 479 then
		if curBeat < 544 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 543 then
		if curBeat < 672 then
			if curBeat % 2 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 671 then
		if curBeat < 801 then
			if curBeat % 1 == 0 then
				triggerEvent('Add Camera Zoom', 0.2,0.1)
			end
		end
	end
end

function onStepHit()

	if curStep == 648 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 656 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 660 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 664 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 666 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 668 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 669 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 670 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 671 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1248 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1250 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1256 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1258 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1264 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1266 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1272 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1274 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1280 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1282 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1288 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1290 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1296 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1298 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1304 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1308 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep > 1856 then
		if curStep < 1920 then
			if mustHitSection then
				setProperty('defaultCamZoom',1.8);
			else
				setProperty('defaultCamZoom',0.8);
			end
		end
	end

	if curStep > 1856 then
		if curStep < 1920 then
			triggerEvent('Camera Follow Pos',cameraX,cameraY)
		end
	end

	if curStep == 2672 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 2676 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 2676 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 2680 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 2682 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 2684 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 2685 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 2686 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 2687 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 2688 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
    cameraShake('game', 0.008, 0.1)
end

