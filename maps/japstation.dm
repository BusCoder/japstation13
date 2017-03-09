
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

/area/japan/daimyo/Nagayoshi
	name = "Nagayoshi Territory"
	icon_state = "Nagayoshi"

/area/japan/daimyo/Shingen
	name = "Shingen Territory"
	icon_state = "Shingen"

/area/japan/daimyo/Kagetora
	name = "Kagetora Territory"
	icon_state = "Kagetora"

/area/japan/daimyo/Nobunaga
	name = "Nobunaga Territory"
	icon_state = "Nobunaga"

//islands

/area/japan/daimyo/island
	island = 1

/area/japan/daimyo/island/Sorin
	name = "Sorin Territory"
	icon_state = "Sorin"

/area/japan/daimyo/island/Takahisa
	name = "Takahisa Territory"
	icon_state = "Takahisa"

/area/japan/daimyo/island/Yoshikage
	name = "Yoshikage Territory"
	icon_state = "Yoshikage"

/area/japan/emperor
	name = "Emperor's Territory"
	icon_state = "Emperor"
