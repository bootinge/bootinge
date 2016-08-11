import re
import os
import sys

for rootDir, dirList, fileList in os.walk("."):
    print rootDir
    for i in sorted(fileList):        
        filename = rootDir + "/" + i
        if re.search(r'.+\.(png)$',filename,re.U) and os.path.isfile(filename):
            try:                
                os.system("convert " + filename + " -resize 50% " + rootDir + "/resize_" + i )
                #os.system("convert " + filename + " -resize 300 " + rootDir + "/resize_" + i )
            except:
                continue
print "Done"        
