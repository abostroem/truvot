pro idl_script1

;COADD THE 2 TEMPLATE SNAPSHOTS INTO A SINGLE, HIGHER SIGNAL-TO-NOISE
;TEMPLATE
optimal_shift_time,1,50,'00032094018/uvot/image/sw00032094018ugu_dt.img','00032094018/uvot/image/sw00032094018ugu_dt_coadd.fits','00032094018/uvot/image/sw00032094018ugu_dt.img',1080.,934.,1074.,925.,/coadd,ext2=2
;optimal_shift_time,(operate on 1st image extension=1),(sky background
;estimate=50),(filename of template image),(output image),(filename
;of template image again),(x position of zeroth order feature in 1st
;image extension),(y position of zeroth order feature in 1st image extension),(x position of zeroth order feature in 2nd
;image extension),(y position of zeroth order feature in 2nd image
;extension),(/coadd flag indicates that you wish to coadd image
;extensions 1 and 2),(ext2=2 indicates that you wish to coadd the 2nd
;image extension onto the first image extension)






;TRANSLATE THE TEMPLATE IMAGE TO OVERLAY THE DATA IMAGE AND FLUX SCALE
optimal_shift_time,1,40.,'00032094018/uvot/image/sw00032094018ugu_dt_coadd.fits','00032094004/uvot/image/sw00032094004ugu_dt_template_1.fits','00032094004/uvot/image/sw00032094004ugu_dt.img',1102.,879.,1080.,934.,outputsubtract='00032094004/uvot/image/sw00032094004ugu_dt_subtracted_1.fits'
optimal_shift_time,2,40.,'00032094018/uvot/image/sw00032094018ugu_dt_coadd.fits','00032094004/uvot/image/sw00032094004ugu_dt_template_2.fits','00032094004/uvot/image/sw00032094004ugu_dt.img',1090.,891.,1080.,934.,outputsubtract='00032094004/uvot/image/sw00032094004ugu_dt_subtracted_2.fits'
optimal_shift_time,3,40.,'00032094018/uvot/image/sw00032094018ugu_dt_coadd.fits','00032094004/uvot/image/sw00032094004ugu_dt_template_3.fits','00032094004/uvot/image/sw00032094004ugu_dt.img',1094.,919.,1080.,934.,outputsubtract='00032094004/uvot/image/sw00032094004ugu_dt_subtracted_3.fits'
;optimal_shift_time,(operate on the third image extension),(sky
;background estimate=40),(template image),(output image),(data
;image),(x position of zeroth order feature in data image),(y position
;of zeroth order feature in data image),(x position of zeroth order
;feature in template image),(y position of zeroth order feature in
;template image),(output a residual image of data image minus template image)
end
