#!/bin/bash
#
# Copy all pregenerated image files to the specified docdir.
# To be called like:
#   cpgifs.sh html530

prog=`basename $0`
if [ $# -ne 1 ]; then
   echo "$prog: no docdir argument specified"
   exit 1
else
   docdir="$1"
fi

#src="/user/httpd/root/root/html528/"
src="./"
dst="$docdir/gif"

img="\
gif/ELTU.gif
gif/InspectCanvas.gif
gif/Lego1Cartesian.gif
gif/Lego1Cylindrical.gif
gif/Lego1Polar.gif
gif/Marker3DBox.gif
gif/MovePicture.gif
gif/Poisson.gif
gif/PoissonI.gif
gif/RootGuiBuilder.gif
gif/StyleEditor.gif
gif/StyleManager.gif
gif/Surface1Cylindrical.gif
gif/TAttFillEditor.gif
gif/TAttLineEditor.gif
gif/TAttMarkerEditor.gif
gif/TAttTextEditor.gif
gif/TAxisEditor.gif
gif/TBuffer3D.gif
gif/TCurlyArcEditor.gif
gif/TCurlyLineEditor.gif
gif/TFitEditor.gif
gif/TFrameEditor.gif
gif/TGRootIDE.gif
gif/TGTextEditor.gif
gif/TGedEditor.gif
gif/TGeoScaledShape.gif
gif/TGraphEditor.gif
gif/TH1Editor1.gif
gif/TH1Editor1_1.gif
gif/TH1Editor1_2.gif
gif/TH1Editor_1.gif
gif/TH1Editor_2.gif
gif/TH2Editor1_1.gif
gif/TH2Editor1_2.gif
gif/TH2Editor_1.gif
gif/TH2Editor_2.gif
gif/TLineEditor.gif
gif/TPadEditor.gif
gif/TPaveStatsEditor.gif
gif/TPieEditor.gif
gif/TSpectrum2_Background1.gif
gif/TSpectrum2_Background1.jpg
gif/TSpectrum2_Background2.gif
gif/TSpectrum2_Background2.jpg
gif/TSpectrum2_Background3.gif
gif/TSpectrum2_Background3.jpg
gif/TSpectrum2_Background4.gif
gif/TSpectrum2_Background4.jpg
gif/TSpectrum2_Background5.jpg
gif/TSpectrum2_Background6.jpg
gif/TSpectrum2_Background7.jpg
gif/TSpectrum2_Background8.jpg
gif/TSpectrum2_Deconvolution1.gif
gif/TSpectrum2_Deconvolution1.jpg
gif/TSpectrum2_Deconvolution2.gif
gif/TSpectrum2_Deconvolution2.jpg
gif/TSpectrum2_Deconvolution3.jpg
gif/TSpectrum2_Deconvolution4.jpg
gif/TSpectrum2_Deconvolution5.jpg
gif/TSpectrum2_Deconvolution6.jpg
gif/TSpectrum2_Deconvolution7.jpg
gif/TSpectrum2_Searching1.jpg
gif/TSpectrum2_Searching10.jpg
gif/TSpectrum2_Searching11.gif
gif/TSpectrum2_Searching12.jpg
gif/TSpectrum2_Searching13.jpg
gif/TSpectrum2_Searching14.jpg
gif/TSpectrum2_Searching2.gif
gif/TSpectrum2_Searching3.jpg
gif/TSpectrum2_Searching4.jpg
gif/TSpectrum2_Searching5.jpg
gif/TSpectrum2_Searching6.jpg
gif/TSpectrum2_Searching7.jpg
gif/TSpectrum2_Searching8.jpg
gif/TSpectrum2_Searching9.jpg
gif/TSpectrum2_Smoothing1.gif
gif/TSpectrum2_Smoothing1.jpg
gif/TSpectrum2_Smoothing2.gif
gif/TSpectrum2_Smoothing2.jpg
gif/TSpectrum2_Smoothing3.gif
gif/TSpectrum2_Smoothing3.jpg
gif/TSpectrum2_Smoothing4.gif
gif/TSpectrum2_Smoothing4.jpg
gif/TSpectrum2_Smoothing5.gif
gif/TSpectrum2_Smoothing6.gif
gif/TSpectrum_Background.gif
gif/TSpectrum_Background_compton.jpg
gif/TSpectrum_Background_decr.jpg
gif/TSpectrum_Background_incr.jpg
gif/TSpectrum_Background_order.jpg
gif/TSpectrum_Background_smooth1.jpg
gif/TSpectrum_Background_smooth2.jpg
gif/TSpectrum_Background_width.jpg
gif/TSpectrum_Background_width2.jpg
gif/TSpectrum_Deconvolution1.gif
gif/TSpectrum_Deconvolution1.jpg
gif/TSpectrum_Deconvolution2.gif
gif/TSpectrum_Deconvolution2.jpg
gif/TSpectrum_Deconvolution3.gif
gif/TSpectrum_Deconvolution3.jpg
gif/TSpectrum_DeconvolutionRL1.gif
gif/TSpectrum_DeconvolutionRL2.gif
gif/TSpectrum_DeconvolutionRL_wide1.jpg
gif/TSpectrum_DeconvolutionRL_wide2.jpg
gif/TSpectrum_Deconvolution_wide1.jpg
gif/TSpectrum_Deconvolution_wide2.jpg
gif/TSpectrum_Deconvolution_wide3.jpg
gif/TSpectrum_Deconvolution_wide4.jpg
gif/TSpectrum_Deconvolution_wide5.jpg
gif/TSpectrum_Deconvolution_wide6.jpg
gif/TSpectrum_Searching1.jpg
gif/TSpectrum_Searching2.jpg
gif/TSpectrum_Searching3.jpg
gif/TSpectrum_Searching4.jpg
gif/TSpectrum_Searching5.jpg
gif/TSpectrum_Smoothing1.gif
gif/TSpectrum_Smoothing1.jpg
gif/TSpectrum_Smoothing2.gif
gif/TSpectrum_Smoothing2.jpg
gif/TSpectrum_Smoothing3.gif
gif/TSpectrum_Smoothing3.jpg
gif/TSpectrum_Smoothing4.gif
gif/TSpectrum_Smoothing4.jpg
gif/TSpectrum_Unfolding1.gif
gif/TSpectrum_Unfolding2.gif
gif/TSpectrum_Unfolding2.jpg
gif/TSpectrum_Unfolding3.gif
gif/TSpectrum_Unfolding3.jpg
gif/TStructViewer1.jpg
gif/TStructViewer2.jpg
gif/Vavilov.gif
gif/ZoomPicture.gif
gif/analyze.gif
gif/box_ed.jpg
gif/box_pic.gif
gif/brik.gif
gif/browser.gif
gif/canvas.gif
gif/canvas_layout.gif
gif/chain_friend.gif
gif/classinfo.gif
gif/colors.gif
gif/compile.gif
gif/cone.gif
gif/cone_ed.jpg
gif/cone_pic.gif
gif/cons.gif
gif/cons_ed.jpg
gif/cons_pic.gif
gif/controlbar.gif
gif/ctub.gif
gif/ctub_ed.jpg
gif/ctub_pic.gif
gif/dialogbuttons.gif
gif/diamond.gif
gif/double32.gif
gif/drawclass.gif
gif/dtvd.gif
gif/eltu_ed.jpg
gif/eltu_pic.gif
gif/eval.gif
gif/eve-3ds.png
gif/eve-alice3d.png
gif/eve-aliceproj.png
gif/eve-cmsgeo.png
gif/eve-quadset.png
gif/feynman.gif
gif/fildir.gif
gif/file_layout.gif
gif/filedrawmap.gif
gif/fitslicesy.gif
gif/foam_Initialize_schema.gif
gif/foam_Map2.gif
gif/foam_Map3.gif
gif/foam_MapCamel1000.gif
gif/foam_cKanwa.gif
gif/foam_schema2.gif
gif/folder.gif
gif/function2.gif
gif/gammadist.gif
gif/gaxisf1.gif
gif/spectrum3_background_image001.gif
gif/spectrum3_background_image002.gif
gif/spectrum3_background_image003.gif
gif/spectrum3_background_image004.gif
gif/spectrum3_background_image005.jpg
gif/spectrum3_background_image006.jpg
gif/gtra.gif
gif/gtra_ed.jpg
gif/gtra_pic.gif
gif/hpxinspect.gif
gif/hsumDialog.gif
gif/hsumMenu.gif
gif/hype.gif
gif/hype_ed.jpg
gif/hype_pic.gif
gif/kolmogorov.gif
gif/linejoin.gif
gif/link.gif
gif/lognormal.gif
gif/markers.gif
gif/mlp.png
gif/multidimfit_img1.gif
gif/multidimfit_img10.gif
gif/multidimfit_img100.gif
gif/multidimfit_img101.gif
gif/multidimfit_img102.gif
gif/multidimfit_img103.gif
gif/multidimfit_img104.gif
gif/multidimfit_img105.gif
gif/multidimfit_img106.gif
gif/multidimfit_img107.gif
gif/multidimfit_img108.gif
gif/multidimfit_img109.gif
gif/multidimfit_img11.gif
gif/multidimfit_img110.gif
gif/multidimfit_img111.gif
gif/multidimfit_img112.gif
gif/multidimfit_img113.gif
gif/multidimfit_img114.gif
gif/multidimfit_img115.gif
gif/multidimfit_img116.gif
gif/multidimfit_img117.gif
gif/multidimfit_img118.gif
gif/multidimfit_img119.gif
gif/multidimfit_img12.gif
gif/multidimfit_img120.gif
gif/multidimfit_img121.gif
gif/multidimfit_img122.gif
gif/multidimfit_img123.gif
gif/multidimfit_img124.gif
gif/multidimfit_img13.gif
gif/multidimfit_img14.gif
gif/multidimfit_img15.gif
gif/multidimfit_img16.gif
gif/multidimfit_img17.gif
gif/multidimfit_img18.gif
gif/multidimfit_img19.gif
gif/multidimfit_img2.gif
gif/multidimfit_img20.gif
gif/multidimfit_img21.gif
gif/multidimfit_img22.gif
gif/multidimfit_img23.gif
gif/multidimfit_img24.gif
gif/multidimfit_img25.gif
gif/multidimfit_img26.gif
gif/multidimfit_img27.gif
gif/multidimfit_img28.gif
gif/multidimfit_img29.gif
gif/multidimfit_img3.gif
gif/multidimfit_img30.gif
gif/multidimfit_img31.gif
gif/multidimfit_img32.gif
gif/multidimfit_img33.gif
gif/multidimfit_img34.gif
gif/multidimfit_img35.gif
gif/multidimfit_img36.gif
gif/multidimfit_img37.gif
gif/multidimfit_img38.gif
gif/multidimfit_img39.gif
gif/multidimfit_img4.gif
gif/multidimfit_img40.gif
gif/multidimfit_img41.gif
gif/multidimfit_img42.gif
gif/multidimfit_img43.gif
gif/multidimfit_img44.gif
gif/multidimfit_img45.gif
gif/multidimfit_img46.gif
gif/multidimfit_img47.gif
gif/multidimfit_img48.gif
gif/multidimfit_img49.gif
gif/multidimfit_img5.gif
gif/multidimfit_img50.gif
gif/multidimfit_img51.gif
gif/multidimfit_img52.gif
gif/multidimfit_img53.gif
gif/multidimfit_img54.gif
gif/multidimfit_img55.gif
gif/multidimfit_img56.gif
gif/multidimfit_img57.gif
gif/multidimfit_img58.gif
gif/multidimfit_img59.gif
gif/multidimfit_img6.gif
gif/multidimfit_img60.gif
gif/multidimfit_img61.gif
gif/multidimfit_img62.gif
gif/multidimfit_img63.gif
gif/multidimfit_img64.gif
gif/multidimfit_img65.gif
gif/multidimfit_img66.gif
gif/multidimfit_img67.gif
gif/multidimfit_img68.gif
gif/multidimfit_img69.gif
gif/multidimfit_img7.gif
gif/multidimfit_img70.gif
gif/multidimfit_img71.gif
gif/multidimfit_img72.gif
gif/multidimfit_img73.gif
gif/multidimfit_img74.gif
gif/multidimfit_img75.gif
gif/multidimfit_img76.gif
gif/multidimfit_img77.gif
gif/multidimfit_img78.gif
gif/multidimfit_img79.gif
gif/multidimfit_img8.gif
gif/multidimfit_img80.gif
gif/multidimfit_img81.gif
gif/multidimfit_img82.gif
gif/multidimfit_img83.gif
gif/multidimfit_img84.gif
gif/multidimfit_img85.gif
gif/multidimfit_img86.gif
gif/multidimfit_img87.gif
gif/multidimfit_img88.gif
gif/multidimfit_img89.gif
gif/multidimfit_img9.gif
gif/multidimfit_img90.gif
gif/multidimfit_img91.gif
gif/multidimfit_img92.gif
gif/multidimfit_img93.gif
gif/multidimfit_img94.gif
gif/multidimfit_img95.gif
gif/multidimfit_img96.gif
gif/multidimfit_img97.gif
gif/multidimfit_img98.gif
gif/multidimfit_img99.gif
gif/mxpack_At.gif
gif/mxpack_mxmad.gif
gif/mxpack_mxmad1.gif
gif/mxpack_mxmad2.gif
gif/mxpack_mxmad3.gif
gif/mxpack_mxmlrt.gif
gif/mxpack_mxmltr.gif
gif/mxpack_mxmpy.gif
gif/mxpack_mxmpy1.gif
gif/mxpack_mxmpy2.gif
gif/mxpack_mxmpy3.gif
gif/mxpack_mxmub.gif
gif/mxpack_mxmub1.gif
gif/mxpack_mxmub2.gif
gif/mxpack_mxmub3.gif
gif/na49.gif
gif/para.gif
gif/para_ed.jpg
gif/para_pic.gif
gif/pave.gif
gif/pavelabel.gif
gif/pavestext.gif
gif/pcon.gif
gif/pcon_ed.jpg
gif/pcon_pic.gif
gif/pgon.gif
gif/pgon_ed.jpg
gif/pgon_pic.gif
gif/piechart.gif
gif/polytype.gif
gif/principal_eigen.gif
gif/principal_img1.gif
gif/principal_img10.gif
gif/principal_img11.gif
gif/principal_img12.gif
gif/principal_img13.gif
gif/principal_img14.gif
gif/principal_img15.gif
gif/principal_img16.gif
gif/principal_img17.gif
gif/principal_img18.gif
gif/principal_img19.gif
gif/principal_img2.gif
gif/principal_img20.gif
gif/principal_img21.gif
gif/principal_img22.gif
gif/principal_img23.gif
gif/principal_img24.gif
gif/principal_img25.gif
gif/principal_img26.gif
gif/principal_img27.gif
gif/principal_img28.gif
gif/principal_img29.gif
gif/principal_img3.gif
gif/principal_img30.gif
gif/principal_img31.gif
gif/principal_img32.gif
gif/principal_img33.gif
gif/principal_img34.gif
gif/principal_img35.gif
gif/principal_img36.gif
gif/principal_img37.gif
gif/principal_img38.gif
gif/principal_img39.gif
gif/principal_img4.gif
gif/principal_img40.gif
gif/principal_img5.gif
gif/principal_img52.gif
gif/principal_img53.gif
gif/principal_img54.gif
gif/principal_img55.gif
gif/principal_img56.gif
gif/principal_img6.gif
gif/principal_img7.gif
gif/principal_img8.gif
gif/principal_img9.gif
gif/profile.gif
gif/qqnormal.gif
gif/qqplots.gif
gif/sPlot_img1.png
gif/sPlot_img13.png
gif/sPlot_img14.png
gif/sPlot_img15.png
gif/sPlot_img16.png
gif/sPlot_img18.png
gif/sPlot_img19.png
gif/sPlot_img2.png
gif/sPlot_img20.png
gif/sPlot_img21.png
gif/sPlot_img22.png
gif/sPlot_img23.png
gif/sPlot_img24.png
gif/sPlot_img25.png
gif/sPlot_img26.png
gif/sPlot_img27.png
gif/sPlot_img28.png
gif/sPlot_img29.png
gif/sPlot_img3.png
gif/sPlot_img33.png
gif/sPlot_img34.png
gif/sPlot_img35.png
gif/sPlot_img36.png
gif/sPlot_img4.png
gif/sPlot_img5.png
gif/sPlot_img6.png
gif/sPlot_img7.png
gif/sPlot_img8.png
gif/sPlot_img9.png
gif/shapes.gif
gif/spectrum2fit_awmi_image001.gif
gif/spectrum2fit_awmi_image002.jpg
gif/spectrum2fit_awmi_image003.jpg
gif/spectrum2fit_awmi_image004.jpg
gif/spectrum2fit_awmi_image005.jpg
gif/spectrum2fit_constructor_image001.gif
gif/spectrum2fit_stiefel_image001.jpg
gif/spectrum2fit_stiefel_image002.jpg
gif/spectrum2transform_enhance_image001.jpg
gif/spectrum2transform_enhance_image002.jpg
gif/spectrum2transform_filter_image001.jpg
gif/spectrum2transform_filter_image002.jpg
gif/spectrum2transform_transform_image001.gif
gif/spectrum2transform_transform_image002.jpg
gif/spectrum2transform_transform_image003.jpg
gif/spectrum3_background_image007.jpg
gif/spectrum3_deconvolution_image001.gif
gif/spectrum3_deconvolution_image002.gif
gif/spectrum3_deconvolution_image003.jpg
gif/spectrum3_deconvolution_image004.jpg
gif/spectrum3_deconvolution_image005.jpg
gif/spectrum3_deconvolution_image006.jpg
gif/spectrum3_searching_image001.jpg
gif/spectrum3_searching_image002.gif
gif/spectrum3_searching_image003.jpg
gif/spectrumfit_awni_image001.gif
gif/spectrumfit_awni_image002.jpg
gif/spectrumfit_constructor_image001.gif
gif/spectrumfit_stiefel_image001.jpg
gif/spectrumpainter.gif
gif/spectrumpainter001.jpg
gif/spectrumpainter002.jpg
gif/spectrumpainter003.jpg
gif/spectrumpainter004.jpg
gif/spectrumpainter005.jpg
gif/spectrumpainter006.jpg
gif/spectrumpainter007.jpg
gif/spectrumpainter008.jpg
gif/spectrumpainter009.jpg
gif/spectrumpainter010.jpg
gif/spectrumpainter011.jpg
gif/spectrumpainter012.jpg
gif/spectrumpainter013.jpg
gif/spectrumpainter014.jpg
gif/spectrumpainter015.jpg
gif/spectrumpainter016.jpg
gif/spectrumpainter017.jpg
gif/spectrumpainter018.jpg
gif/spectrumpainter019.jpg
gif/spectrumpainter020.jpg
gif/spectrumpainter021.jpg
gif/spectrumpainter022.jpg
gif/spectrumpainter023.jpg
gif/spectrumpainter024.jpg
gif/spectrumpainter025.jpg
gif/spectrumpainter026.jpg
gif/spectrumpainter027.jpg
gif/spectrumpainter028.jpg
gif/spectrumpainter029.jpg
gif/spectrumpainter030.jpg
gif/spectrumpainter031.jpg
gif/spectrumpainter032.jpg
gif/spectrumpainter033.jpg
gif/spectrumpainter034.jpg
gif/spectrumpainter035.jpg
gif/spectrumpainter036.jpg
gif/spectrumpainter037.jpg
gif/spectrumpainter038.jpg
gif/spectrumpainter039.jpg
gif/spectrumpainter040.jpg
gif/spectrumpainter041.jpg
gif/spectrumtransform_enhance_image001.jpg
gif/spectrumtransform_filter_image001.jpg
gif/spectrumtransform_transform_image001.gif
gif/spectrumtransform_transform_image002.jpg
gif/spectrumtransform_transform_image003.jpg
gif/speedometer.gif
gif/sphe.gif
gif/sphe_ed.jpg
gif/sphe_pic.gif
gif/t_arb8.gif
gif/t_booltree.jpg
gif/t_box.gif
gif/t_boxdivX.gif
gif/t_boxdivstepZ.gif
gif/t_browser.jpg
gif/t_checker.jpg
gif/t_checkpoint.jpg
gif/t_cone.gif
gif/t_conedivPHI.gif
gif/t_conedivR.gif
gif/t_conedivZ.gif
gif/t_coneseg.gif
gif/t_conesegdivstepZ.gif
gif/t_ctorus.gif
gif/t_ctub.gif
gif/t_eltu.gif
gif/t_example.jpg
gif/t_finder.jpg
gif/t_frame0.jpg
gif/t_frame1.jpg
gif/t_frameexp.jpg
gif/t_graf.jpg
gif/t_gtra.gif
gif/t_gtradivstepZ.gif
gif/t_material.jpg
gif/t_mgr.jpg
gif/t_node.jpg
gif/t_para.gif
gif/t_paradivX.gif
gif/t_paradivY.gif
gif/t_paradivZ.gif
gif/t_pcon.gif
gif/t_pcondivPHI.gif
gif/t_pcondivstepPHI.gif
gif/t_pcondivstepZ.gif
gif/t_pgon.gif
gif/t_pgondivZ.gif
gif/t_random1.jpg
gif/t_random2.jpg
gif/t_root.jpg
gif/t_shape.jpg
gif/t_sphere.gif
gif/t_transf.jpg
gif/t_trap.gif
gif/t_trapdivZ.gif
gif/t_trd1.gif
gif/t_trd1divY.gif
gif/t_trd1divZ.gif
gif/t_trd1divstepZ.gif
gif/t_trd2.gif
gif/t_trd2divZ.gif
gif/t_trd2divstepZ.gif
gif/t_tube.gif
gif/t_tubedivPHI.gif
gif/t_tubedivR.gif
gif/t_tubedivZ.gif
gif/t_tubedivstepPHI.gif
gif/t_tubedivstepR.gif
gif/t_tubedivstepZ.gif
gif/t_tubseg.gif
gif/t_tubsegdivPHI.gif
gif/t_tubsegdivZ.gif
gif/t_tubsegdivstepR.gif
gif/t_volume.jpg
gif/t_voxelfind.jpg
gif/t_voxtree.jpg
gif/tasks.gif
gif/tcollection_classtree.gif
gif/tdictionary_classtree.gif
gif/tdirectory_classtree.gif
gif/tformula_classtree.gif
gif/tgcompositeframe_classtree.gif
gif/th1_classtree.gif
gif/tmva_chi2.gif
gif/tmva_discpower.gif
gif/tmva_fisherC.gif
gif/tmva_fisherD.gif
gif/tmva_lik.gif
gif/tmva_likratio.gif
gif/tmva_likratio_trans.gif
gif/tmva_mahaC.gif
gif/tmva_mlp.gif
gif/tmva_sqm.gif
gif/tobject_classtree.gif
gif/torus_ed.jpg
gif/torus_pic.gif
gif/tpad_classtree.gif
gif/trap.gif
gif/trap_ed.jpg
gif/trap_pic.gif
gif/trd1.gif
gif/trd1_ed.jpg
gif/trd1_pic.gif
gif/trd2.gif
gif/trd2_ed.jpg
gif/trd2_pic.gif
gif/tree_friend1.gif
gif/tree_friend2.gif
gif/tree_layout.gif
gif/tshape_classtree.gif
gif/tube.gif
gif/tube_ed.jpg
gif/tube_pic.gif
gif/tubs.gif
gif/tubs_ed.jpg
gif/tubs_pic.gif
gif/userlinestyle.gif
gif/wbox.gif
gif/xtru.gif
gif/xyslider.gif
"

mkdir -p $dst

for f in $img; do
   cp $src$f $dst/
done

exit 0
