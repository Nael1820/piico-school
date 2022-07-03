function onEvent(name,value1,value2)
	if name == 'Change Bars Size' then 
        doTweenY('bruh1', 'blackbar', -360 + (value1 * 10), value2, 'quintOut');
		doTweenY('bruh2', 'blackbar2', 720 + -(value1 * 10), value2, 'quintOut');

	end
end