:-use_module(python_lib).
:-dynamic func/2.



func(guid,Xc):- 
	python_call('FTPCli','downloadFile',Xc).



run:-
    consult('platform.pl'),
    start_tartarus(localhost,22220,2).  #instantiates a Tartarus platform on the given IP and Port with a token number.

      