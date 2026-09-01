:-use_module(python_lib).
:-dynamic func/2.
:-dynamic handler1/3.



func(guid,Xc):- 
	python_call('FTPCli','downloadFile',Xc).



run:-
    consult('platform.pl'),                                          #consults the Tartarus platform file
    start_tartarus(localhost,11110,10),                              #instantiates a Tartarus platform on the given IP and Port with a token number
    create_mobile_agent(agent1,(localhost,11110),handler1,[10,2,3]), #creates an agent named "agent1" on the given IP and Port with a handler "handler1" and a list of tokens
    add_payload(agent1,[(func,2)]),
    writeln('payload aded'),
    move_agent(agent1,(localhost,22220)).                            #moves the agent from one node to the other


#hHandler of the agent
handler1(guid,(IP,Port),main):-
    writeln('Hi, reached node 2'),
    func(guid,Xc).
      