
/////////////////////////////////////////////////////job constants//////////////////////////////////////////

var/const/ENGSEC			=(1<<0)

var/const/CAPTAIN			=(1<<0)
var/const/HOS				=(1<<1)
var/const/WARDEN			=(1<<2)
var/const/DETECTIVE			=(1<<3)
var/const/OFFICER			=(1<<4)
var/const/CHIEF				=(1<<5)
var/const/ENGINEER			=(1<<6)
var/const/ATMOSTECH			=(1<<7)
var/const/ROBOTICIST		=(1<<8)
var/const/AI				=(1<<9)
var/const/CYBORG			=(1<<10)
var/const/MOMMI				=(1<<11)
var/const/MECHANIC			=(1<<12)


//var/const/MEDSCI			=(1<<1)

var/const/RD				=(1<<0)
var/const/SCIENTIST			=(1<<1)
var/const/CHEMIST			=(1<<2)
//var/const/CMO				=(1<<3)
var/const/DOCTOR			=(1<<4)
var/const/GENETICIST		=(1<<5)
var/const/VIROLOGIST		=(1<<6)
//var/const/PSYCHIATRIST		=(1<<7)
var/const/PARAMEDIC			=(1<<7)


var/const/CIVILIAN			=(1<<2)

var/const/HOP				=(1<<0)
var/const/BARTENDER			=(1<<1)
var/const/BOTANIST			=(1<<2)
var/const/CHEF				=(1<<3)
var/const/JANITOR			=(1<<4)
var/const/LIBRARIAN			=(1<<5)
var/const/QUARTERMASTER		=(1<<6)
var/const/CARGOTECH			=(1<<7)
var/const/MINER				=(1<<8)
var/const/LAWYER			=(1<<9)
var/const/CHAPLAIN			=(1<<10)
var/const/CLOWN				=(1<<11)
var/const/MIME				=(1<<12)
var/const/ASSISTANT			=(1<<13)
var/const/TRADER			=(1<<14)






//royals
var/const/ROYALS = (1<<0)
var/const/EMPEROR = (1<<0)
var/const/EMPERORSON = (1<<1)
var/const/EMPERORDAUGHTER = (1<<2)

//upper nobles
var/const/UPPER_NOBILITY = (1<<1)
var/const/DAIMYO = (1<<0)
var/const/DAIMYOSON = (1<<1)
var/const/DAIMYODAUGHTER = (1<<2)

var/const/COMMANDER = (1<<3)
var/const/COMMANDERSON = (1<<4)
var/const/COMMANDERDAUGHTER = (1<<5)
//lesser nobles
var/const/LESSER_NOBILITY = (1<<2)
var/const/SAMURAI = (1<<0)
var/const/SAMURAISON = (1<<1)
var/const/SAMURAIDAUGHTER = (1<<2)
//peasants
var/const/PEASANTRY = (1<<3)
var/const/PEASANT = (1<<0)
var/const/PEASANTSON = (1<<1)
var/const/PEASANTDAUGHTER = (1<<2)

var/const/MONK = (1<<3)
var/const/MONKSON = (1<<4)
var/const/MONKDAUGHTER = (1<<5)

var/list/command_positions = list(
	"Emperor",
	"Daimyo",
	"Commander",
	"Prince of Japan",
	"Daimyo's Son",
	"Commander's Son",
	"Empress or Princess of Japan",
	"Daimyo's Wife or Daughter",
	"Commander's Wife or Daughter"
)


var/list/civilian_positions = list(
	"Peasant", "Monk",
	"Peasant's Son",
	"Peasant's Daughter or Wife"
)


var/list/security_positions = list(
	"Samurai",
	"Samurai's Son",
	"Samurai's Wife or Daughter"
)


var/list/assistant_occupations = list(
)



var/list/engineering_positions = list(

)


var/list/medical_positions = list(

)


var/list/science_positions = list(

)


var/list/cargo_positions = list(

)


var/list/nonhuman_positions = list(

)

var/list/misc_positions = list(

)

/proc/guest_jobbans(var/job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)
			continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(!J)
			continue
		if(J.title == job)
			titles = J.alt_titles

	return titles

