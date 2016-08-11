import re
import os
import sys

for rootDir, dirList, fileList in os.walk("."):
    print rootDir
    for i in sorted(fileList):        
        filename = rootDir + "/" + i
        if re.search(r'.+\.(mp4)$',filename,re.U) and os.path.isfile(filename):
            try:                
                #print rootDir + "/filmstrip_" + i)
                os.system("ffmpeg -i " + filename + " -an -sn -vf scale=320:-1 " + rootDir + "/resize_" + i )
                print "ffmpeg -i " + filename + " -an -sn -vf scale=320:-1 " + rootDir + "/resize_" + i
            except:
                continue
print "Done"        
