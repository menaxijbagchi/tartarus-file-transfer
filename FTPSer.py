from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer

authorizer = DummyAuthorizer()
authorizer.add_user("user_name", "password", "file_location", perm="elradfmw")  #This line gives the name of the FTP user who can log in, password along with the name of the directory the user will have full access to.
#authorizer.add_anonymous("file_location", perm="elradfmw")  allows access without a named account and password

handler = FTPHandler
handler.authorizer = authorizer

#server = FTPServer(("127.0.0.1", 1026), handler)
server = FTPServer(("localhost", 1026), handler)        #IP and port number of the FTP server
server.serve_forever()