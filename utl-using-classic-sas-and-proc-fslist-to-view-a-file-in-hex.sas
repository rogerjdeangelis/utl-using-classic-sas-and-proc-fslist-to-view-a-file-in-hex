Using classic SAS and proc fslist to view a file in hex                                    
                                                                                           
Yow need the clean command line ie '====> _____' not EE, EG, SAS Studio, UE, .....         
                                                                                           
This solution uses some advanced techniques only available in 1980's SAS.                  
All the enhanced 'versions' of SAS lack this critical functionality.  

github                                                                                                                                  
https://tinyurl.com/y384pukn                                                                                                            
https://github.com/rogerjdeangelis/utl-using-classic-sas-and-proc-fslist-to-view-a-file-in-hex    

                                                                                           
*_                   _                                                                     
(_)_ __  _ __  _   _| |_                                                                   
| | '_ \| '_ \| | | | __|                                                                  
| | | | | |_) | |_| | |_                                                                   
|_|_| |_| .__/ \__,_|\__|                                                                  
        |_|                                                                                
;                                                                                          
                                                                                           
* output textfile to work directory;                                                       
                                                                                           
* create a comma separated file;                                                           
dm "dexport sashelp.class '%sysfunc(pathname(work))/have.csv' replace";                    
                                                                                           
d:/wrk/_TDXXXX_XXXXX-PC_/have.txt                                                          
                                                                                           
 Alfred ,M ,14 ,69 ,112.5                                                                  
 Alice ,F ,13 ,56.5 ,84                                                                    
 Barbara ,F ,13 ,65.3 ,98                                                                  
 Carol ,F ,14 ,62.8 ,102.5                                                                 
 Henry ,M ,14 ,63.5 ,102.5                                                                 
 James ,M ,12 ,57.3 ,83                                                                    
 Jane ,F ,12 ,59.8 ,84.5                                                                   
 Janet ,F ,15 ,62.5 ,112.5                                                                 
 Jeffrey ,M ,13 ,62.5 ,84                                                                  
 John ,M ,12 ,59 ,99.5                                                                     
 Joyce ,F ,11 ,51.3 ,50.5                                                                  
 Judy ,F ,14 ,64.3 ,90                                                                     
 Louise ,F ,12 ,56.3 ,77                                                                   
 Mary ,F ,15 ,66.5 ,112                                                                    
 Philip ,M ,16 ,72 ,150                                                                    
 Robert ,M ,12 ,64.8 ,128                                                                  
 Ronald ,M ,15 ,67 ,133                                                                    
 Thomas ,M ,11 ,57.5 ,85                                                                   
 William ,M ,15 ,66.5 ,112                                                                 
                                                                                           
On the fslist command line type                                                            
                                                                                           
cols;nums;hex on;                                                                          
                                                                                           
Ypu can cut and paste it                                                                   
                                                                                           
*            _               _                                                             
  ___  _   _| |_ _ __  _   _| |_                                                           
 / _ \| | | | __| '_ \| | | | __|                                                          
| (_) | |_| | |_| |_) | |_| | |_                                                           
 \___/ \__,_|\__| .__/ \__,_|\__|                                                          
                |_|                                                                        
;                                                                                          
                                                                                           
Note the interactive window with '1980s' command line                                      
                                                                                           
=====> f '0A'x                                                                             
       +........+.........+.........+                                                      
000001 NAME.SEX.AGE.HEIGHT.WEIGHT                                                          
000002 1...5....10...15...20...25                                                          
000003 44440545044404444450544445                                                          
000004 E1D59358917598597849759784                                                          
000005                                                                                     
000006 Alfred.M.14.69.112.5                                                                
000007 1...5....10...15...2                                                                
000008 46676604033033033323                                                                
000009 1C62549D9149699112E5                                                                
000010                                                                                     
000011 Alice.F.13.56.5.84                                                                  
000012 1...5....10...15..                                                                  
000013 466660403303323033                                                                  
000014 1C93596913956E5984                                                                  
000015                                                                                     
000016 Barbara.F.13.65.3.98                                                                
000017 1...5....10...15...2                                                                
000018 46766760403303323033                                                                
000019 212212196913965E3998                                                                
000020                                                                                     
000021 Carol.F.14.62.8.102.5                                                               
000022 1...5....10...15...20                                                               
000023 467660403303323033323                                                               
000024 312FC96914962E89102E5                                                               
                                                                                           
* __       _ _             _       _   _                                                   
 / _|_   _| | |  ___  ___ | |_   _| |_(_) ___  _ __                                        
| |_| | | | | | / __|/ _ \| | | | | __| |/ _ \| '_ \                                       
|  _| |_| | | | \__ \ (_) | | |_| | |_| | (_) | | | |                                      
|_|  \__,_|_|_| |___/\___/|_|\__,_|\__|_|\___/|_| |_|                                      
                                                                                           
;                                                                                          
                                                                                           
dm "dexport sashelp.class '%sysfunc(pathname(work))/have.csv' replace";                    
                                                                                           
proc fslist file="%sysfunc(pathname(work))/have.txt";                                      
run;quit;                                                                                  
                                                                                           
* after fslist comes up enter the following onthe command line;                            
cols;nums;hex on;                                                                          
                                                                                           
to leave type                                                                              
end                                                                                        
                                                                                           
You can do searches using the command line even                                            
search for hex strings f '0A0D'x or f 'ROGER'                                              
                                                                                           
