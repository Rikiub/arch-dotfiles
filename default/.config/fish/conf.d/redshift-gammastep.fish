function redshift
	pkill redshift
	command redshift
end

function gammastep
	pkill gammastep
	command gammastep
end

function gamma-soft
	pkill gammastep
	command gammastep -O 4000
end

function gamma-hard
	pkill gammastep
	command gammastep -O 2000
end
