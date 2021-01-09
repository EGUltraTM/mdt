# mdt
A police Mobile Data Terminal system designed for use on the FiveM platform and ESX framework.  

# List of changes
## Appearance
Changed from solid blue to striped blue  
Removed background from .badge style, changed the yellow stripe to use a transparency gradient when behind the badge  
Added `officer.rank` to display before `officer.name`  
[ORIGINAL](https://forum.cfx.re/uploads/default/original/4X/3/3/b/33bdc433066827d54444e331b7a749d026ca378c.jpeg), [NEW](https://i.imgur.com/s603rao.png)  

## Serverside
Changed function `GetCharacterName(source)` to prefer using `xPlayer.getName()`, with the old database query as a fallback  
Added variable `PrimaryIdentifier	= "steam"` and changed the database query for function `GetCharacterName(source)` to check for an identifier using the variable  
Added `phone_number` support when performing a database search  
Changed event `("mdt:newCall")` to add support for `mdt_calls` notifications

[mdt_calls addon](https://github.com/thelindat/mdt_calls)  
<img src="https://i.imgur.com/kxdCVOB.png"></img>
