# tartarus-file-transfer
This repository contains code for transferring files between Tartarus nodes.
<br>
For more information on Tartarus, please visit the [Tartarus Github repository](https://github.com/roboticslab-cseiitg/ProjectTartarus). You can also refer to the available manual for more details.
This application also uses the 'python_lib.pl' file available in [this folder](https://github.com/roboticslab-cseiitg/ProjectTartarus/tree/master/Python_Support) of the Tartarus Github repository.
<br>
The 'platform.pl' file inside the folders "Windows" and "Ubuntu" is for the Windows and Ubuntu OS respectively.

---
To Create a Tartarus Node:
- Open SWI Prolog Window.
- Go to File --> consult --> select the 'platform.pl' file
<br>
You can also:
- Double click on the 'platform.pl' file and open with SWI Prolog
  ---
  
**install pyftpdlib**

**Steps to run:-**
1. Start the FTP server: py FTPSer.py
2. Create tartarus platforms on the client and server sides:
   Client Side:- node2.pl file
   Server side:- node1.pl file
<br>
Please note:- First create the Tartarus platform and consult 'node2.pl' on the client side. Call the predicate 'run'. Then create the Tartarus platform consult the file 'node1.pl' on the server side and call the predicate 'run'.
Place 'FTPSer.py' and 'node1.pl' files on the server side and 'FTPCli.py' and 'node2.pl' files on the client side.
