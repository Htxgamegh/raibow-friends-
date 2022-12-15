local xx = 500
local yy = 600
local xx2 = 800
local yy2 = 740
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

	makeAnimatedLuaSprite('texto','text',480,600)
	addAnimationByPrefix('texto','0','texto0',24,true)
    addAnimationByPrefix('texto','11','texto11',24,true)
    addAnimationByPrefix('texto','22','texto22',24,true)
    setObjectCamera('texto', 'camOther')
    addLuaSprite('texto',true)

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

    makeAnimatedLuaSprite('naran','orange',-400,700)
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

    makeAnimatedLuaSprite('a','bluewalk',-600,150)
    addAnimationByPrefix('a','no','ano',24,true)
    addAnimationByPrefix('a','zul','azul',24,true)
    addLuaSprite('a',true)
    setLuaSpriteScrollFactor('a', 1.5, 1.5)
    scaleObject('a', 1.9, 1.9)

	makeAnimatedLuaSprite('ruido', 'ruido', 0, 0);
    setObjectCamera('ruido', 'camOther')
    setProperty('ruido.alpha', 0.03)
    scaleObject('ruido', 0.75, 0.75);
    addLuaSprite('ruido', true)
	
    makeAnimatedLuaSprite('bla','negro2',-600,-100)
    addAnimationByPrefix('bla','ck2','black2',24,true)
    addAnimationByPrefix('bla','ck1','black1',24,true)
    setObjectCamera('bla', 'camOther')
    addLuaSprite('bla',true)

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

    if curBeat > 2 then
		if mustHitSection then
			setProperty('defaultCamZoom',2.0);
		else
			setProperty('defaultCamZoom',1.1);
		end
	end

	if curBeat == 2 then
		objectPlayAnimation('texto','11',true)
	end
	
	if curBeat == 4 then
		objectPlayAnimation('texto','0',true)
	end

	if curBeat == 6 then
		objectPlayAnimation('texto','22',true)
	end

	if curBeat == 12 then
		removeLuaSprite('texto')
	end

    if curBeat == 16 then
		objectPlayAnimation('black','2',true)
	end

    if curBeat == 16 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 20 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 199 then
		objectPlayAnimation('a','zul',true)
	end

    if curBeat >= 205 then
		removeLuaSprite('a')
	end

    if curBeat > 224 then
		if mustHitSection then
			setProperty('defaultCamZoom',1.2);
		else
			setProperty('defaultCamZoom',0.8);
		end
	end

    if curBeat == 224 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 228 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 384 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 384 then
		objectPlayAnimation('ver','de',true)
	end

	if curBeat == 388 then
		objectPlayAnimation('negron','block',true)
	end

	if curBeat == 416 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 416 then
		objectPlayAnimation('naran','ja',true)
	end

	if curBeat == 420 then
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

	if curBeat == 512 then
		objectPlayAnimation('negron','blackin',true)
	end

	if curBeat == 512 then
		removeLuaSprite('scena')
	end

	if curBeat == 516 then
		objectPlayAnimation('negron','block',true)
	end
    
    if curBeat == 584 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 588 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 600 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 604 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 616 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 620 then
		objectPlayAnimation('negron','block',true)
	end
    
    if curBeat == 632 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 636 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 640 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 644 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 644 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 648 then
		objectPlayAnimation('negron','block',true)
	end

    if curBeat == 648 then
		objectPlayAnimation('black','1',true)
	end

    if curBeat == 652 then
		objectPlayAnimation('black','2',true)
	end

    if curBeat == 652 then
		objectPlayAnimation('negron','blackin',true)
	end

    if curBeat == 656 then
		objectPlayAnimation('negron','block',true)
	end

end

function onStepHit()

    if curStep == 1396 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1397 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1400 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1401 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1404 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1406 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1407 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1408 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1524 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1525 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1528 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1529 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1532 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1534 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1535 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1536 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1780 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1781 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1784 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1785 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1788 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1790 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1791 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1792 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1908 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1909 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1912 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1913 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1916 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1918 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 1919 then
		objectPlayAnimation('black','1',true)
	end

    if curStep == 1920 then
		objectPlayAnimation('black','2',true)
	end

    if curStep == 2641 then
		objectPlayAnimation('bla','ck1',true)
	end

    if curStep == 2643 then
		objectPlayAnimation('bla','ck2',true)
	end

    if curStep == 2645 then
		objectPlayAnimation('bla','ck1',true)
	end

    if curStep == 2646 then
		objectPlayAnimation('bla','ck2',true)
	end

    if curStep == 2647 then
		objectPlayAnimation('bla','ck1',true)
	end

    if curStep == 2648 then
		objectPlayAnimation('bla','ck2',true)
	end

    if curStep == 2650 then
		objectPlayAnimation('bla','ck1',true)
	end

    if curStep == 2651 then
		objectPlayAnimation('bla','ck2',true)
	end

    if curStep == 2652 then
		objectPlayAnimation('bla','ck1',true)
	end

    if curStep == 2653 then
		objectPlayAnimation('bla','ck2',true)
	end

    if curStep == 2654 then
		objectPlayAnimation('bla','ck1',true)
	end

    if curStep == 2655 then
		objectPlayAnimation('bla','ck2',true)
	end

    if curStep == 2656 then
		objectPlayAnimation('bla','ck1',true)
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