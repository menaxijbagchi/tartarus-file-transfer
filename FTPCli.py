from ftplib import FTP

ftp = FTP('')
ftp.connect("localhost",1026)                  #IP address and port number of the server
ftp.login(user='user_name', passwd = 'password')


def downloadFile():
	filename = 'video.mp4' #replace with the file in the directory 
	localfile = open(filename, 'wb')
	ftp.retrbinary('RETR ' + filename, localfile.write, 1024)
	ftp.quit()
	localfile.close()
