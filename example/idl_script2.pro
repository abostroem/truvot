pro idl_script2
;WAVELENGTH SHIFT THE SPECTRA TO GIVE THE BEST ALIGNMENT AMONG THE SNAPSHOTS
master_shift,'00032094004/uvot/image/sw00032094004ugu_1ord_1.dat','00032094004/uvot/image/sw00032094004ugu_1ord_1.dat',/uvot1,/uvot2,minlam=3000.,maxlam=5000.,outfile='00032094004/uvot/image/sw00032094004ugu_1ord_1s.dat' ;ALIGN 1ST EXTENSION WITH THE 1ST EXTENSION (NOT REALLY NECESSARY, BUT CONVENIENT)

master_shift,'00032094004/uvot/image/sw00032094004ugu_1ord_1.dat','00032094004/uvot/image/sw00032094004ugu_1ord_2.dat',/uvot1,/uvot2,minlam=3000.,maxlam=5000.,outfile='00032094004/uvot/image/sw00032094004ugu_1ord_2s.dat' ;ALIGN 2ND EXTENSION WITH THE 1ST EXTENSION 

master_shift,'00032094004/uvot/image/sw00032094004ugu_1ord_1.dat','00032094004/uvot/image/sw00032094004ugu_1ord_3.dat',/uvot1,/uvot2,minlam=3000.,maxlam=5000.,outfile='00032094004/uvot/image/sw00032094004ugu_1ord_3s.dat' ; ALIGN 3RD EXTENSION WITH THE 1ST EXTENSION
;master_shift,(reference spectrum),(spectrum to be
;wavelength shifted),(/uvot1 is flag that reference spectrum is uvotpy formatted
;data),(uvot2 is flag that 2nd spectrum is uvotpy formatted
;data),(minlam=minimum wavelength to be used in chi^2
;calculation),(maxlam=maximum wavelength to be used in chi^2
;calculation),(outfile=output file containing wavelength shifted spectrum.)





;COADD THE WAVELENGTH SHIFTED SPECTRA INTO A SINGLE, LESS NOISY, FINAL SPECTRUM
spectra_avg,'00032094004/uvot/image/sw00032094004ugu_1ord_1s.dat','00032094004/uvot/image/sw00032094004ugu_1ord_2s.dat',f3='00032094004/uvot/image/sw00032094004ugu_1ord_3s.dat',output='00032094004/uvot/image/sw00032094004ugu_1ord_final.dat'
;spectra_avg,(1st spectrum to coadd [all other spectra are
;interpolated onto the wavelength scale of this spectrum]),(2nd
;spectrum to coadd),(f3=flag containing filename of 3rd spectrum to
;coadd [list all additional spectra up to f20 here if
;necessary]),(output=filename of the final, coadded spectrum)
end
