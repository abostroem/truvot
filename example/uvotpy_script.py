#!!!! YOU MUST LAUNCH HEASOFT PRIOR TO EXECUTING THIS SCRIPT!!!!
#  ('heainit' is the default method of launching)

#import some python packages
import os
import uvotgrism
import pyfits

ra, dec = 210.7738750, +54.2736389  #SET VARIABLES REQUIRED FOR UVOTPY (TARGET LOCATION ON SKY)

os.chdir('00032094004/uvot/image') #CHANGE WORKING DIRECTORY TO BE THE DATA DIRECTORY

obsid = '00032094004' #OBSID OF OBSERVATION
ext = 1 #OPERATE ON THE 1ST IMAGE EXTENSION
e=pyfits.getdata('sw00032094004ugu_dt_template_1.fits') #READ IN THE TEMPLATE FOR THIS SNAPSHOT AS AN ARRAY
Z = uvotgrism.getSpec(ra,dec,obsid,ext,fit_second=True,wr_outfile=True,chatter=1,background_template=e) #EXECUTE UVOTPY
ext = 2 #REPEAT THE PROCEDURE FOR THE 2ND IMAGE EXTENSION
e=pyfits.getdata('sw00032094004ugu_dt_template_2.fits')
Z = uvotgrism.getSpec(ra,dec,obsid,ext,fit_second=True,wr_outfile=True,chatter=1,background_template=e)
ext = 3 #REPEAT THE PROCEDURE FOR THE 3RD IMAGE EXTENSION
e=pyfits.getdata('sw00032094004ugu_dt_template_3.fits')
Z = uvotgrism.getSpec(ra,dec,obsid,ext,fit_second=True,wr_outfile=True,chatter=1,background_template=e)
os.chdir('../../..') #CHANGE BACK TO THE ORIGINAL DIRECTORY
print 'Finished extracting using UVOTPY!'

#CONVERT THE UVOTPY OUTPUT SPECTRA INTO A COLUMNATED FORMAT
thr = pyfits.open('00032094004/uvot/image/sw00032094004ugu_1ord_1_f.pha')
data = thr[2].data                                                   
numpy.savetxt('00032094004/uvot/image/sw00032094004ugu_1ord_1.dat',data)
thr = pyfits.open('00032094004/uvot/image/sw00032094004ugu_1ord_2_f.pha')
data = thr[2].data                                                   
numpy.savetxt('00032094004/uvot/image/sw00032094004ugu_1ord_2.dat',data)
thr = pyfits.open('00032094004/uvot/image/sw00032094004ugu_1ord_3_f.pha')
data = thr[2].data                                                   
numpy.savetxt('00032094004/uvot/image/sw00032094004ugu_1ord_3.dat',data)
