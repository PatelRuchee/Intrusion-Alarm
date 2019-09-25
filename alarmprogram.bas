;Ruchi Patel

init: let b0=0

switch1: if pinc.7=1 then add

	goto switch1
	
add:  pause 350
	let b0= b0+1
	if b0<3 then switch1     ; switch1 needs to be pressed 3 times to activated
	
	
	
green: high b.2
	 wait 2
	 low b.2
	 wait 2   ; light flashes for 15 seconds, in process
	 high b.2
	 wait 2    ; still green light= activated
	 low b.2
	 wait 2
	 high b.2
	 wait 2
	 low b.3
	 high b.2
	 wait 2
	 low b.2
	 high b.2
	 pause 500
	 low b.2
	 pause 500
	 high b.2
	 pause 500
	 low b.2
	 pause 500
	 high b.2
	 pause 500
	 low b.2
	 high b.2
	 pause 500
	 low b.2
       high b.0
     
lever: if pinc.5=0 then audio
	 goto open
	 
open: if pinc.4=1 then audio
	 goto lever
	 
audio: low b.0
    high b.1
    if pinc.6=1 then finish
    sound b.7, (125,500) if pinc.6=1 then finish
    low b.1
    
    
    sound b.7, (10, 500) if pinc.6=1 then finish
    high b.1
    
    
    sound b.7, (115, 500) if pinc.6=1 then finish
    low b.1
    goto audio
    
	
switch2: if pinc.6=1 then finish
	 goto audio

finish:low b.0
	low b.1
	low b.2
	low b.7
	goto init
	
    
 