
//**************************************************************
// Map Datum -- Japstation
//**************************************************************

/datum/map/active
	nameShort = "box"
	nameLong = "Japan"
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

//areas

/area/japan
	var/island = 0
	atmos = 0

/area/japan/daimyo/Azai
	name = "Azai Territory"
	icon_state = "Azai"

/area/japan/daimyo/Oda
	name = "Oda Territory"
	icon_state = "Oda"

/area/japan/daimyo/Takeda
	name = "Takeda Territory"
	icon_state = "Takeda"

/area/japan/daimyo/Uesugi
	name = "Uesugi Territory"
	icon_state = "Uesugi"

//islands

/area/japan/daimyo/island
	island = 1

/area/japan/daimyo/island/Asakura
	name = "Asakura Territory"
	icon_state = "Asakura"

/area/japan/emperor
	name = "Emperor's Territory"
	icon_state = "Emperor"
