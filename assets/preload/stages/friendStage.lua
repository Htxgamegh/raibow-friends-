local xx = 500
local yy = 600
local xx2 = 800
local yy2 = 750
local ofs = 30
local followchars = true
local modchart = true
function onCreate()

    makeLuaSprite('theFunkblox','funkblox',10,10)
    setObjectCamera('theFunkblox', 'camOther')
	addLuaSprite('theFunkblox',true)
    scaleObject('theFunkblox', 0.665, 0.665);
	setLuaSpriteScrollFactor('theFunkblox', 0, 0)
      
    makeAnimatedLuaSprite('black','negro',-600,-100)
	addAnimationByPrefix('black','1','black1',24,true)
	addAnimationByPrefix('black','2','black2',24,true)
    setObjectCamera('black', 'camOther')
    addLuaSprite('black',true)

    makeAnimatedLuaSprite('negron','dark',-600,-100)
    addAnimationByPrefix('negron','block','negronblock',24,true)
    addAnimationByPrefix('negron','blackin','negronblackin',24,true)
    setObjectCamera('negron', 'camOther')
    addLuaSprite('negron',true)

    makeLuaSprite('dark', 'darks', 0, 0)
    setObjectCamera('dark', 'camOther')
    setProperty('dark.alpha', 1.0)
    scaleObject('dark', 0.75, 0.75);
    addLuaSprite('dark', false) 

    makeAnimatedLuaSprite('ver','green',1000,150)
	addAnimationByPrefix('ver','do','verdo',24,true)
	addAnimationByPrefix('ver','de','verde',24,true)
	addLuaSprite('ver',true)
	setLuaSpriteScrollFactor('ver', 1.5, 1.5)

    makeAnimatedLuaSprite('naran','orange',-400,750)
	addAnimationByPrefix('naran','jo','naranjo',24,true)
	addAnimationByPrefix('naran','ja','naranja',24,true)
	addLuaSprite('naran',true)

	makeAnimatedLuaSprite('tea','background3',-600,0)
	addAnimationByPrefix('tea','tro','teatro',24,true)
	addLuaSprite('tea',false)

	makeAnimatedLuaSprite('scena','background2',-600,0)
	addAnimationByPrefix('scena','ry','scenary',24,true)
	addLuaSprite('scena',false)

	makeAnimatedLuaSprite('escena','background1',-600,0)
	addAnimationByPrefix('escena','rio','escenario',24,true)
	addLuaSprite('escena',false)

    makeLuaSprite('theLight','light',100,150)
	addLuaSprite('theLight',true)
	setLuaSpriteScrollFactor('theLight', 1.0, 1.0)

	makeAnimatedLuaSprite('ruido', 'ruido', 0, 0);
    setObjectCamera('ruido', 'camOther')
    setProperty('ruido.alpha', 0.03)
    scaleObject('ruido', 0.75, 0.75);
    addLuaSprite('ruido', true)

    addAnimationByPrefix('ruido','idle','ruido',30,true)

    objectPlayAnimation('ruido','idle',true)  

end

function onBeatHit()

    if curBeat % 2 == 0 then
		objectPlayAnimation('tea','tro',true)
	end

	if curBeat % 2 == 0 then
		objectPlayAnimation('scena','ry',true)
	end

	if mustHitSection then
		setProperty('defaultCamZoom',1.2);
	else
		setProperty('defaultCamZoom',0.8);

	end

	if curBeat > 1 then
		if mustHitSection then
			setProperty('defaultCamZoom',1.8);
		else
			setProperty('defaultCamZoom',1.1);
		end
	end

	if curBeat == 5 then
		objectPlayAnimation('black','2',true)
	end

    if curBeat == 5 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 9 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat > 16 then
		if mustHitSection then
			setProperty('defaultCamZoom',1.2);
		else
			setProperty('defaultCamZoom',0.8);
		end
	end

	if curBeat == 16 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 20 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 168 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 168 then
		objectPlayAnimation('ver','de',true)
	end

    if curBeat == 172 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 328 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 328 then
		objectPlayAnimation('naran','ja',true)
	end

    if curBeat == 332 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 480 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 480 then
		removeLuaSprite('escena')
	end

    if curBeat == 484 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 672 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 672 then
		removeLuaSprite('scena')
	end

    if curBeat == 676 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 810 then
		objectPlayAnimation('black','1',true)
	end
end

function onStepHit()
	
	if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    end

	if curStep > 2688 then
		if followchars == true then
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
			else
	
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
			end
		end
	end
end

function onCreatePost()

    scaleObject('iconP2', 0.9, 0.9)
    scaleObject('iconP1', 0.9, 0.9)
    setProperty('healthBar.alpha', 0.2)
    setProperty('healthBarBG.alpha', 0.2)
    setProperty('healthBar.visible', true)
    setProperty('healthBarBG.visible', true)
    setProperty('iconP2.visible', true)
    setProperty('iconP1.visible', true)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeTxt.visible', false)
  
    setProperty('gf.visible', false)
end

function onUpdate()

	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
	end
end

function onGameOver()
	modchart = false
	return Function_Continue;
end