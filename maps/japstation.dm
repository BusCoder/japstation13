
//**************************************************************
// Map Datum -- Japstation
//**************************************************************

/datum/map/active
	nameShort = "box"
	nameLong = "JAPAN"
	map_dir = "japan"
	tDomeX = 128
	tDomeY = 69
	tDomeZ = 2
	zLevels = list(
		/datum/zLevel/station
		)
	holomap_offset_x = list(0,0,0,86,4,0,0,)
	holomap_offset_y = list(0,0,0,94,10,0,0,)

////////////////////////////////////////////////////////////////
#include "defficiency/pipes.dm" // Atmos layered pipes.
#include "japan.dmm"
