# -*- coding: utf-8 -*-
"""
Created on Mon Sep 29 17:59:43 2014

@author: Tom Brien
"""

import os

data = open('phd thesis.gls', 'r')
out = open('phd thesis.gls.tmp', 'w')

findStr = '\delimN \n\t\t\glsseeformat'
repStr = '. \n\t\t\glsseeformat'
out.write(data.read().replace(findStr,repStr))
    
data.close()
out.close()

os.remove('phd thesis.gls')
os.rename('phd thesis.gls.tmp','phd thesis.gls')