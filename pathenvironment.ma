//Maya ASCII 2014 scene
//Name: pathenvironment.ma
//Last modified: Wed, Jun 25, 2014 11:15:39 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.9 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -128.73687132027231 91.524337595215755 -178.08875447894707 ;
	setAttr ".r" -type "double3" -28.521846657266639 220.99999999999827 0 ;
	setAttr ".rp" -type "double3" -2.7935383076216873e-015 9.5077376487345194e-015 0 ;
	setAttr ".rpt" -type "double3" -2.1555583202435408e-013 -9.4923410950144217e-015 
		-3.4864284424428676e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 253.65949342805979;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 27 22 -27 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4684425534327161 104.14754379994919 22.045609115396488 ;
	setAttr ".r" -type "double3" -89.999999999999986 -0.00088826111218194505 -2.9118847795218503e-019 ;
	setAttr ".rp" -type "double3" 0 -7.1054273576010019e-015 0 ;
	setAttr ".rpt" -type "double3" 6.6882939056622185e-015 9.225549834793807e-015 1.1706250357410273e-014 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 64.951905283832915;
	setAttr ".ow" 548.91213733711277;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 37.500000000000014 32.5 -37.500000000000007 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27 22 51.810192953863265 ;
	setAttr ".rpt" -type "double3" 4.1349458382482711e-016 -2.1346891639642668e-025 
		-1.5459862606609554e-015 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 64.9519052838329;
	setAttr ".ow" 262.30137450168104;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 37.499999999999986 32.5 -40 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 103.89921983323688 -4.3178485997198077 5.3610253655288833 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.8696978702304253e-014 0 1.7998456437744886e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 64.951905283832915;
	setAttr ".ow" 401.29688385688746;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 37.499999999999986 32.5 -37.500000000000014 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "rootGRP";
createNode transform -n "pointsInnerGRP" -p "rootGRP";
createNode transform -n "pt_2" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 0 -20 ;
createNode locator -n "pt_2Shape" -p "pt_2";
	setAttr -k off ".v";
createNode transform -n "pt_3" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 20 0 ;
createNode locator -n "pt_Shape3" -p "pt_3";
	setAttr -k off ".v";
createNode transform -n "pt_4" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 20 0 ;
createNode locator -n "pt_Shape4" -p "pt_4";
	setAttr -k off ".v";
createNode transform -n "pt_5" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 0 0 ;
createNode locator -n "pt_Shape5" -p "pt_5";
	setAttr -k off ".v";
createNode transform -n "pt_6" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 -20 0 ;
createNode locator -n "pt_Shape6" -p "pt_6";
	setAttr -k off ".v";
createNode transform -n "pt_7" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 -20 0 ;
createNode locator -n "pt_Shape7" -p "pt_7";
	setAttr -k off ".v";
createNode transform -n "pt_8" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 -20 0 ;
createNode locator -n "pt_Shape8" -p "pt_8";
	setAttr -k off ".v";
createNode transform -n "pt_9" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 0 0 ;
createNode locator -n "pt_Shape9" -p "pt_9";
	setAttr -k off ".v";
createNode transform -n "pt_10" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 20 0 ;
createNode locator -n "pt_Shape10" -p "pt_10";
	setAttr -k off ".v";
createNode transform -n "pt_11" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 -20 -20 ;
createNode locator -n "pt_Shape11" -p "pt_11";
	setAttr -k off ".v";
createNode transform -n "pt_12" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 -20 20 ;
createNode locator -n "pt_Shape12" -p "pt_12";
	setAttr -k off ".v";
createNode transform -n "pt_13" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 0 20 ;
createNode locator -n "pt_Shape13" -p "pt_13";
	setAttr -k off ".v";
createNode transform -n "pt_14" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 20 20 ;
createNode locator -n "pt_Shape14" -p "pt_14";
	setAttr -k off ".v";
createNode transform -n "pt_15" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 20 -20 ;
createNode locator -n "pt_Shape15" -p "pt_15";
	setAttr -k off ".v";
createNode transform -n "pt_16" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 0 -20 ;
createNode locator -n "pt_Shape16" -p "pt_16";
	setAttr -k off ".v";
createNode transform -n "pt_17" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 0 20 ;
createNode locator -n "pt_Shape17" -p "pt_17";
	setAttr -k off ".v";
createNode transform -n "pt_18" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 0 20 ;
createNode locator -n "pt_Shape18" -p "pt_18";
	setAttr -k off ".v";
createNode transform -n "pt_19" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 0 -20 ;
createNode locator -n "pt_Shape19" -p "pt_19";
	setAttr -k off ".v";
createNode transform -n "pt_20" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 40 0 0 ;
createNode locator -n "pt_Shape20" -p "pt_20";
	setAttr -k off ".v";
createNode transform -n "pt_21" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 0 -40 ;
createNode locator -n "pt_21Shape" -p "pt_21";
	setAttr -k off ".v";
createNode transform -n "pt_22" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -40 0 0 ;
createNode locator -n "pt_Shape22" -p "pt_22";
	setAttr -k off ".v";
createNode transform -n "pt_23" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 0 40 ;
createNode locator -n "pt_Shape23" -p "pt_23";
	setAttr -k off ".v";
createNode transform -n "pt_25" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 40 0 ;
createNode locator -n "pt_Shape25" -p "pt_25";
	setAttr -k off ".v";
createNode transform -n "pt_26" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 40 -20 ;
createNode locator -n "pt_Shape26" -p "pt_26";
	setAttr -k off ".v";
createNode transform -n "pt_27" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 40 20 ;
createNode locator -n "pt_Shape27" -p "pt_27";
	setAttr -k off ".v";
createNode transform -n "pt_28" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 40 0 ;
createNode locator -n "pt_Shape28" -p "pt_28";
	setAttr -k off ".v";
createNode transform -n "pt_29" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 40 0 ;
createNode locator -n "pt_Shape29" -p "pt_29";
	setAttr -k off ".v";
createNode transform -n "pt_30" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 -40 0 ;
createNode locator -n "pt_Shape30" -p "pt_30";
	setAttr -k off ".v";
createNode transform -n "pt_31" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 -40 -20 ;
createNode locator -n "pt_Shape31" -p "pt_31";
	setAttr -k off ".v";
createNode transform -n "pt_32" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 0 -40 20 ;
createNode locator -n "pt_Shape32" -p "pt_32";
	setAttr -k off ".v";
createNode transform -n "pt_33" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 20 -40 0 ;
createNode locator -n "pt_Shape33" -p "pt_33";
	setAttr -k off ".v";
createNode transform -n "pt_34" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -20 -40 0 ;
createNode locator -n "pt_Shape34" -p "pt_34";
	setAttr -k off ".v";
createNode transform -n "pt_35" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" 40 0 0 ;
createNode locator -n "pt_Shape35" -p "pt_35";
	setAttr -k off ".v";
createNode transform -n "pt_36" -p "pointsInnerGRP";
	setAttr ".t" -type "double3" -40 0 0 ;
createNode locator -n "pt_Shape36" -p "pt_36";
	setAttr -k off ".v";
createNode transform -n "connectorsInnerGRP" -p "rootGRP";
createNode transform -n "locator1" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 20 -10 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode transform -n "locator2" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 20 10 ;
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
createNode transform -n "locator3" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 10 20 ;
createNode locator -n "locatorShape3" -p "locator3";
	setAttr -k off ".v";
createNode transform -n "locator4" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 10 -20 ;
createNode locator -n "locatorShape4" -p "locator4";
	setAttr -k off ".v";
createNode transform -n "locator5" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 -10 -20 ;
createNode locator -n "locatorShape5" -p "locator5";
	setAttr -k off ".v";
createNode transform -n "locator6" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 -10 20 ;
createNode locator -n "locatorShape6" -p "locator6";
	setAttr -k off ".v";
createNode transform -n "locator7" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 20 0 -10 ;
createNode locator -n "locatorShape7" -p "locator7";
	setAttr -k off ".v";
createNode transform -n "locator8" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 20 0 10 ;
createNode locator -n "locatorShape8" -p "locator8";
	setAttr -k off ".v";
createNode transform -n "locator9" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -20 0 -10 ;
createNode locator -n "locatorShape9" -p "locator9";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -20 0 10 ;
createNode locator -n "locatorShape10" -p "locator10";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 10 0 ;
createNode locator -n "locatorShape11" -p "locator11";
	setAttr -k off ".v";
createNode transform -n "locator12" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 0 -10 0 ;
createNode locator -n "locatorShape12" -p "locator12";
	setAttr -k off ".v";
createNode transform -n "locator13" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 20 10 0 ;
createNode locator -n "locatorShape13" -p "locator13";
	setAttr -k off ".v";
createNode transform -n "locator14" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 20 -10 0 ;
createNode locator -n "locatorShape14" -p "locator14";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -20 10 0 ;
createNode locator -n "locatorShape15" -p "locator15";
	setAttr -k off ".v";
createNode transform -n "locator16" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -20 -10 0 ;
createNode locator -n "locatorShape16" -p "locator16";
	setAttr -k off ".v";
createNode transform -n "locator17" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -10 0 -20 ;
createNode locator -n "locatorShape17" -p "locator17";
	setAttr -k off ".v";
createNode transform -n "locator18" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 10 0 -20 ;
createNode locator -n "locatorShape18" -p "locator18";
	setAttr -k off ".v";
createNode transform -n "locator19" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 10 0 20 ;
createNode locator -n "locatorShape19" -p "locator19";
	setAttr -k off ".v";
createNode transform -n "locator20" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -10 0 20 ;
createNode locator -n "locatorShape20" -p "locator20";
	setAttr -k off ".v";
createNode transform -n "locator21" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 10 -20 0 ;
createNode locator -n "locatorShape21" -p "locator21";
	setAttr -k off ".v";
createNode transform -n "locator22" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -10 -20 0 ;
createNode locator -n "locatorShape22" -p "locator22";
	setAttr -k off ".v";
createNode transform -n "locator23" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" -10 20 0 ;
createNode locator -n "locatorShape23" -p "locator23";
	setAttr -k off ".v";
createNode transform -n "locator24" -p "connectorsInnerGRP";
	setAttr ".t" -type "double3" 10 20 0 ;
createNode locator -n "locatorShape24" -p "locator24";
	setAttr -k off ".v";
createNode transform -n "environmentsGRP" -p "rootGRP";
createNode transform -n "environment_inner" -p "environmentsGRP";
createNode mesh -n "environment_innerShape" -p "environment_inner";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 56 "f[0]" "f[6:7]" "f[9]" "f[14:15]" "f[17]" "f[19]" "f[28:29]" "f[32]" "f[38:39]" "f[41]" "f[46:47]" "f[49]" "f[51]" "f[60:61]" "f[64]" "f[70:71]" "f[73]" "f[78:79]" "f[81]" "f[83]" "f[92:93]" "f[96]" "f[102:103]" "f[105]" "f[110:111]" "f[113]" "f[115]" "f[124:125]" "f[128]" "f[134:135]" "f[137]" "f[142:143]" "f[145]" "f[147]" "f[156:157]" "f[160]" "f[166:167]" "f[169]" "f[174:175]" "f[177]" "f[179]" "f[188:189]" "f[192]" "f[198:199]" "f[201]" "f[206:207]" "f[209]" "f[211]" "f[220:221]" "f[224]" "f[230:231]" "f[233]" "f[238:239]" "f[241]" "f[243]" "f[252:253]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 56 "f[1:5]" "f[8]" "f[10:13]" "f[16]" "f[18]" "f[20:27]" "f[30:31]" "f[33:37]" "f[40]" "f[42:45]" "f[48]" "f[50]" "f[52:59]" "f[62:63]" "f[65:69]" "f[72]" "f[74:77]" "f[80]" "f[82]" "f[84:91]" "f[94:95]" "f[97:101]" "f[104]" "f[106:109]" "f[112]" "f[114]" "f[116:123]" "f[126:127]" "f[129:133]" "f[136]" "f[138:141]" "f[144]" "f[146]" "f[148:155]" "f[158:159]" "f[161:165]" "f[168]" "f[170:173]" "f[176]" "f[178]" "f[180:187]" "f[190:191]" "f[193:197]" "f[200]" "f[202:205]" "f[208]" "f[210]" "f[212:219]" "f[222:223]" "f[225:229]" "f[232]" "f[234:237]" "f[240]" "f[242]" "f[244:251]" "f[254:255]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 72 "f[3]" "f[5]" "f[10]" "f[12:13]" "f[16]" "f[18]" "f[22:23]" "f[25]" "f[27]" "f[35]" "f[37]" "f[42]" "f[44:45]" "f[48]" "f[50]" "f[54:55]" "f[57]" "f[59]" "f[67]" "f[69]" "f[74]" "f[76:77]" "f[80]" "f[82]" "f[86:87]" "f[89]" "f[91]" "f[99]" "f[101]" "f[106]" "f[108:109]" "f[112]" "f[114]" "f[118:119]" "f[121]" "f[123]" "f[131]" "f[133]" "f[138]" "f[140:141]" "f[144]" "f[146]" "f[150:151]" "f[153]" "f[155]" "f[163]" "f[165]" "f[170]" "f[172:173]" "f[176]" "f[178]" "f[182:183]" "f[185]" "f[187]" "f[195]" "f[197]" "f[202]" "f[204:205]" "f[208]" "f[210]" "f[214:215]" "f[217]" "f[219]" "f[227]" "f[229]" "f[234]" "f[236:237]" "f[240]" "f[242]" "f[246:247]" "f[249]" "f[251]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 64 "f[1:2]" "f[4]" "f[8]" "f[11]" "f[20:21]" "f[24]" "f[26]" "f[30:31]" "f[33:34]" "f[36]" "f[40]" "f[43]" "f[52:53]" "f[56]" "f[58]" "f[62:63]" "f[65:66]" "f[68]" "f[72]" "f[75]" "f[84:85]" "f[88]" "f[90]" "f[94:95]" "f[97:98]" "f[100]" "f[104]" "f[107]" "f[116:117]" "f[120]" "f[122]" "f[126:127]" "f[129:130]" "f[132]" "f[136]" "f[139]" "f[148:149]" "f[152]" "f[154]" "f[158:159]" "f[161:162]" "f[164]" "f[168]" "f[171]" "f[180:181]" "f[184]" "f[186]" "f[190:191]" "f[193:194]" "f[196]" "f[200]" "f[203]" "f[212:213]" "f[216]" "f[218]" "f[222:223]" "f[225:226]" "f[228]" "f[232]" "f[235]" "f[244:245]" "f[248]" "f[250]" "f[254:255]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1024 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.24999988 -2.9802322e-008
		 0.74999988 -5.9604645e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.99999988
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.74999988 0
		 0.24999988 0 0.74999988 0.99999988 0.24999988 0.99999988 0.99999988 -2.9802322e-008
		 -5.9604645e-008 -2.9802322e-008 0.99999976 5.9604645e-008 0.99999988 0.99999976 0
		 0.99999976 0.74999988 -2.9802322e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988
		 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.74999988 0 0.99999976
		 0.99999988 -2.9802322e-008 -5.9604645e-008 -1.1920929e-007 0.99999976 -1.1920929e-007
		 -8.9406967e-008 0.25 -5.9604645e-008 0.24999994 0.99999988 0.74999988 0.99999988
		 0.24999994 0.99999988 0.24999994 -2.9802322e-008 0.75 -2.9802322e-008 0.74999988
		 0.99999976 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988
		 0.24999988 0.99999988 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.74999988
		 -2.9802322e-008 0.74999988 0.99999988 0.74999988 0.99999988 0.24999988 -1.1920929e-007
		 0.74999988 -1.1920929e-007 0.75 0.99999976 0.24999994 0.99999976 0.74999988 0.99999988
		 0.24999988 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008 0.24999988 -5.9604645e-008
		 0.74999988 -2.9802322e-008 0.24999994 0.99999988 0.25 -5.9604645e-008 0.24999994
		 0.99999988 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988
		 0.74999988 0.99999976 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008 0.24999994
		 0.99999988 0.24999994 -2.9802322e-008 0.74999988 0.99999988 0.74999988 0 0.24999994
		 0 0.74999988 0.99999988 0.74999988 0 0.24999994 0 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 0 0.24999994 0.99999988 0.74999988 0.99999988 0.24999994 0
		 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0 0.24999994 0.99999988
		 0.74999976 0.99999988 0.24999976 0.99999988 0.24999988 -2.9802322e-008 0.74999976
		 0.99999988 0.24999976 0.99999988 0.99999988 0.99999976 -2.9802322e-008 0.99999976
		 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.74999988 0.99999976
		 0.24999988 0.99999976 0.24999982 0.99999988 0.24999982 -2.9802322e-008 0.75 -2.9802322e-008
		 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.99999988 0.99999988
		 -2.9802322e-008 0.99999988 -2.9802322e-008 -2.9802322e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 0.74999988 0 0.24999994 0 0 -5.9604645e-008 0.99999988
		 -5.9604645e-008 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008
		 0.74999988 0.99999988 0.24999988 0.99999988 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 -2.9802322e-008 0.99999976 0.99999976 -5.9604645e-008 0.74999988 0.99999988
		 0.24999994 0.99999976 0.24999976 -2.9802322e-008 0.74999976 0 0.74999988 0.99999988
		 0.74999988 0 0.75 -2.9802322e-008 0.74999976 0.99999988 0.24999976 0.99999988 0.24999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 0.99999988 0.74999988 0.99999988
		 0.24999988 -2.9802322e-008 0.74999988 -5.9604645e-008 0.74999988 0.99999988 0.24999994
		 0.99999988 0.99999988 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0.74999988 0 0.24999988 0 0.24999988 0.99999988 0.74999988 0.99999988 0.99999988
		 -2.9802322e-008 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008
		 -2.9802322e-008 0.99999988 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008
		 -5.9604645e-008 -2.9802322e-008 0.99999976 5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007
		 0.99999988 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 -2.9802322e-008 0.99999976 0.99999976 0.99999988 -1.1920929e-007 0.99999976
		 -1.1920929e-007 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.74999988 0.99999976 0.24999994 0.99999976
		 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994
		 0.99999988 0.24999994 -2.9802322e-008 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 -5.9604645e-008 0.74999988
		 -5.9604645e-008 0.74999988 0.99999976 0.24999988 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0.99999988 0.74999988 0
		 0.24999994 0 0.24999994 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0.99999988
		 0.24999982 0.99999988 0.24999982 -2.9802322e-008 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999988 -1.1920929e-007
		 0.74999988 -1.1920929e-007 0.75 0.99999976 0.24999994 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.24999988 -2.9802322e-008 0.74999988
		 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988 0.74999988 0.99999976
		 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.24999988
		 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.24999988
		 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988
		 0.24999988 -5.9604645e-008 0.74999988 -2.9802322e-008 0.74999976 0.99999988 0.24999976
		 0.99999988 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 -2.9802322e-008
		 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008
		 0.75 -2.9802322e-008 0.74999976 0.99999988 0.24999976 0.99999988 0.24999988 -2.9802322e-008
		 0.74999988 0 0.74999976 0.99999988 0.24999976 0.99999988 0.24999976 -2.9802322e-008
		 0.74999976 0 0.24999994 0.99999988 0.74999988 0.99999988;
	setAttr ".uvst[0].uvsp[250:499]" 0.74999988 0 0.24999994 0 0.24999994 0.99999988
		 0.74999988 0.99999988 0.74999988 0 0.24999994 0 0.24999988 -2.9802322e-008 0.74999988
		 -5.9604645e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.99999988 0.99999976
		 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.74999988 0 0.24999988
		 0 0.24999988 0.99999988 0.74999988 0.99999988 0.99999988 -2.9802322e-008 0.99999988
		 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008 -2.9802322e-008 0.99999988
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 -5.9604645e-008
		 -2.9802322e-008 0.99999976 5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988
		 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 0.99999976 0.99999988 -1.1920929e-007 0.99999976 -1.1920929e-007
		 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.25 -5.9604645e-008
		 0.75 -2.9802322e-008 0.74999988 0.99999976 0.24999994 0.99999976 -2.9802322e-008
		 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 -2.9802322e-008 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 -5.9604645e-008 0.74999988
		 -5.9604645e-008 0.74999988 0.99999976 0.24999988 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0.99999988 0.74999988 0
		 0.24999994 0 0.24999994 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0.99999988
		 0.24999982 0.99999988 0.24999982 -2.9802322e-008 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999988 -1.1920929e-007
		 0.74999988 -1.1920929e-007 0.75 0.99999976 0.24999994 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.24999988 -2.9802322e-008 0.74999988
		 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988 0.74999988 0.99999976
		 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.24999988
		 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.24999988
		 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988
		 0.24999988 -5.9604645e-008 0.74999988 -2.9802322e-008 0.74999976 0.99999988 0.24999976
		 0.99999988 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 -2.9802322e-008
		 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008
		 0.75 -2.9802322e-008 0.74999976 0.99999988 0.24999976 0.99999988 0.24999988 -2.9802322e-008
		 0.74999988 0 0.74999976 0.99999988 0.24999976 0.99999988 0.24999976 -2.9802322e-008
		 0.74999976 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0 0.24999994 0 0.24999988
		 -2.9802322e-008 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 -5.9604645e-008
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 0.74999988
		 0 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 0 0.99999988 -2.9802322e-008
		 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008 0.99999988 0.99999988 0.99999988
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 -5.9604645e-008
		 -2.9802322e-008 -1.1920929e-007 0.99999988 0.99999976 0.99999988 0.99999976 5.9604645e-008
		 -2.9802322e-008 -5.9604645e-008 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 0.99999976 0.99999988 0.99999976 -5.9604645e-008 -1.1920929e-007
		 -8.9406967e-008 -1.1920929e-007 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008
		 -2.9802322e-008 -5.9604645e-008 -2.9802322e-008 0.99999976 0.25 -5.9604645e-008 0.24999994
		 0.99999976 0.74999988 0.99999976 0.75 -2.9802322e-008 -2.9802322e-008 -5.9604645e-008
		 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0.74999988
		 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0.99999988 0.74999988 0.99999988
		 0.24999988 -2.9802322e-008 0.24999988 0.99999988 0.74999988 0.99999988 0.74999988
		 -2.9802322e-008 0.24999988 -5.9604645e-008 0.24999988 0.99999976 0.74999988 0.99999976
		 0.74999988 -5.9604645e-008 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 0 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 0 0.74999988
		 0 0.74999988 -2.9802322e-008 0.24999982 -2.9802322e-008 0.24999982 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.24999994 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 -1.1920929e-007 0.24999994 0.99999976 0.75 0.99999976
		 0.74999988 -1.1920929e-007 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 0 0.24999988 -2.9802322e-008 0.24999988 0.99999988 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 0.74999988 0.99999976 0.74999988 -5.9604645e-008 0.24999988
		 -5.9604645e-008 0.24999988 0.99999976 0.24999988 0.99999988 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 0.24999988 0 0.74999988 0.99999988 0.75 -2.9802322e-008
		 0.25 -5.9604645e-008 0.24999994 0.99999988 0.24999988 -2.9802322e-008 0.24999988
		 0.99999988 0.74999988 0.99999988 0.74999988 -2.9802322e-008 0.24999988 -5.9604645e-008
		 0.24999976 0.99999988 0.74999976 0.99999988 0.74999988 -2.9802322e-008 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0.99999988
		 0.74999988 0.99999988 0.75 -2.9802322e-008 0.25 -5.9604645e-008 0.24999994 0.99999988
		 0.74999976 0.99999988 0.74999988 0 0.24999988 -2.9802322e-008 0.24999976 0.99999988;
	setAttr ".uvst[0].uvsp[500:749]" 0.74999976 0.99999988 0.74999976 0 0.24999976
		 -2.9802322e-008 0.24999976 0.99999988 0.24999994 0.99999988 0.24999994 0 0.74999988
		 0 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 0 0.74999988 0 0.74999988
		 0.99999988 0.24999988 -2.9802322e-008 0.74999988 -5.9604645e-008 0.74999988 0.99999988
		 0.24999994 0.99999988 0.99999988 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988
		 -5.9604645e-008 0.74999988 0 0.24999988 0 0.24999988 0.99999988 0.74999988 0.99999988
		 0.99999988 -2.9802322e-008 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008
		 -2.9802322e-008 0.99999988 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008
		 -5.9604645e-008 -2.9802322e-008 0.99999976 5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007
		 0.99999988 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 -2.9802322e-008 0.99999976 0.99999976 0.99999988 -1.1920929e-007 0.99999976
		 -1.1920929e-007 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.74999988 0.99999976 0.24999994 0.99999976
		 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994
		 0.99999988 0.24999994 -2.9802322e-008 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 -5.9604645e-008 0.74999988
		 -5.9604645e-008 0.74999988 0.99999976 0.24999988 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0.99999988 0.74999988 0
		 0.24999994 0 0.24999994 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0.99999988
		 0.24999982 0.99999988 0.24999982 -2.9802322e-008 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999988 -1.1920929e-007
		 0.74999988 -1.1920929e-007 0.75 0.99999976 0.24999994 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.24999988 -2.9802322e-008 0.74999988
		 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988 0.74999988 0.99999976
		 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.24999988
		 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.24999988
		 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988
		 0.24999988 -5.9604645e-008 0.74999988 -2.9802322e-008 0.74999976 0.99999988 0.24999976
		 0.99999988 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 -2.9802322e-008
		 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008
		 0.75 -2.9802322e-008 0.74999976 0.99999988 0.24999976 0.99999988 0.24999988 -2.9802322e-008
		 0.74999988 0 0.74999976 0.99999988 0.24999976 0.99999988 0.24999976 -2.9802322e-008
		 0.74999976 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0 0.24999994 0 0.24999988
		 -2.9802322e-008 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 -5.9604645e-008
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 0.74999988
		 0 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 0 0.99999988 -2.9802322e-008
		 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008 0.99999988 0.99999988 0.99999988
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 -5.9604645e-008
		 -2.9802322e-008 -1.1920929e-007 0.99999988 0.99999976 0.99999988 0.99999976 5.9604645e-008
		 -2.9802322e-008 -5.9604645e-008 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 0.99999976 0.99999988 0.99999976 -5.9604645e-008 -1.1920929e-007
		 -8.9406967e-008 -1.1920929e-007 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008
		 -2.9802322e-008 -5.9604645e-008 -2.9802322e-008 0.99999976 0.25 -5.9604645e-008 0.24999994
		 0.99999976 0.74999988 0.99999976 0.75 -2.9802322e-008 -2.9802322e-008 -5.9604645e-008
		 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0.74999988
		 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0.99999988 0.74999988 0.99999988
		 0.24999988 -2.9802322e-008 0.24999988 0.99999988 0.74999988 0.99999988 0.74999988
		 -2.9802322e-008 0.24999988 -5.9604645e-008 0.24999988 0.99999976 0.74999988 0.99999976
		 0.74999988 -5.9604645e-008 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 0 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 0 0.74999988
		 0 0.74999988 -2.9802322e-008 0.24999982 -2.9802322e-008 0.24999982 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.24999994 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 -1.1920929e-007 0.24999994 0.99999976 0.75 0.99999976
		 0.74999988 -1.1920929e-007 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 0 0.24999988 -2.9802322e-008 0.24999988 0.99999988 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 0.74999988 0.99999976 0.74999988 -5.9604645e-008 0.24999988
		 -5.9604645e-008 0.24999988 0.99999976 0.24999988 0.99999988 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 0.24999988 0 0.74999988 0.99999988 0.75 -2.9802322e-008
		 0.25 -5.9604645e-008 0.24999994 0.99999988 0.24999988 -2.9802322e-008 0.24999988
		 0.99999988 0.74999988 0.99999988 0.74999988 -2.9802322e-008 0.24999988 -5.9604645e-008
		 0.24999976 0.99999988 0.74999976 0.99999988 0.74999988 -2.9802322e-008 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0.99999988
		 0.74999988 0.99999988 0.75 -2.9802322e-008;
	setAttr ".uvst[0].uvsp[750:999]" 0.25 -5.9604645e-008 0.24999994 0.99999988
		 0.74999976 0.99999988 0.74999988 0 0.24999988 -2.9802322e-008 0.24999976 0.99999988
		 0.74999976 0.99999988 0.74999976 0 0.24999976 -2.9802322e-008 0.24999976 0.99999988
		 0.24999994 0.99999988 0.24999994 0 0.74999988 0 0.74999988 0.99999988 0.24999994
		 0.99999988 0.24999994 0 0.74999988 0 0.74999988 0.99999988 0.24999988 -2.9802322e-008
		 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 -5.9604645e-008 0.99999988
		 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 0.74999988 0
		 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 0 0.99999988 -2.9802322e-008
		 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008 0.99999988 0.99999988 0.99999988
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 -5.9604645e-008
		 -2.9802322e-008 -1.1920929e-007 0.99999988 0.99999976 0.99999988 0.99999976 5.9604645e-008
		 -2.9802322e-008 -5.9604645e-008 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 0.99999976 0.99999988 0.99999976 -5.9604645e-008 -1.1920929e-007
		 -8.9406967e-008 -1.1920929e-007 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008
		 -2.9802322e-008 -5.9604645e-008 -2.9802322e-008 0.99999976 0.25 -5.9604645e-008 0.24999994
		 0.99999976 0.74999988 0.99999976 0.75 -2.9802322e-008 -2.9802322e-008 -5.9604645e-008
		 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0.74999988
		 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0.99999988 0.74999988 0.99999988
		 0.24999988 -2.9802322e-008 0.24999988 0.99999988 0.74999988 0.99999988 0.74999988
		 -2.9802322e-008 0.24999988 -5.9604645e-008 0.24999988 0.99999976 0.74999988 0.99999976
		 0.74999988 -5.9604645e-008 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 0 0.74999988 0.99999988 0.24999994 0.99999988 0.24999994 0 0.74999988
		 0 0.74999988 -2.9802322e-008 0.24999982 -2.9802322e-008 0.24999982 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.24999994 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 -1.1920929e-007 0.24999994 0.99999976 0.75 0.99999976
		 0.74999988 -1.1920929e-007 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 0 0.24999988 -2.9802322e-008 0.24999988 0.99999988 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 0.74999988 0.99999976 0.74999988 -5.9604645e-008 0.24999988
		 -5.9604645e-008 0.24999988 0.99999976 0.24999988 0.99999988 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 0.24999988 0 0.74999988 0.99999988 0.75 -2.9802322e-008
		 0.25 -5.9604645e-008 0.24999994 0.99999988 0.24999988 -2.9802322e-008 0.24999988
		 0.99999988 0.74999988 0.99999988 0.74999988 -2.9802322e-008 0.24999988 -5.9604645e-008
		 0.24999976 0.99999988 0.74999976 0.99999988 0.74999988 -2.9802322e-008 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999994 0.99999988
		 0.74999988 0.99999988 0.75 -2.9802322e-008 0.25 -5.9604645e-008 0.24999994 0.99999988
		 0.74999976 0.99999988 0.74999988 0 0.24999988 -2.9802322e-008 0.24999976 0.99999988
		 0.74999976 0.99999988 0.74999976 0 0.24999976 -2.9802322e-008 0.24999976 0.99999988
		 0.24999994 0.99999988 0.24999994 0 0.74999988 0 0.74999988 0.99999988 0.24999994
		 0.99999988 0.24999994 0 0.74999988 0 0.74999988 0.99999988 0.24999988 -2.9802322e-008
		 0.74999988 -5.9604645e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.99999988
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.74999988 0
		 0.24999988 0 0.24999988 0.99999988 0.74999988 0.99999988 0.99999988 -2.9802322e-008
		 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008 -2.9802322e-008
		 0.99999988 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 -5.9604645e-008
		 -2.9802322e-008 0.99999976 5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988
		 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 0.99999976 0.99999988 -1.1920929e-007 0.99999976 -1.1920929e-007
		 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 -2.9802322e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.25 -5.9604645e-008
		 0.75 -2.9802322e-008 0.74999988 0.99999976 0.24999994 0.99999976 -2.9802322e-008
		 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 -2.9802322e-008 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008
		 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 -5.9604645e-008 0.74999988
		 -5.9604645e-008 0.74999988 0.99999976 0.24999988 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0.99999988 0.74999988 0
		 0.24999994 0 0.24999994 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0.99999988
		 0.24999982 0.99999988 0.24999982 -2.9802322e-008 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.24999994 -2.9802322e-008 0.24999988 -1.1920929e-007
		 0.74999988 -1.1920929e-007 0.75 0.99999976 0.24999994 0.99999976 0.74999988 0 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.24999988 -2.9802322e-008 0.74999988
		 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988 0.74999988 0.99999976
		 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.24999988
		 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.74999988
		 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.24999988
		 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999988 0.99999988
		 0.24999988 -5.9604645e-008 0.74999988 -2.9802322e-008 0.74999976 0.99999988 0.24999976
		 0.99999988;
	setAttr ".uvst[0].uvsp[1000:1023]" 0.74999988 0.99999988 0.24999994 0.99999988
		 0.24999994 -2.9802322e-008 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994
		 0.99999988 0.25 -5.9604645e-008 0.75 -2.9802322e-008 0.74999976 0.99999988 0.24999976
		 0.99999988 0.24999988 -2.9802322e-008 0.74999988 0 0.74999976 0.99999988 0.24999976
		 0.99999988 0.24999976 -2.9802322e-008 0.74999976 0 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 0 0.24999994 0 0.24999994 0.99999988 0.74999988 0.99999988
		 0.74999988 0 0.24999994 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 260 ".vt";
	setAttr ".vt[0:165]"  0 25 -5 0 5 -25 0 15 -25 0 25 -25 0 25 -15 0 5 -5 1.110223e-016 15 -5
		 2.220446e-016 15 -15 1.110223e-016 5 -15 15 5 3.0878078e-016 5 5 4.1980308e-016 15 15 1.9775848e-016
		 5 15 3.0878078e-016 5 25 4.1980308e-016 15 25 4.1980308e-016 25 25 4.1980308e-016
		 25 15 4.1980308e-016 25 5 4.1980308e-016 5 5 -5 15 5 -5 5 5 -25 5 5 -15 5 15 -15
		 5 15 -25 15 15 -5 25 5 -5 25 15 -5 5 25 -15 5 25 -25 25 25 -5 15 25 -5 15 5 -25 15 5 -15
		 25 5 -15 5 15 -5 5 25 -5 25 -1.7763568e-015 -15 25 -1.7763568e-015 -5 25 -1.7763568e-015 -25
		 25 5 -25 15 -1.7763568e-015 -25 5 -1.7763568e-015 -25 5 -1.6653345e-015 -15 5 -1.7763568e-015 -5
		 15 -1.5543122e-015 -15 15 -1.6653345e-015 -5 15 5 5 5 5 5 5 5 25 5 15 25 5 15 15
		 5 5 15 15 15 5 25 15 5 25 5 5 5 25 25 5 25 15 15 25 5 25 25 5 15 5 15 15 5 25 25 5 15
		 5 25 5 5 15 5 0 5 25 0 15 25 0 25 25 0 25 15 0 25 5 0 5 5 1.110223e-016 15 5 2.220446e-016 15 15
		 1.110223e-016 5 15 25 -1.7763568e-015 5 25 -1.7763568e-015 15 25 -1.7763568e-015 25
		 25 5 25 15 -1.7763568e-015 25 5 -1.7763568e-015 25 5 -1.7763568e-015 5 5 -1.6653345e-015 15
		 15 -1.5543122e-015 15 15 -1.6653345e-015 5 15 -5 3.0878078e-016 15 -5 -5 5 -5 -5
		 5 -5 4.1980308e-016 5 -5 -25 5 -15 -25 5 -15 -15 5 -5 -15 15 -15 1.9775848e-016 15 -15 -5
		 25 -15 -5 25 -5 -5 5 -25 -25 5 -25 -15 15 -25 -5 25 -25 -5 15 -5 -15 15 -5 -25 25 -5 -15
		 5 -25 -5 5 -15 -5 5 -15 3.0878078e-016 0 -5 -25 0 -15 -25 0 -25 -25 0 -25 -15 0 -25 -5
		 0 -5 -5 1.110223e-016 -15 -5 2.220446e-016 -15 -15 1.110223e-016 -5 -15 25 -5 -25
		 15 -25 4.1980308e-016 5 -25 4.1980308e-016 25 -25 4.1980308e-016 25 -15 4.1980308e-016
		 25 -5 4.1980308e-016 5 -5 5 15 -5 5 5 -5 25 5 -5 15 5 -15 15 5 -15 25 15 -15 5 25 -5 5
		 25 -15 5 5 -25 15 5 -25 25 25 -25 5 15 -25 5 15 -5 25 15 -5 15 25 -5 15 5 -15 5 5 -25 5
		 0 -15 25 0 -5 25 0 -25 25 0 -25 15 0 -25 5 0 -5 5 -9.7144515e-017 -15 5 1.3877788e-017 -15 15
		 1.110223e-016 -5 15 25 -5 25 -15 5 3.0878078e-016 -15 5 -5 -5 5 -5 -5 5 4.1980308e-016
		 -5 5 -25 -5 15 -25 -5 15 -15 -5 5 -15 -15 15 1.9775848e-016 -15 15 -5 -25 15 -5 -25 5 -5
		 -5 25 -25 -5 25 -15 -15 25 -5 -25 25 -5 -15 5 -15 -15 5 -25;
	setAttr ".vt[166:259]" -25 5 -15 -5 25 -5 -5 15 -5 -5 15 3.0878078e-016 -25 -1.7763568e-015 -5
		 -25 -1.7763568e-015 -15 -25 -1.7763568e-015 -25 -25 5 -25 -15 -1.7763568e-015 -25
		 -5 -1.7763568e-015 -25 -5 -1.7763568e-015 -5 -5 -1.6653345e-015 -15 -15 -1.5543122e-015 -15
		 -15 -1.6653345e-015 -5 -15 25 4.1980308e-016 -5 25 4.1980308e-016 -25 25 4.1980308e-016
		 -25 15 4.1980308e-016 -25 5 4.1980308e-016 -5 5 5 -15 5 5 -5 5 25 -5 5 15 -5 15 15
		 -5 15 25 -15 15 5 -25 5 5 -25 15 5 -5 25 15 -5 25 25 -25 25 5 -15 25 5 -15 5 25 -15 5 15
		 -25 5 15 -5 15 5 -5 25 5 -25 -1.7763568e-015 15 -25 -1.7763568e-015 5 -25 -1.7763568e-015 25
		 -25 5 25 -15 -1.7763568e-015 25 -5 -1.7763568e-015 25 -5 -1.6653345e-015 15 -5 -1.7763568e-015 5
		 -15 -1.5543122e-015 15 -15 -1.6653345e-015 5 -15 -5 3.0878078e-016 -5 -5 4.1980308e-016
		 -5 -5 -5 -15 -5 -5 -5 -5 -25 -5 -5 -15 -5 -15 -15 -5 -15 -25 -15 -15 1.9775848e-016
		 -15 -15 -5 -25 -5 -5 -25 -15 -5 -5 -25 -15 -5 -25 -25 -25 -25 -5 -15 -25 -5 -15 -5 -25
		 -15 -5 -15 -25 -5 -15 -5 -15 -5 -5 -25 -5 -5 -15 3.0878078e-016 -25 -5 -25 -15 -25 4.1980308e-016
		 -5 -25 4.1980308e-016 -25 -25 4.1980308e-016 -25 -15 4.1980308e-016 -25 -5 4.1980308e-016
		 -15 -5 5 -5 -5 5 -5 -5 25 -5 -15 25 -5 -15 15 -5 -5 15 -15 -15 5 -25 -15 5 -25 -5 5
		 -5 -25 25 -5 -25 15 -15 -25 5 -25 -25 5 -15 -5 15 -15 -5 25 -25 -5 15 -5 -25 5 -5 -15 5
		 -25 -5 25;
	setAttr -s 552 ".ed";
	setAttr ".ed[0:165]"  1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0 7 8 0 8 5 0 9 10 0
		 11 9 0 12 11 0 10 12 0 13 14 0 14 15 0 15 16 0 16 17 0 10 18 0 18 19 0 9 19 0 21 20 0
		 21 22 0 22 23 1 20 23 0 19 24 0 11 24 0 19 25 0 25 26 0 24 26 1 22 27 1 27 28 0 23 28 0
		 26 29 0 30 29 0 24 30 1 20 31 0 32 31 0 21 32 0 19 32 0 32 33 0 25 33 0 22 34 0 34 35 0
		 27 35 0 24 34 0 12 34 0 30 35 0 18 34 0 35 0 0 20 1 0 23 2 1 28 3 0 27 4 1 18 5 0
		 34 6 0 22 7 0 21 8 0 18 21 0 33 36 1 37 36 0 25 37 0 36 38 0 33 39 0 39 38 0 31 40 1
		 38 40 0 31 39 0 20 41 0 40 41 0 21 42 0 43 42 0 18 43 0 32 44 0 42 44 0 19 45 0 44 45 0
		 45 43 0 13 35 0 14 30 1 15 29 0 16 26 1 17 25 0 9 46 0 47 46 0 10 47 0 48 49 0 50 49 1
		 51 50 0 51 48 0 11 52 0 46 52 0 52 53 1 54 53 0 46 54 0 49 55 0 56 55 0 50 56 1 52 57 1
		 57 58 0 53 58 0 51 59 0 59 60 0 48 60 0 54 61 0 59 61 0 46 59 0 56 62 0 63 62 0 50 63 0
		 12 63 0 52 63 0 57 62 0 47 63 0 48 64 0 64 65 0 49 65 1 65 66 0 55 66 0 66 67 0 56 67 1
		 67 68 0 62 68 0 69 70 0 63 70 0 47 69 0 50 71 0 70 71 0 71 72 0 51 72 0 72 69 0 47 51 0
		 54 73 0 73 74 0 61 74 1 76 75 0 61 76 0 74 75 0 60 76 0 75 77 0 60 77 1 77 78 0 48 78 0
		 47 79 0 79 80 0 51 80 0 80 81 0 59 81 0 81 82 0 46 82 0 82 79 0 14 57 1 13 62 0 15 58 0
		 16 53 1 17 54 0 83 84 0 85 84 0 86 85 0 83 86 0 87 88 0 89 88 1 90 89 0 90 87 0 91 92 0
		 84 92 0 91 83 0 92 93 1;
	setAttr ".ed[166:331]" 94 93 0 84 94 0 88 95 0 96 95 0 89 96 1 92 97 1 97 98 0
		 93 98 0 90 99 0 99 100 0 87 100 0 94 101 0 99 101 0 84 99 0 96 102 0 103 102 0 89 103 0
		 104 103 0 92 103 0 104 91 0 97 102 0 85 103 0 86 104 0 87 105 0 105 106 0 88 106 1
		 106 107 0 95 107 0 107 108 0 96 108 1 108 109 0 102 109 0 110 111 0 103 111 0 85 110 0
		 89 112 0 111 112 0 112 113 0 90 113 0 113 110 0 85 90 0 94 37 0 101 36 1 114 38 0
		 101 114 0 100 114 0 100 40 1 87 41 0 85 43 0 90 42 0 99 44 0 84 45 0 115 97 1 116 102 0
		 116 115 0 117 98 0 115 117 0 118 93 1 117 118 0 119 94 0 118 119 0 86 120 0 120 121 0
		 83 121 0 123 122 0 123 124 0 124 125 1 122 125 0 121 126 0 91 126 0 121 127 0 127 128 0
		 126 128 1 124 129 1 129 130 0 125 130 0 128 131 0 132 131 0 126 132 1 122 133 0 134 133 0
		 123 134 0 121 134 0 134 135 0 127 135 0 124 136 0 136 137 0 129 137 0 126 136 0 104 136 0
		 132 137 0 120 136 0 125 138 1 139 138 0 122 139 0 130 140 0 138 140 0 129 141 1 140 141 0
		 137 142 0 141 142 0 120 143 0 136 144 0 143 144 0 144 145 0 124 145 0 123 146 0 145 146 0
		 120 123 0 146 143 0 135 74 1 127 73 0 135 147 0 147 75 0 133 77 1 133 147 0 122 78 0
		 123 80 0 120 79 0 134 81 0 121 82 0 116 137 0 115 132 1 117 131 0 118 128 1 119 127 0
		 148 149 0 150 149 0 151 150 0 148 151 0 152 153 0 154 153 1 155 154 0 155 152 0 156 157 0
		 149 157 0 156 148 0 157 158 1 159 158 0 149 159 0 153 160 0 161 160 0 154 161 1 157 162 1
		 162 163 0 158 163 0 155 164 0 164 165 0 152 165 0 159 166 0 164 166 0 149 164 0 161 167 0
		 168 167 0 154 168 0 169 168 0 157 168 0 169 156 0 162 167 0 150 168 0 151 169 0 152 1 0
		 153 2 1 160 3 0 161 4 1 167 0 0;
	setAttr ".ed[332:497]" 168 6 0 150 5 0 154 7 0 155 8 0 150 155 0 159 170 0
		 170 171 0 166 171 1 173 172 0 166 173 0 171 172 0 165 173 0 172 174 0 165 174 1 174 175 0
		 152 175 0 150 176 0 176 177 0 155 177 0 177 178 0 164 178 0 178 179 0 149 179 0 179 176 0
		 180 162 1 181 167 0 181 180 0 182 163 0 180 182 0 183 158 1 182 183 0 184 159 0 183 184 0
		 151 185 0 185 186 0 148 186 0 188 187 0 188 189 0 189 190 1 187 190 0 186 191 0 156 191 0
		 186 192 0 192 193 0 191 193 1 189 194 1 194 195 0 190 195 0 193 196 0 197 196 0 191 197 1
		 187 198 0 199 198 0 188 199 0 186 199 0 199 200 0 192 200 0 189 201 0 201 202 0 194 202 0
		 191 201 0 169 201 0 197 202 0 185 201 0 190 65 1 187 64 0 195 66 0 194 67 1 202 68 0
		 185 69 0 201 70 0 189 71 0 188 72 0 185 188 0 200 203 1 204 203 0 192 204 0 203 205 0
		 200 206 0 206 205 0 198 207 1 205 207 0 198 206 0 187 208 0 207 208 0 188 209 0 210 209 0
		 185 210 0 199 211 0 209 211 0 186 212 0 211 212 0 212 210 0 181 202 0 180 197 1 182 196 0
		 183 193 1 184 192 0 213 214 0 214 215 0 215 216 0 213 216 0 218 217 0 218 219 0 219 220 1
		 217 220 0 221 213 0 216 222 0 221 222 0 216 223 0 223 224 0 222 224 1 219 225 1 225 226 0
		 220 226 0 224 227 0 228 227 0 222 228 1 217 229 0 230 229 0 218 230 0 216 230 0 230 231 0
		 223 231 0 219 232 0 232 233 0 225 233 0 234 221 0 222 232 0 234 232 0 228 233 0 214 234 0
		 215 232 0 220 106 1 217 105 0 226 107 0 225 108 1 233 109 0 215 110 0 232 111 0 219 112 0
		 218 113 0 215 218 0 231 171 1 223 170 0 231 235 0 235 172 0 229 174 1 229 235 0 217 175 0
		 218 177 0 215 176 0 230 178 0 216 179 0 237 236 0 237 233 0 236 228 1 236 238 0 238 227 0
		 238 239 0 239 224 1 239 240 0 240 223 0 213 241 0 242 241 0 214 242 0;
	setAttr ".ed[498:551]" 243 244 0 245 244 1 246 245 0 246 243 0 221 247 0 241 247 0
		 247 248 1 249 248 0 241 249 0 244 250 0 251 250 0 245 251 1 247 252 1 252 253 0 248 253 0
		 246 254 0 254 255 0 243 255 0 249 256 0 254 256 0 241 254 0 251 257 0 258 257 0 245 258 0
		 234 258 0 247 258 0 252 257 0 242 258 0 243 139 0 244 138 1 250 140 0 251 141 1 257 142 0
		 258 144 0 242 143 0 245 145 0 246 146 0 242 246 0 249 204 0 256 203 1 259 205 0 256 259 0
		 255 259 0 255 207 1 243 208 0 242 210 0 246 209 0 254 211 0 241 212 0 236 252 1 237 257 0
		 238 253 0 239 248 1 240 249 0;
	setAttr -s 256 -ch 1024 ".fc[0:255]" -type "polyFaces" 
		f 4 18 -18 -17 -9
		mu 0 4 0 1 2 3
		f 4 22 -22 -21 19
		mu 0 4 4 5 6 7
		f 4 24 -24 -19 -10
		mu 0 4 8 9 11 119
		f 4 23 27 -27 -26
		mu 0 4 12 97 98 99
		f 4 30 -30 -29 21
		mu 0 4 15 16 104 105
		f 4 33 32 -32 -28
		mu 0 4 13 14 18 19
		f 4 36 35 -35 -20
		mu 0 4 24 111 112 113
		f 4 39 -39 -38 25
		mu 0 4 23 25 26 114
		f 4 42 -42 -41 28
		mu 0 4 85 86 87 88
		f 4 44 -44 -25 -11
		mu 0 4 27 32 33 116
		f 4 43 41 -46 -34
		mu 0 4 20 21 100 101
		f 4 46 -45 -12 16
		mu 0 4 17 29 30 31
		f 4 48 0 -50 -23
		mu 0 4 34 35 36 37
		f 4 49 1 -51 -31
		mu 0 4 38 39 89 90
		f 4 50 2 -52 29
		mu 0 4 65 66 126 127
		f 4 -43 51 3 -48
		mu 0 4 67 68 69 70
		f 4 4 -54 -47 52
		mu 0 4 40 41 91 92
		f 4 -55 40 53 5
		mu 0 4 28 71 76 77
		f 4 54 6 -56 20
		mu 0 4 43 44 45 46
		f 4 55 7 -53 56
		mu 0 4 22 78 79 115
		f 4 59 58 -58 -40
		mu 0 4 56 57 58 124
		f 4 -63 -62 57 60
		mu 0 4 59 106 107 108
		f 4 65 62 64 -64
		mu 0 4 48 94 95 96
		f 4 63 67 -67 34
		mu 0 4 47 49 50 121
		f 4 70 69 -69 -57
		mu 0 4 60 61 109 110
		f 4 68 72 -72 -37
		mu 0 4 51 52 122 123
		f 4 71 74 -74 37
		mu 0 4 10 62 63 125
		f 4 73 75 -71 17
		mu 0 4 42 53 54 93
		f 4 77 45 -77 12
		mu 0 4 80 81 82 120
		f 4 78 -33 -78 13
		mu 0 4 83 84 117 118
		f 4 79 31 -79 14
		mu 0 4 73 74 102 103
		f 4 80 26 -80 15
		mu 0 4 55 64 72 75
		f 4 8 83 82 -82
		mu 0 4 128 131 130 129
		f 4 -88 86 85 -85
		mu 0 4 132 135 134 133
		f 4 9 81 89 -89
		mu 0 4 136 139 138 137
		f 4 92 91 -91 -90
		mu 0 4 140 143 142 141
		f 4 -86 95 94 -94
		mu 0 4 144 147 146 145
		f 4 90 98 -98 -97
		mu 0 4 148 151 150 149
		f 4 87 101 -101 -100
		mu 0 4 152 155 154 153
		f 4 -93 104 103 -103
		mu 0 4 156 159 158 157
		f 4 -96 107 106 -106
		mu 0 4 160 163 162 161
		f 4 10 88 109 -109
		mu 0 4 164 167 166 165
		f 4 96 110 -107 -110
		mu 0 4 168 171 170 169
		f 4 -84 11 108 -112
		mu 0 4 172 175 174 173
		f 4 84 114 -114 -113
		mu 0 4 176 179 178 177
		f 4 93 116 -116 -115
		mu 0 4 180 183 182 181
		f 4 -95 118 -118 -117
		mu 0 4 184 187 186 185
		f 4 120 -120 -119 105
		mu 0 4 188 191 190 189
		f 4 -124 111 122 -122
		mu 0 4 192 195 194 193
		f 4 -126 -123 -108 124
		mu 0 4 196 199 198 197
		f 4 -87 127 -127 -125
		mu 0 4 200 203 202 201
		f 4 -130 123 -129 -128
		mu 0 4 204 207 206 205
		f 4 102 132 -132 -131
		mu 0 4 208 211 210 209
		f 4 -136 -133 134 133
		mu 0 4 212 215 214 213
		f 4 138 -138 -134 -137
		mu 0 4 216 219 218 217
		f 4 -102 140 -140 -139
		mu 0 4 220 223 222 221
		f 4 129 143 -143 -142
		mu 0 4 224 227 226 225
		f 4 99 145 -145 -144
		mu 0 4 228 231 230 229
		f 4 -105 147 -147 -146
		mu 0 4 232 235 234 233
		f 4 -83 141 -149 -148
		mu 0 4 236 239 238 237
		f 4 -13 150 -111 -150
		mu 0 4 240 243 242 241
		f 4 -14 149 97 -152
		mu 0 4 244 247 246 245
		f 4 -15 151 -99 -153
		mu 0 4 248 251 250 249
		f 4 -16 152 -92 -154
		mu 0 4 252 255 254 253
		f 4 157 156 155 -155
		mu 0 4 256 259 258 257
		f 4 -162 160 159 -159
		mu 0 4 260 263 262 261
		f 4 164 154 163 -163
		mu 0 4 264 267 266 265
		f 4 167 166 -166 -164
		mu 0 4 268 271 270 269
		f 4 -160 170 169 -169
		mu 0 4 272 275 274 273
		f 4 165 173 -173 -172
		mu 0 4 276 279 278 277
		f 4 161 176 -176 -175
		mu 0 4 280 283 282 281
		f 4 -168 179 178 -178
		mu 0 4 284 287 286 285
		f 4 -171 182 181 -181
		mu 0 4 288 291 290 289
		f 4 185 162 184 -184
		mu 0 4 292 295 294 293
		f 4 171 186 -182 -185
		mu 0 4 296 299 298 297
		f 4 -157 188 183 -188
		mu 0 4 300 303 302 301
		f 4 158 191 -191 -190
		mu 0 4 304 307 306 305
		f 4 168 193 -193 -192
		mu 0 4 308 311 310 309
		f 4 -170 195 -195 -194
		mu 0 4 312 315 314 313
		f 4 197 -197 -196 180
		mu 0 4 316 319 318 317
		f 4 -201 187 199 -199
		mu 0 4 320 323 322 321
		f 4 -203 -200 -183 201
		mu 0 4 324 327 326 325
		f 4 -161 204 -204 -202
		mu 0 4 328 331 330 329
		f 4 -207 200 -206 -205
		mu 0 4 332 335 334 333
		f 4 177 208 -59 -208
		mu 0 4 336 339 338 337
		f 4 -61 -209 210 209
		mu 0 4 340 343 342 341
		f 4 212 -65 -210 -212
		mu 0 4 344 347 346 345
		f 4 -177 213 -68 -213
		mu 0 4 348 351 350 349
		f 4 206 215 -70 -215
		mu 0 4 352 355 354 353
		f 4 174 216 -73 -216
		mu 0 4 356 359 358 357
		f 4 -180 217 -75 -217
		mu 0 4 360 363 362 361
		f 4 -156 214 -76 -218
		mu 0 4 364 367 366 365
		f 4 -221 219 -187 -219
		mu 0 4 368 371 370 369
		f 4 -223 218 172 -222
		mu 0 4 372 375 374 373
		f 4 -225 221 -174 -224
		mu 0 4 376 379 378 377
		f 4 -227 223 -167 -226
		mu 0 4 380 383 382 381
		f 4 229 -229 -228 -158
		mu 0 4 384 387 386 385
		f 4 233 -233 -232 230
		mu 0 4 388 391 390 389
		f 4 235 -235 -230 -165
		mu 0 4 392 395 394 393
		f 4 234 238 -238 -237
		mu 0 4 396 399 398 397
		f 4 241 -241 -240 232
		mu 0 4 400 403 402 401
		f 4 244 243 -243 -239
		mu 0 4 404 407 406 405
		f 4 247 246 -246 -231
		mu 0 4 408 411 410 409
		f 4 250 -250 -249 236
		mu 0 4 412 415 414 413
		f 4 253 -253 -252 239
		mu 0 4 416 419 418 417
		f 4 255 -255 -236 -186
		mu 0 4 420 423 422 421
		f 4 254 252 -257 -245
		mu 0 4 424 427 426 425
		f 4 257 -256 -189 227
		mu 0 4 428 431 430 429
		f 4 260 259 -259 -234
		mu 0 4 432 435 434 433
		f 4 258 262 -262 -242
		mu 0 4 436 439 438 437
		f 4 261 264 -264 240
		mu 0 4 440 443 442 441
		f 4 -254 263 266 -266
		mu 0 4 444 447 446 445
		f 4 269 -269 -258 267
		mu 0 4 448 451 450 449
		f 4 -272 251 268 270
		mu 0 4 452 455 454 453
		f 4 271 273 -273 231
		mu 0 4 456 459 458 457
		f 4 272 275 -268 274
		mu 0 4 460 463 462 461
		f 4 277 131 -277 -251
		mu 0 4 464 467 466 465
		f 4 -280 -279 276 135
		mu 0 4 468 471 470 469
		f 4 281 279 137 -281
		mu 0 4 472 475 474 473
		f 4 280 139 -283 245
		mu 0 4 476 479 478 477
		f 4 284 142 -284 -275
		mu 0 4 480 483 482 481
		f 4 283 144 -286 -248
		mu 0 4 484 487 486 485
		f 4 285 146 -287 248
		mu 0 4 488 491 490 489
		f 4 286 148 -285 228
		mu 0 4 492 495 494 493
		f 4 288 256 -288 220
		mu 0 4 496 499 498 497
		f 4 289 -244 -289 222
		mu 0 4 500 503 502 501
		f 4 290 242 -290 224
		mu 0 4 504 507 506 505
		f 4 291 237 -291 226
		mu 0 4 508 511 510 509
		f 4 295 294 293 -293
		mu 0 4 512 515 514 513
		f 4 -300 298 297 -297
		mu 0 4 516 519 518 517
		f 4 302 292 301 -301
		mu 0 4 520 523 522 521
		f 4 305 304 -304 -302
		mu 0 4 524 527 526 525
		f 4 -298 308 307 -307
		mu 0 4 528 531 530 529
		f 4 303 311 -311 -310
		mu 0 4 532 535 534 533
		f 4 299 314 -314 -313
		mu 0 4 536 539 538 537
		f 4 -306 317 316 -316
		mu 0 4 540 543 542 541
		f 4 -309 320 319 -319
		mu 0 4 544 547 546 545
		f 4 323 300 322 -322
		mu 0 4 548 551 550 549
		f 4 309 324 -320 -323
		mu 0 4 552 555 554 553
		f 4 -295 326 321 -326
		mu 0 4 556 559 558 557
		f 4 296 328 -1 -328
		mu 0 4 560 563 562 561
		f 4 306 329 -2 -329
		mu 0 4 564 567 566 565
		f 4 -308 330 -3 -330
		mu 0 4 568 571 570 569
		f 4 331 -4 -331 318
		mu 0 4 572 575 574 573
		f 4 -334 325 332 -5
		mu 0 4 576 579 578 577
		f 4 -6 -333 -321 334
		mu 0 4 580 583 582 581
		f 4 -299 335 -7 -335
		mu 0 4 584 587 586 585
		f 4 -337 333 -8 -336
		mu 0 4 588 591 590 589
		f 4 315 339 -339 -338
		mu 0 4 592 595 594 593
		f 4 -343 -340 341 340
		mu 0 4 596 599 598 597
		f 4 345 -345 -341 -344
		mu 0 4 600 603 602 601
		f 4 -315 347 -347 -346
		mu 0 4 604 607 606 605
		f 4 336 350 -350 -349
		mu 0 4 608 611 610 609
		f 4 312 352 -352 -351
		mu 0 4 612 615 614 613
		f 4 -318 354 -354 -353
		mu 0 4 616 619 618 617
		f 4 -294 348 -356 -355
		mu 0 4 620 623 622 621
		f 4 -359 357 -325 -357
		mu 0 4 624 627 626 625
		f 4 -361 356 310 -360
		mu 0 4 628 631 630 629
		f 4 -363 359 -312 -362
		mu 0 4 632 635 634 633
		f 4 -365 361 -305 -364
		mu 0 4 636 639 638 637
		f 4 367 -367 -366 -296
		mu 0 4 640 643 642 641
		f 4 371 -371 -370 368
		mu 0 4 644 647 646 645
		f 4 373 -373 -368 -303
		mu 0 4 648 651 650 649
		f 4 372 376 -376 -375
		mu 0 4 652 655 654 653
		f 4 379 -379 -378 370
		mu 0 4 656 659 658 657
		f 4 382 381 -381 -377
		mu 0 4 660 663 662 661
		f 4 385 384 -384 -369
		mu 0 4 664 667 666 665
		f 4 388 -388 -387 374
		mu 0 4 668 671 670 669
		f 4 391 -391 -390 377
		mu 0 4 672 675 674 673
		f 4 393 -393 -374 -324
		mu 0 4 676 679 678 677
		f 4 392 390 -395 -383
		mu 0 4 680 683 682 681
		f 4 395 -394 -327 365
		mu 0 4 684 687 686 685
		f 4 397 113 -397 -372
		mu 0 4 688 691 690 689
		f 4 396 115 -399 -380
		mu 0 4 692 695 694 693
		f 4 398 117 -400 378
		mu 0 4 696 699 698 697
		f 4 -392 399 119 -401
		mu 0 4 700 703 702 701
		f 4 121 -403 -396 401
		mu 0 4 704 707 706 705
		f 4 -404 389 402 125
		mu 0 4 708 711 710 709
		f 4 403 126 -405 369
		mu 0 4 712 715 714 713
		f 4 404 128 -402 405
		mu 0 4 716 719 718 717
		f 4 408 407 -407 -389
		mu 0 4 720 723 722 721
		f 4 -412 -411 406 409
		mu 0 4 724 727 726 725
		f 4 414 411 413 -413
		mu 0 4 728 731 730 729
		f 4 412 416 -416 383
		mu 0 4 732 735 734 733
		f 4 419 418 -418 -406
		mu 0 4 736 739 738 737
		f 4 417 421 -421 -386
		mu 0 4 740 743 742 741
		f 4 420 423 -423 386
		mu 0 4 744 747 746 745
		f 4 422 424 -420 366
		mu 0 4 748 751 750 749
		f 4 426 394 -426 358
		mu 0 4 752 755 754 753
		f 4 427 -382 -427 360
		mu 0 4 756 759 758 757
		f 4 428 380 -428 362
		mu 0 4 760 763 762 761
		f 4 429 375 -429 364
		mu 0 4 764 767 766 765
		f 4 433 -433 -432 -431
		mu 0 4 768 771 770 769
		f 4 437 -437 -436 434
		mu 0 4 772 775 774 773
		f 4 440 -440 -434 -439
		mu 0 4 776 779 778 777
		f 4 439 443 -443 -442
		mu 0 4 780 783 782 781
		f 4 446 -446 -445 436
		mu 0 4 784 787 786 785
		f 4 449 448 -448 -444
		mu 0 4 788 791 790 789
		f 4 452 451 -451 -435
		mu 0 4 792 795 794 793
		f 4 455 -455 -454 441
		mu 0 4 796 799 798 797
		f 4 458 -458 -457 444
		mu 0 4 800 803 802 801
		f 4 461 -461 -441 -460
		mu 0 4 804 807 806 805
		f 4 460 457 -463 -450
		mu 0 4 808 811 810 809
		f 4 464 -462 -464 431
		mu 0 4 812 815 814 813
		f 4 466 190 -466 -438
		mu 0 4 816 819 818 817
		f 4 465 192 -468 -447
		mu 0 4 820 823 822 821
		f 4 467 194 -469 445
		mu 0 4 824 827 826 825
		f 4 -459 468 196 -470
		mu 0 4 828 831 830 829
		f 4 198 -472 -465 470
		mu 0 4 832 835 834 833
		f 4 -473 456 471 202
		mu 0 4 836 839 838 837
		f 4 472 203 -474 435
		mu 0 4 840 843 842 841
		f 4 473 205 -471 474
		mu 0 4 844 847 846 845
		f 4 476 338 -476 -456
		mu 0 4 848 851 850 849
		f 4 -479 -478 475 342
		mu 0 4 852 855 854 853
		f 4 480 478 344 -480
		mu 0 4 856 859 858 857
		f 4 479 346 -482 450
		mu 0 4 860 863 862 861
		f 4 483 349 -483 -475
		mu 0 4 864 867 866 865
		f 4 482 351 -485 -453
		mu 0 4 868 871 870 869
		f 4 484 353 -486 453
		mu 0 4 872 875 874 873
		f 4 485 355 -484 432
		mu 0 4 876 879 878 877
		f 4 488 462 -488 486
		mu 0 4 880 883 882 881
		f 4 490 -449 -489 489
		mu 0 4 884 887 886 885
		f 4 492 447 -491 491
		mu 0 4 888 891 890 889
		f 4 494 442 -493 493
		mu 0 4 892 895 894 893
		f 4 430 497 496 -496
		mu 0 4 896 899 898 897
		f 4 -502 500 499 -499
		mu 0 4 900 903 902 901
		f 4 438 495 503 -503
		mu 0 4 904 907 906 905
		f 4 506 505 -505 -504
		mu 0 4 908 911 910 909
		f 4 -500 509 508 -508
		mu 0 4 912 915 914 913
		f 4 504 512 -512 -511
		mu 0 4 916 919 918 917
		f 4 501 515 -515 -514
		mu 0 4 920 923 922 921
		f 4 -507 518 517 -517
		mu 0 4 924 927 926 925
		f 4 -510 521 520 -520
		mu 0 4 928 931 930 929
		f 4 459 502 523 -523
		mu 0 4 932 935 934 933
		f 4 510 524 -521 -524
		mu 0 4 936 939 938 937
		f 4 -498 463 522 -526
		mu 0 4 940 943 942 941
		f 4 498 527 -260 -527
		mu 0 4 944 947 946 945
		f 4 507 528 -263 -528
		mu 0 4 948 951 950 949
		f 4 -509 529 -265 -529
		mu 0 4 952 955 954 953
		f 4 530 -267 -530 519
		mu 0 4 956 959 958 957
		f 4 -533 525 531 -270
		mu 0 4 960 963 962 961
		f 4 -271 -532 -522 533
		mu 0 4 964 967 966 965
		f 4 -501 534 -274 -534
		mu 0 4 968 971 970 969
		f 4 -536 532 -276 -535
		mu 0 4 972 975 974 973
		f 4 516 537 -408 -537
		mu 0 4 976 979 978 977
		f 4 -410 -538 539 538
		mu 0 4 980 983 982 981
		f 4 541 -414 -539 -541
		mu 0 4 984 987 986 985
		f 4 -516 542 -417 -542
		mu 0 4 988 991 990 989
		f 4 535 544 -419 -544
		mu 0 4 992 995 994 993
		f 4 513 545 -422 -545
		mu 0 4 996 999 998 997
		f 4 -519 546 -424 -546
		mu 0 4 1000 1003 1002 1001
		f 4 -497 543 -425 -547
		mu 0 4 1004 1007 1006 1005
		f 4 -487 548 -525 -548
		mu 0 4 1008 1011 1010 1009
		f 4 -490 547 511 -550
		mu 0 4 1012 1015 1014 1013
		f 4 -492 549 -513 -551
		mu 0 4 1016 1019 1018 1017
		f 4 -494 550 -506 -552
		mu 0 4 1020 1023 1022 1021;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "environment_inner";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 341 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0019921251 0.99800807 0.0019921251
		 0.0019921251 0.99800783 0.99800807 0.0019921251 0.99800807 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921253
		 0.0019920066 0.99800807 0.0019920066 0.99800807 0.99800795 0.0019921253 0.99800795
		 0.99800783 0.49999997 0.0019920063 0.49999997 0.0019920063 0.0019920063 0.99800783
		 0.0019920063 0.99800807 0.99800795 0.0019921253 0.99800795 0.0019921253 0.0019920066
		 0.99800807 0.0019920066 0.0019921253 0.0019920066 0.99800807 0.0019920066 0.99800807
		 0.99800795 0.0019921253 0.99800795 0.99800807 0.99800795 0.0019921253 0.99800795
		 0.0019921253 0.0019920319 0.99800807 0.0019920319 0.0019920063 0.0019921251 0.99800771
		 0.0019921251 0.99800771 0.99800807 0.0019920063 0.99800807 0.0019921251 0.0019920063
		 0.99800795 0.0019920063 0.99800795 0.99800795 0.0019921251 0.99800795 0.0019920066
		 0.99800795 0.0019920066 0.0019920066 0.99800795 0.0019920066 0.99800795 0.99800795
		 0.99800783 0.49999997 0.0019920063 0.49999997 0.0019920063 0.0019920063 0.99800783
		 0.0019920063 0.0019920066 0.99800795 0.0019920066 0.0019920319 0.99800795 0.0019920319
		 0.99800795 0.99800795 0.0019921251 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.0019921251 0.99800807 0.0019920063 0.99800795 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.49999997
		 0.0019920319 0.49999997 0.99800783 0.5 0.49999991 0.99800795 0.0019920063 0.99800795
		 0.0019920063 0.5 0.0019918876 0.0019920063 0.9980076 0.0019920063 0.49999979 0.99800795
		 0.0019919469 0.99800795 0.0019921251 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.0019921251 0.99800807 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.99800771 0.99800795 0.0019918878 0.99800795 0.0019918878 0.0019920066 0.99800771
		 0.0019920066 0.0019920063 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063
		 0.49999997 0.0019920659 0.0019921253 0.99800795 0.0019921253 0.5 0.99800801 0.0019920489
		 0.99800801 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019920319 0.49999997 0.0019920063 0.99800795 0.0019920063
		 0.99800795 0.0019920063 0.99800795 0.0019920063 0.99800795 0.49999997 0.99800795
		 0.49999997 0.99800795 0.0019920063 0.5 0.0019921251 0.99800807 0.0019920063 0.99800795
		 0.0019920063 0.5 0.99800783 0.99800807 0.0019920063 0.99800795 0.0019920319 0.99800795
		 0.0019920319 0.99800795 0.0019920319 0.99800795 0.0019920319 0.99800795 0.0019920319
		 0.49999997 0.99800783 0.0019921251 0.0019920319 0.99800795 0.0019920319 0.49999997
		 0.99800783 0.99800807 0.0019920319 0.99800795 0.0019920319 0.49999997 0.50099599
		 0.00099600316 0.00099601597 0.00099600316 0.0019920191 0.49999997 0.25099599 0.24999999
		 0.0019920063 0.99800795 0.0019920191 0.99800795 0.49999997 0.99800795 0.0019920063
		 0.99800795 0.0019920063 0.5 0.0019920319 0.99800795 0.50099599 0.49900398 0.25099599
		 0.24999999 1 1 1 1 0.5 1 0.5 1 0 1 0.5 0.0019920063 0.5 0.0019920063 0.5 0.0019920063
		 0.5 0.00099600316 0.5 1 0.5 0.99800795 0.5 0.99800795 0.5 0.99800795 0.0019920319
		 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.0019920319 0.99800795 0.0019920319
		 0.49999997 0.5 0.49999997 0.5 0.99800795 0.0019920319 0.99800795 0.5 0.99800795 0.0019920319
		 0.99800795 0.0019920319 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.5 0.99800795
		 0.0019920319 0.99800795 0.5 0.99800795 0.5 0.49999997 0.5 0.0019920063 0.5 0.0019920063
		 0.5 0.0019920063 0.0019920315 0.0019921246 0.49999988 0.0019921246 0.49999988 0.99800807
		 0.0019920315 0.99800807 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.5 0.99800783 0.5 0.99800771 0.99800807 0.0019920315 0.99800807 0.0019920315 0.50000012
		 0.99800771 0.50000012 0.0019920319 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.0019920319
		 0.99800795 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.49999997 0.0019920317 0.50000012 0.99800783 0.50000012 0.99800783 0.99800807 0.0019920317
		 0.99800807 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317 0.49999997
		 0.99800783 0.49999997 0.0019920319 0.99800795 0.0019920319 0.0019920063 0.5 0.0019920063
		 0.5 0.99800795 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783
		 0.5 0.0019921251 0.5 0.99800795 0.5 0.99800795 0.99800795 0.0019921251 0.99800795
		 0.99800795 0.0019920063 0.99800795 0.49999997 0.0019921251 0.49999997 0.0019921251
		 0.0019920063 0.0019920063 0.0019920063 0.99800783 0.0019920063 0.99800783 0.49999997
		 0.0019920063 0.49999997 0.0019921251 0.5 0.99800807 0.5 0.99800807 0.99800795 0.0019921251
		 0.99800795 0.0019920319 0.49999997 0.0019920319 0.49999997 0.0019920319 0.49999997
		 0.0019920191 0.5 0.0019920063 0.5 0.0019920063 0.5 0.0019920063 0.99800795 0.0019920063
		 0.5 0.99800807 0.0019920063 0.99800807 0.49999997 0.0019921251 0.49999997 0.0019921251
		 0.0019920063 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783
		 0.5 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783 0.5
		 0.99800795 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800795 0.5 0.0019920063
		 0.0019920063 0.99800783 0.0019920063 0.99800783 0.49999997 0.0019920063 0.49999997
		 0.0019919469 0.99800795 0.0019920319 0.49999997;
	setAttr ".uvst[0].uvsp[250:340]" 0.25099602 0.74900395 0.0019920319 0.49999997
		 0.0019920319 0.49999997 0.0019920063 0.0019921251 0.49999997 0.0019921251 0.49999997
		 0.99800807 0.0019920063 0.99800807 0.0019920063 0.49999997 0.99800783 0.49999997
		 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921251 0.49999997 0.99800795
		 0.49999997 0.99800795 0.99800795 0.0019921251 0.99800795 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063
		 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921251
		 0.49999997 0.99800807 0.49999997 0.99800807 0.99800795 0.0019921251 0.99800795 0.49999997
		 0.99800795 0.49999997 0.99800795 0.49999997 0.99800795 0.0019921251 0.0019921251
		 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251 0.0019921251
		 0.0019921251 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251
		 0.99800783 0.99800807 0.99800783 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251 0.99800783 0.0019921251
		 0.99800783 0.99800807 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.99800807
		 0.0019921251 0.99800807 0.0019921251 0.0019921251 0.0019921251 0.99800807 0.99800783
		 0.99800807 0.99800783 0.0019921251 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.99800783 0.0019921251 0.99800783 0.99800807 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.99800783 0.0019921251 0.99800783 0.99800807 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019919469
		 0.99800795 0.0019920063 0.99800795 0.99800783 0.99800807 0.0019921251 0.99800807
		 0.0019919469 0.99800795 0.0019920063 0.99800795 0.99800783 0.99800807 0.0019921251
		 0.99800807 0.0019919765 0.99800795 0.0019920063 0.99800795 0.0019920063 0.99800795
		 0.0019919765 0.99800795 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019919469 0.99800795 0.0019919469 0.99800795 0.0019919765
		 0.99800795 0.0019919765 0.99800795 0.0019919765 0.99800795 0.0019919469 0.99800795;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 207 ".vt";
	setAttr ".vt[0:165]"  -45 5 -6.5919492e-017 -45 15 -6.5919492e-017 -45 25 -6.5919492e-017
		 -45 35 -6.5919492e-017 -45 45 -6.5919492e-017 -35 45 4.510281e-017 -25 45 4.510281e-017
		 -15 45 -6.5919492e-017 -5 45 -6.5919492e-017 6.5919492e-017 45 -6.5919492e-017 -35 35 -1.110223e-016
		 -25 35 -9.7144515e-017 -15 35 -1.7694179e-016 -5 35 -1.5612511e-016 -5 25 -1.110223e-016
		 -15 25 0 -25 25 0 -25 15 0 -25 5 0 -35 5 -4.510281e-017 -35 15 -1.7694179e-016 -35 25 -2.0816682e-016
		 -15 5 -1.110223e-016 -5 5 0 -5 15 -1.110223e-016 -15 15 -2.220446e-016 -45 5 5 -45 6.5919492e-017 5
		 -5 5 5 -15 5 5 -5 5 25 -5 5 15 -5 15 15 -5 15 25 -15 15 5 -25 5 5 -25 15 5 -5 25 15
		 -5 25 25 -25 25 5 -15 25 5 -15 5 25 -15 5 15 -25 5 15 -5 15 5 -5 25 5 -25 5 25 -5 5 35
		 -5 5 45 -15 5 45 -15 5 35 -5 6.5919492e-017 45 -15 6.5919492e-017 45 -45 5 15 -45 6.5919492e-017 15
		 -35 5 5 -35 5 15 -5 35 5 -5 45 5 -5 45 15 -5 35 15 -5 15 35 -5 15 45 -45 15 5 -35 15 5
		 -15 45 5 -15 35 5 -5 25 35 -5 25 45 -25 5 45 -25 5 35 -25 -4.510281e-017 45 -45 25 5
		 -35 25 5 -45 5 25 -45 -4.510281e-017 25 -35 5 25 -5 45 25 -5 35 25 -25 45 5 -25 35 5
		 -5 35 35 -5 35 45 -35 5 45 -35 5 35 -35 -4.510281e-017 45 -45 35 5 -35 35 5 -45 5 35
		 -45 -4.510281e-017 35 -5 45 35 -35 45 5 -5 45 45 -45 45 5 -45 6.5919492e-017 45 -45 5 45
		 1.3183898e-016 5 45 1.3183898e-016 15 45 1.3183898e-016 25 45 1.3183898e-016 35 45
		 1.3183898e-016 45 45 1.3183898e-016 45 35 1.3183898e-016 45 25 1.3183898e-016 45 15
		 1.3183898e-016 45 5 2.220446e-016 25 5 3.1225023e-016 35 5 3.5388359e-016 35 15 4.1633363e-016 35 25
		 4.4408921e-016 35 35 4.1633363e-016 25 35 3.5388359e-016 15 35 3.1225023e-016 5 35
		 2.220446e-016 5 25 0 15 25 0 25 25 0 25 15 0 5 5 2.220446e-016 15 5 4.4408921e-016 15 15
		 2.220446e-016 5 15 -25 0 15 -25 0 5 -25 0 25 -15 0 25 -5 0 25 -5 4.510281e-017 35
		 -15 -6.5919492e-017 35 -25 -2.4286129e-017 35 -35 1.2143064e-016 35 -35 9.7144515e-017 25
		 -35 1.7694179e-016 15 -35 4.510281e-017 5 -5 1.110223e-016 15 -5 0 5 -15 2.220446e-016 15
		 -15 1.110223e-016 5 -15 15 15 -25 15 15 -25 15 25 -15 15 25 -15 25 15 -25 25 15 -25 25 25
		 -15 25 25 -15 15 35 -25 15 35 -15 25 35 -25 25 35 -15 15 45 -25 15 45 -15 25 45 -25 25 45
		 -35 15 15 -35 15 25 -35 25 25 -35 25 15 -45 15 15 -45 15 25 -45 25 25 -45 25 15 -15 35 15
		 -25 35 15 -25 35 25 -15 35 25 -15 45 15;
	setAttr ".vt[166:206]" -25 45 15 -25 45 25 -15 45 25 -15 5 55 -25 5 55 -15 15 55
		 -25 15 55 -15 5 65 -25 5 65 -15 15 65 -25 15 65 -25 0 55 -25 0 65 -15 0 65 -15 0 55
		 -55 5 15 -55 5 25 -55 15 25 -55 15 15 -65 5 15 -65 5 25 -65 15 25 -65 15 15 -65 0 15
		 -65 0 25 -55 0 25 -55 0 15 -5 5 55 -5 5 65 -5 0 65 -5 0 55 0 5 55 0 5 65 0 0 65 -55 5 5
		 -65 5 5 -55 0 5 -65 0 5 -65 0 0 -65 5 0 -55 5 0;
	setAttr -s 397 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 21 10 0 22 23 0 23 24 0 24 25 0 25 22 0 0 26 0 26 27 0 23 28 0 28 29 0 22 29 0 31 30 0
		 31 32 0 32 33 1 30 33 0 29 34 0 25 34 0 29 35 0 35 36 0 34 36 1 32 37 1 37 38 0 33 38 0
		 36 39 0 40 39 0 34 40 1 30 41 0 42 41 0 31 42 0 29 42 0 42 43 0 35 43 0 32 44 0 44 45 0
		 37 45 0 34 44 0 24 44 0 40 45 0 41 46 1 43 46 1 28 44 0 47 48 0 48 49 0 50 49 0 47 50 0
		 48 51 0 51 52 0 49 52 1 26 53 0 53 54 1 54 27 0 55 26 0 55 56 0 56 53 0 57 58 0 58 59 0
		 60 59 1 57 60 0 47 61 0 61 62 1 48 62 0 26 63 0 64 63 1 55 64 0 1 63 1 8 58 1 58 65 0
		 7 65 1 57 66 0 66 65 0 61 67 0 67 68 1 62 68 0 49 69 0 70 69 0 50 70 1 52 71 0 69 71 1
		 63 72 0 73 72 1 64 73 0 2 72 1 53 74 0 74 75 1 75 54 0 56 76 1 76 74 0 59 77 0 78 77 1
		 60 78 0 65 79 1 6 79 1 66 80 1 80 79 0 67 81 0 81 82 0 68 82 0 69 83 0 84 83 0 70 84 0
		 71 85 0 83 85 0 72 86 0 87 86 1 73 87 0 3 86 1 74 88 0 88 89 1 89 75 0 76 84 0 84 88 1
		 77 90 0 81 90 1 78 81 0 79 91 0 5 91 0 80 87 0 87 91 0 90 92 0 82 92 0 91 93 0 4 93 0
		 86 93 0 85 94 0 95 94 0 83 95 0 88 95 0 94 89 0 48 96 0 96 97 0 62 97 1 97 98 0 68 98 1
		 98 99 0 82 99 0 99 100 0 92 100 0 90 101 1 100 101 0 77 102 1 101 102 0 59 103 1
		 102 103 0 58 104 1 103 104 0 104 9 0 45 105 0;
	setAttr ".ed[166:331]" 45 57 0 57 106 0 105 106 0 106 107 0 60 107 1 107 108 0
		 78 108 1 108 109 0 81 109 0 67 110 1 109 110 0 61 111 1 110 111 0 47 112 0 111 112 0
		 30 113 0 112 113 0 30 47 0 33 114 1 113 114 0 38 115 0 114 115 0 37 116 1 115 116 0
		 116 105 0 28 117 0 44 118 0 117 118 0 118 119 0 32 119 0 31 120 0 119 120 0 28 31 0
		 120 117 0 43 121 1 122 121 0 35 122 0 121 123 0 46 123 0 41 124 1 123 124 0 30 125 0
		 124 125 0 125 126 0 47 126 0 126 127 0 50 127 1 127 128 0 70 128 1 128 129 0 84 129 0
		 76 130 1 129 130 0 56 131 1 130 131 0 55 132 0 131 132 0 132 122 0 35 55 0 31 133 0
		 134 133 0 28 134 0 42 135 0 133 135 0 29 136 0 135 136 0 136 134 0 11 80 1 10 87 0
		 12 66 1 13 57 0 14 45 0 15 40 1 16 39 0 17 36 1 18 35 0 19 55 0 20 64 1 21 73 1 42 137 0
		 43 138 0 137 138 1 46 139 0 138 139 0 41 140 0 140 139 0 137 140 1 137 141 0 138 142 1
		 141 142 1 139 143 0 142 143 0 140 144 1 144 143 0 141 144 1 140 145 0 139 146 0 145 146 0
		 144 147 0 145 147 1 143 148 0 147 148 1 146 148 1 145 149 1 146 150 1 149 150 0 147 151 0
		 149 151 0 148 152 0 151 152 0 150 152 0 138 153 0 139 154 0 153 154 0 143 155 0 154 155 1
		 142 156 0 156 155 1 153 156 1 153 157 1 154 158 1 157 158 0 155 159 0 158 159 0 156 160 0
		 160 159 0 157 160 0 69 150 1 70 146 0 49 149 1 50 145 0 74 158 1 53 157 1 76 154 0
		 56 153 0 141 161 0 142 162 0 161 162 0 143 163 0 162 163 1 144 164 0 164 163 1 161 164 1
		 161 165 0 162 166 1 165 166 1 163 167 0 166 167 0 164 168 0 168 167 0 165 168 0 79 166 0
		 65 165 0 66 161 0 80 162 0 49 169 0 69 170 0 169 170 0 149 171 0 169 171 1 150 172 0
		 171 172 1 170 172 1 169 173 0 170 174 1 173 174 1;
	setAttr ".ed[332:396]" 171 175 0 173 175 0 172 176 0 175 176 0 174 176 0 169 180 1
		 170 177 0 174 178 0 173 179 1 177 178 0 178 179 0 180 177 0 53 181 0 74 182 0 181 182 0
		 158 183 0 182 183 1 157 184 0 184 183 1 181 184 1 181 185 0 182 186 1 185 186 1 183 187 0
		 186 187 0 184 188 0 188 187 0 185 188 0 182 191 0 181 192 1 186 190 0 185 189 1 189 190 0
		 190 191 0 191 192 0 169 193 0 173 194 0 193 194 1 179 195 0 194 195 1 180 196 0 193 196 0
		 193 197 1 194 198 0 195 199 0 197 198 0 198 199 0 51 196 0 48 193 0 96 197 0 181 200 0
		 185 201 0 200 201 1 192 202 0 200 202 0 189 203 0 201 203 1 200 206 1 201 205 0 203 204 0
		 204 205 0 205 206 0 26 200 0 27 202 0 0 206 0;
	setAttr -s 175 -ch 700 ".fc[0:174]" -type "polyFaces" 
		f 4 29 -29 -28 -22
		mu 0 4 4 7 6 5
		f 4 33 -33 -32 30
		mu 0 4 8 11 10 9
		f 4 35 -35 -30 -25
		mu 0 4 12 15 14 13
		f 4 34 38 -38 -37
		mu 0 4 16 19 18 17
		f 4 41 -41 -40 32
		mu 0 4 20 23 22 21
		f 4 44 43 -43 -39
		mu 0 4 24 27 26 25
		f 4 47 46 -46 -31
		mu 0 4 28 31 30 29
		f 4 50 -50 -49 36
		mu 0 4 32 35 34 33
		f 4 53 -53 -52 39
		mu 0 4 36 39 38 37
		f 4 55 -55 -36 -24
		mu 0 4 40 43 42 41
		f 4 54 52 -57 -45
		mu 0 4 44 47 46 45
		f 4 311 313 -316 -317
		mu 0 4 1 0 116 113
		f 4 59 -56 -23 27
		mu 0 4 52 55 54 53
		f 4 63 62 -62 -61
		mu 0 4 56 59 58 57
		f 4 61 66 -66 -65
		mu 0 4 57 58 61 60
		f 4 -70 -69 -68 26
		mu 0 4 62 65 64 63
		f 4 67 -73 -72 70
		mu 0 4 66 69 68 67
		f 4 76 75 -75 -74
		mu 0 4 70 73 72 71
		f 4 79 -79 -78 60
		mu 0 4 57 75 74 56
		f 4 82 81 -81 -71
		mu 0 4 76 79 78 77
		f 4 80 -84 -1 25
		mu 0 4 63 82 81 80
		f 4 -8 86 -86 -85
		mu 0 4 83 86 85 84
		f 4 85 -89 -88 73
		mu 0 4 87 90 89 88
		f 4 91 -91 -90 78
		mu 0 4 75 92 91 74
		f 4 92 96 -96 -67
		mu 0 4 58 93 95 61
		f 4 99 98 -98 -82
		mu 0 4 96 99 98 97
		f 4 97 -101 -2 83
		mu 0 4 97 98 101 100
		f 4 -104 -103 -102 68
		mu 0 4 102 105 104 69
		f 4 108 107 -107 -76
		mu 0 4 108 111 110 109
		f 4 -7 110 -110 -87
		mu 0 4 112 115 114 90
		f 4 115 -115 -114 90
		mu 0 4 92 119 118 91
		f 4 118 117 -117 -94
		mu 0 4 94 121 120 93
		f 4 116 120 -120 -97
		mu 0 4 93 120 122 95
		f 4 123 122 -122 -99
		mu 0 4 99 124 123 98
		f 4 121 -125 -3 100
		mu 0 4 98 123 125 101
		f 4 -128 -127 -126 102
		mu 0 4 105 127 126 104
		f 4 125 -130 -129 105
		mu 0 4 104 126 121 107
		f 4 132 131 -131 -108
		mu 0 4 111 118 128 110
		f 4 -6 134 -134 -111
		mu 0 4 115 130 129 114
		f 4 133 -137 -136 112
		mu 0 4 114 129 124 117
		f 4 114 138 -138 -132
		mu 0 4 118 119 131 128
		f 4 -5 140 -140 -135
		mu 0 4 130 133 132 129
		f 4 141 -141 -4 124
		mu 0 4 123 132 133 125
		f 4 136 139 -142 -123
		mu 0 4 124 129 132 123
		f 4 144 143 -143 -121
		mu 0 4 120 135 134 122
		f 4 145 -145 -118 129
		mu 0 4 126 135 120 121
		f 4 -147 -144 -146 126
		mu 0 4 127 134 135 126
		f 4 -150 -80 147 148
		mu 0 4 137 75 57 136
		f 4 -152 -92 149 150
		mu 0 4 138 92 75 137
		f 4 -154 -116 151 152
		mu 0 4 139 119 92 138
		f 4 -156 -139 153 154
		mu 0 4 140 131 119 139
		f 4 137 155 157 -157
		mu 0 4 128 131 140 141
		f 4 130 156 159 -159
		mu 0 4 110 128 141 142
		f 4 106 158 161 -161
		mu 0 4 109 110 142 143
		f 4 74 160 163 -163
		mu 0 4 144 147 146 145
		f 4 84 162 164 -9
		mu 0 4 148 151 150 149
		f 4 168 -168 -167 165
		mu 0 4 152 155 154 153
		f 4 -171 -77 167 169
		mu 0 4 156 108 158 157
		f 4 -173 -109 170 171
		mu 0 4 159 111 108 156
		f 4 -175 -133 172 173
		mu 0 4 160 118 111 159
		f 4 113 174 176 -176
		mu 0 4 91 118 160 161
		f 4 89 175 178 -178
		mu 0 4 74 91 161 162
		f 4 77 177 180 -180
		mu 0 4 56 74 162 163
		f 4 183 179 182 -182
		mu 0 4 164 167 166 165
		f 4 181 185 -185 -34
		mu 0 4 168 171 170 169
		f 4 184 187 -187 -42
		mu 0 4 172 175 174 173
		f 4 186 189 -189 40
		mu 0 4 176 179 178 177
		f 4 -54 188 190 -166
		mu 0 4 180 183 182 181
		f 4 193 -193 -60 191
		mu 0 4 184 187 186 185
		f 4 -196 51 192 194
		mu 0 4 188 191 190 189
		f 4 195 197 -197 31
		mu 0 4 192 195 194 193
		f 4 196 199 -192 198
		mu 0 4 196 199 198 197
		f 4 202 201 -201 -51
		mu 0 4 200 203 202 201
		f 4 -205 -59 200 203
		mu 0 4 204 207 206 205
		f 4 57 204 206 -206
		mu 0 4 208 211 210 209
		f 4 205 208 -208 45
		mu 0 4 212 215 214 213
		f 4 -211 -184 207 209
		mu 0 4 216 219 218 217
		f 4 -213 -64 210 211
		mu 0 4 220 59 56 221
		f 4 -215 -95 212 213
		mu 0 4 222 94 59 220
		f 4 -217 -119 214 215
		mu 0 4 223 121 94 222
		f 4 128 216 218 -218
		mu 0 4 107 121 223 224
		f 4 104 217 220 -220
		mu 0 4 68 107 224 225
		f 4 71 219 222 -222
		mu 0 4 226 68 225 227
		f 4 224 221 223 -203
		mu 0 4 228 231 230 229
		f 4 227 226 -226 -199
		mu 0 4 232 235 234 233
		f 4 225 229 -229 -48
		mu 0 4 236 239 238 237
		f 4 228 231 -231 48
		mu 0 4 240 243 242 241
		f 4 230 232 -228 28
		mu 0 4 244 247 246 245
		f 4 135 -235 9 233
		mu 0 4 117 124 250 249
		f 4 111 -234 10 235
		mu 0 4 89 117 249 251
		f 4 87 -236 11 236
		mu 0 4 158 89 251 252
		f 4 166 -237 12 237
		mu 0 4 253 256 255 254
		f 4 238 56 -238 13
		mu 0 4 257 260 259 258
		f 4 239 -44 -239 14
		mu 0 4 261 264 263 262
		f 4 240 42 -240 15
		mu 0 4 265 268 267 266
		f 4 241 37 -241 16
		mu 0 4 269 272 271 270
		f 4 242 -225 -242 17
		mu 0 4 273 276 275 274
		f 4 243 -83 -243 18
		mu 0 4 277 96 226 278
		f 4 244 -100 -244 19
		mu 0 4 279 99 96 277
		f 4 234 -124 -245 20
		mu 0 4 250 124 99 279
		f 4 49 246 -248 -246
		mu 0 4 48 51 281 280
		f 4 58 248 -250 -247
		mu 0 4 51 50 282 281
		f 4 -58 250 251 -249
		mu 0 4 50 49 283 282
		f 4 -47 245 252 -251
		mu 0 4 49 48 280 283
		f 4 247 254 -256 -254
		mu 0 4 280 281 285 284
		f 4 287 289 -292 -293
		mu 0 4 3 2 106 103
		f 4 -272 273 275 -277
		mu 0 4 292 293 294 295
		f 4 -253 253 260 -259
		mu 0 4 283 280 284 287
		f 4 -252 261 263 -263
		mu 0 4 282 283 289 288
		f 4 258 264 -266 -262
		mu 0 4 283 287 290 289
		f 4 259 266 -268 -265
		mu 0 4 287 286 291 290
		f 4 -257 262 268 -267
		mu 0 4 286 282 288 291
		f 4 265 272 -274 -270
		mu 0 4 289 290 294 293
		f 4 267 274 -276 -273
		mu 0 4 290 291 295 294
		f 4 -269 270 276 -275
		mu 0 4 291 288 292 295
		f 4 249 278 -280 -278
		mu 0 4 281 282 297 296
		f 4 256 280 -282 -279
		mu 0 4 282 286 298 297
		f 4 -258 282 283 -281
		mu 0 4 286 285 299 298
		f 4 -255 277 284 -283
		mu 0 4 285 281 296 299
		f 4 281 288 -290 -287
		mu 0 4 297 298 106 2
		f 4 -284 290 291 -289
		mu 0 4 298 299 103 106
		f 4 -285 285 292 -291
		mu 0 4 299 296 3 103
		f 4 93 293 -271 -295
		mu 0 4 94 93 292 288
		f 4 -332 333 335 -337
		mu 0 4 308 309 310 311
		f 4 94 294 -264 -297
		mu 0 4 59 94 288 289
		f 4 -63 296 269 -296
		mu 0 4 58 59 289 293
		f 4 354 356 -359 -360
		mu 0 4 320 321 322 323
		f 4 -106 299 286 -298
		mu 0 4 104 107 297 2
		f 4 -105 300 279 -300
		mu 0 4 107 68 296 297
		f 4 72 298 -286 -301
		mu 0 4 68 69 3 296
		f 4 255 302 -304 -302
		mu 0 4 284 285 301 300
		f 4 257 304 -306 -303
		mu 0 4 285 286 302 301
		f 4 -260 306 307 -305
		mu 0 4 286 287 303 302
		f 4 -261 301 308 -307
		mu 0 4 287 284 300 303
		f 4 305 312 -314 -311
		mu 0 4 301 302 116 0
		f 4 -308 314 315 -313
		mu 0 4 302 303 113 116
		f 4 -309 309 316 -315
		mu 0 4 303 300 1 113
		f 4 109 317 -312 -319
		mu 0 4 90 114 0 1
		f 4 -112 319 303 -321
		mu 0 4 117 89 300 301
		f 4 -113 320 310 -318
		mu 0 4 114 117 301 0
		f 4 318 -310 -320 88
		mu 0 4 90 1 300 89
		f 4 -93 321 323 -323
		mu 0 4 93 58 305 304
		f 4 295 324 -326 -322
		mu 0 4 58 293 306 305
		f 4 271 326 -328 -325
		mu 0 4 293 292 307 306
		f 4 -294 322 328 -327
		mu 0 4 292 93 304 307
		f 4 325 332 -334 -330
		mu 0 4 305 306 310 309
		f 4 327 334 -336 -333
		mu 0 4 306 307 311 310
		f 4 -329 330 336 -335
		mu 0 4 307 304 308 311
		f 4 -324 337 343 -339
		mu 0 4 304 305 315 312
		f 4 -331 338 341 -340
		mu 0 4 308 304 312 313
		f 4 331 339 342 -341
		mu 0 4 309 308 313 314
		f 4 101 345 -347 -345
		mu 0 4 69 104 317 316
		f 4 297 347 -349 -346
		mu 0 4 104 2 318 317
		f 4 -288 349 350 -348
		mu 0 4 2 3 319 318
		f 4 -299 344 351 -350
		mu 0 4 3 69 316 319
		f 4 348 355 -357 -354
		mu 0 4 317 318 322 321
		f 4 -351 357 358 -356
		mu 0 4 318 319 323 322
		f 4 -352 352 359 -358
		mu 0 4 319 316 320 323
		f 4 346 360 366 -362
		mu 0 4 316 317 326 327
		f 4 353 362 365 -361
		mu 0 4 317 321 325 326
		f 4 -355 363 364 -363
		mu 0 4 321 320 324 325
		f 4 329 368 -370 -368
		mu 0 4 305 309 329 328
		f 4 340 370 -372 -369
		mu 0 4 309 314 330 329
		f 4 -338 367 373 -373
		mu 0 4 315 305 328 331
		f 4 369 375 -378 -375
		mu 0 4 328 329 333 332
		f 4 371 376 -379 -376
		mu 0 4 329 330 334 333
		f 4 64 379 -374 -381
		mu 0 4 57 60 331 328
		f 4 -148 380 374 -382
		mu 0 4 136 57 328 332
		f 4 -353 382 384 -384
		mu 0 4 320 316 336 335
		f 4 361 385 -387 -383
		mu 0 4 316 327 337 336
		f 4 -364 383 388 -388
		mu 0 4 324 320 335 338
		f 4 -389 390 -393 -392
		mu 0 4 338 335 340 339
		f 4 -385 389 -394 -391
		mu 0 4 335 336 248 340
		f 4 -27 394 386 -396
		mu 0 4 62 63 336 337
		f 4 -26 396 -390 -395
		mu 0 4 63 80 248 336;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "environment_mid" -p "environmentsGRP";
createNode mesh -n "environment_midShape" -p "environment_mid";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "environment_mid";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 341 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0019921251 0.99800807 0.0019921251
		 0.0019921251 0.99800783 0.99800807 0.0019921251 0.99800807 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921253
		 0.0019920066 0.99800807 0.0019920066 0.99800807 0.99800795 0.0019921253 0.99800795
		 0.99800783 0.49999997 0.0019920063 0.49999997 0.0019920063 0.0019920063 0.99800783
		 0.0019920063 0.99800807 0.99800795 0.0019921253 0.99800795 0.0019921253 0.0019920066
		 0.99800807 0.0019920066 0.0019921253 0.0019920066 0.99800807 0.0019920066 0.99800807
		 0.99800795 0.0019921253 0.99800795 0.99800807 0.99800795 0.0019921253 0.99800795
		 0.0019921253 0.0019920319 0.99800807 0.0019920319 0.0019920063 0.0019921251 0.99800771
		 0.0019921251 0.99800771 0.99800807 0.0019920063 0.99800807 0.0019921251 0.0019920063
		 0.99800795 0.0019920063 0.99800795 0.99800795 0.0019921251 0.99800795 0.0019920066
		 0.99800795 0.0019920066 0.0019920066 0.99800795 0.0019920066 0.99800795 0.99800795
		 0.99800783 0.49999997 0.0019920063 0.49999997 0.0019920063 0.0019920063 0.99800783
		 0.0019920063 0.0019920066 0.99800795 0.0019920066 0.0019920319 0.99800795 0.0019920319
		 0.99800795 0.99800795 0.0019921251 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.0019921251 0.99800807 0.0019920063 0.99800795 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.49999997
		 0.0019920319 0.49999997 0.99800783 0.5 0.49999991 0.99800795 0.0019920063 0.99800795
		 0.0019920063 0.5 0.0019918876 0.0019920063 0.9980076 0.0019920063 0.49999979 0.99800795
		 0.0019919469 0.99800795 0.0019921251 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.0019921251 0.99800807 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.99800771 0.99800795 0.0019918878 0.99800795 0.0019918878 0.0019920066 0.99800771
		 0.0019920066 0.0019920063 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063
		 0.49999997 0.0019920659 0.0019921253 0.99800795 0.0019921253 0.5 0.99800801 0.0019920489
		 0.99800801 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019920319 0.49999997 0.0019920063 0.99800795 0.0019920063
		 0.99800795 0.0019920063 0.99800795 0.0019920063 0.99800795 0.49999997 0.99800795
		 0.49999997 0.99800795 0.0019920063 0.5 0.0019921251 0.99800807 0.0019920063 0.99800795
		 0.0019920063 0.5 0.99800783 0.99800807 0.0019920063 0.99800795 0.0019920319 0.99800795
		 0.0019920319 0.99800795 0.0019920319 0.99800795 0.0019920319 0.99800795 0.0019920319
		 0.49999997 0.99800783 0.0019921251 0.0019920319 0.99800795 0.0019920319 0.49999997
		 0.99800783 0.99800807 0.0019920319 0.99800795 0.0019920319 0.49999997 0.50099599
		 0.00099600316 0.00099601597 0.00099600316 0.0019920191 0.49999997 0.25099599 0.24999999
		 0.0019920063 0.99800795 0.0019920191 0.99800795 0.49999997 0.99800795 0.0019920063
		 0.99800795 0.0019920063 0.5 0.0019920319 0.99800795 0.50099599 0.49900398 0.25099599
		 0.24999999 1 1 1 1 0.5 1 0.5 1 0 1 0.5 0.0019920063 0.5 0.0019920063 0.5 0.0019920063
		 0.5 0.00099600316 0.5 1 0.5 0.99800795 0.5 0.99800795 0.5 0.99800795 0.0019920319
		 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.0019920319 0.99800795 0.0019920319
		 0.49999997 0.5 0.49999997 0.5 0.99800795 0.0019920319 0.99800795 0.5 0.99800795 0.0019920319
		 0.99800795 0.0019920319 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.5 0.99800795
		 0.0019920319 0.99800795 0.5 0.99800795 0.5 0.49999997 0.5 0.0019920063 0.5 0.0019920063
		 0.5 0.0019920063 0.0019920315 0.0019921246 0.49999988 0.0019921246 0.49999988 0.99800807
		 0.0019920315 0.99800807 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.5 0.99800783 0.5 0.99800771 0.99800807 0.0019920315 0.99800807 0.0019920315 0.50000012
		 0.99800771 0.50000012 0.0019920319 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.0019920319
		 0.99800795 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.49999997 0.0019920317 0.50000012 0.99800783 0.50000012 0.99800783 0.99800807 0.0019920317
		 0.99800807 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317 0.49999997
		 0.99800783 0.49999997 0.0019920319 0.99800795 0.0019920319 0.0019920063 0.5 0.0019920063
		 0.5 0.99800795 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783
		 0.5 0.0019921251 0.5 0.99800795 0.5 0.99800795 0.99800795 0.0019921251 0.99800795
		 0.99800795 0.0019920063 0.99800795 0.49999997 0.0019921251 0.49999997 0.0019921251
		 0.0019920063 0.0019920063 0.0019920063 0.99800783 0.0019920063 0.99800783 0.49999997
		 0.0019920063 0.49999997 0.0019921251 0.5 0.99800807 0.5 0.99800807 0.99800795 0.0019921251
		 0.99800795 0.0019920319 0.49999997 0.0019920319 0.49999997 0.0019920319 0.49999997
		 0.0019920191 0.5 0.0019920063 0.5 0.0019920063 0.5 0.0019920063 0.99800795 0.0019920063
		 0.5 0.99800807 0.0019920063 0.99800807 0.49999997 0.0019921251 0.49999997 0.0019921251
		 0.0019920063 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783
		 0.5 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783 0.5
		 0.99800795 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800795 0.5 0.0019920063
		 0.0019920063 0.99800783 0.0019920063 0.99800783 0.49999997 0.0019920063 0.49999997
		 0.0019919469 0.99800795 0.0019920319 0.49999997;
	setAttr ".uvst[0].uvsp[250:340]" 0.25099602 0.74900395 0.0019920319 0.49999997
		 0.0019920319 0.49999997 0.0019920063 0.0019921251 0.49999997 0.0019921251 0.49999997
		 0.99800807 0.0019920063 0.99800807 0.0019920063 0.49999997 0.99800783 0.49999997
		 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921251 0.49999997 0.99800795
		 0.49999997 0.99800795 0.99800795 0.0019921251 0.99800795 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063
		 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921251
		 0.49999997 0.99800807 0.49999997 0.99800807 0.99800795 0.0019921251 0.99800795 0.49999997
		 0.99800795 0.49999997 0.99800795 0.49999997 0.99800795 0.0019921251 0.0019921251
		 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251 0.0019921251
		 0.0019921251 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251
		 0.99800783 0.99800807 0.99800783 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251 0.99800783 0.0019921251
		 0.99800783 0.99800807 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.99800807
		 0.0019921251 0.99800807 0.0019921251 0.0019921251 0.0019921251 0.99800807 0.99800783
		 0.99800807 0.99800783 0.0019921251 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.99800783 0.0019921251 0.99800783 0.99800807 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.99800783 0.0019921251 0.99800783 0.99800807 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019919469
		 0.99800795 0.0019920063 0.99800795 0.99800783 0.99800807 0.0019921251 0.99800807
		 0.0019919469 0.99800795 0.0019920063 0.99800795 0.99800783 0.99800807 0.0019921251
		 0.99800807 0.0019919765 0.99800795 0.0019920063 0.99800795 0.0019920063 0.99800795
		 0.0019919765 0.99800795 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019919469 0.99800795 0.0019919469 0.99800795 0.0019919765
		 0.99800795 0.0019919765 0.99800795 0.0019919765 0.99800795 0.0019919469 0.99800795;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 207 ".vt";
	setAttr ".vt[0:165]"  -45 5 -6.5919492e-017 -45 15 -6.5919492e-017 -45 25 -6.5919492e-017
		 -45 35 -6.5919492e-017 -45 45 -6.5919492e-017 -35 45 4.510281e-017 -25 45 4.510281e-017
		 -15 45 -6.5919492e-017 -5 45 -6.5919492e-017 6.5919492e-017 45 -6.5919492e-017 -35 35 -1.110223e-016
		 -25 35 -9.7144515e-017 -15 35 -1.7694179e-016 -5 35 -1.5612511e-016 -5 25 -1.110223e-016
		 -15 25 0 -25 25 0 -25 15 0 -25 5 0 -35 5 -4.510281e-017 -35 15 -1.7694179e-016 -35 25 -2.0816682e-016
		 -15 5 -1.110223e-016 -5 5 0 -5 15 -1.110223e-016 -15 15 -2.220446e-016 -45 5 5 -45 6.5919492e-017 5
		 -5 5 5 -15 5 5 -5 5 25 -5 5 15 -5 15 15 -5 15 25 -15 15 5 -25 5 5 -25 15 5 -5 25 15
		 -5 25 25 -25 25 5 -15 25 5 -15 5 25 -15 5 15 -25 5 15 -5 15 5 -5 25 5 -25 5 25 -5 5 35
		 -5 5 45 -15 5 45 -15 5 35 -5 6.5919492e-017 45 -15 6.5919492e-017 45 -45 5 15 -45 6.5919492e-017 15
		 -35 5 5 -35 5 15 -5 35 5 -5 45 5 -5 45 15 -5 35 15 -5 15 35 -5 15 45 -45 15 5 -35 15 5
		 -15 45 5 -15 35 5 -5 25 35 -5 25 45 -25 5 45 -25 5 35 -25 -4.510281e-017 45 -45 25 5
		 -35 25 5 -45 5 25 -45 -4.510281e-017 25 -35 5 25 -5 45 25 -5 35 25 -25 45 5 -25 35 5
		 -5 35 35 -5 35 45 -35 5 45 -35 5 35 -35 -4.510281e-017 45 -45 35 5 -35 35 5 -45 5 35
		 -45 -4.510281e-017 35 -5 45 35 -35 45 5 -5 45 45 -45 45 5 -45 6.5919492e-017 45 -45 5 45
		 1.3183898e-016 5 45 1.3183898e-016 15 45 1.3183898e-016 25 45 1.3183898e-016 35 45
		 1.3183898e-016 45 45 1.3183898e-016 45 35 1.3183898e-016 45 25 1.3183898e-016 45 15
		 1.3183898e-016 45 5 2.220446e-016 25 5 3.1225023e-016 35 5 3.5388359e-016 35 15 4.1633363e-016 35 25
		 4.4408921e-016 35 35 4.1633363e-016 25 35 3.5388359e-016 15 35 3.1225023e-016 5 35
		 2.220446e-016 5 25 0 15 25 0 25 25 0 25 15 0 5 5 2.220446e-016 15 5 4.4408921e-016 15 15
		 2.220446e-016 5 15 -25 0 15 -25 0 5 -25 0 25 -15 0 25 -5 0 25 -5 4.510281e-017 35
		 -15 -6.5919492e-017 35 -25 -2.4286129e-017 35 -35 1.2143064e-016 35 -35 9.7144515e-017 25
		 -35 1.7694179e-016 15 -35 4.510281e-017 5 -5 1.110223e-016 15 -5 0 5 -15 2.220446e-016 15
		 -15 1.110223e-016 5 -15 15 15 -25 15 15 -25 15 25 -15 15 25 -15 25 15 -25 25 15 -25 25 25
		 -15 25 25 -15 15 35 -25 15 35 -15 25 35 -25 25 35 -15 15 45 -25 15 45 -15 25 45 -25 25 45
		 -35 15 15 -35 15 25 -35 25 25 -35 25 15 -45 15 15 -45 15 25 -45 25 25 -45 25 15 -15 35 15
		 -25 35 15 -25 35 25 -15 35 25 -15 45 15;
	setAttr ".vt[166:206]" -25 45 15 -25 45 25 -15 45 25 -15 5 55 -25 5 55 -15 15 55
		 -25 15 55 -15 5 65 -25 5 65 -15 15 65 -25 15 65 -25 0 55 -25 0 65 -15 0 65 -15 0 55
		 -55 5 15 -55 5 25 -55 15 25 -55 15 15 -65 5 15 -65 5 25 -65 15 25 -65 15 15 -65 0 15
		 -65 0 25 -55 0 25 -55 0 15 -5 5 55 -5 5 65 -5 0 65 -5 0 55 0 5 55 0 5 65 0 0 65 -55 5 5
		 -65 5 5 -55 0 5 -65 0 5 -65 0 0 -65 5 0 -55 5 0;
	setAttr -s 397 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 21 10 0 22 23 0 23 24 0 24 25 0 25 22 0 0 26 0 26 27 0 23 28 0 28 29 0 22 29 0 31 30 0
		 31 32 0 32 33 1 30 33 0 29 34 0 25 34 0 29 35 0 35 36 0 34 36 1 32 37 1 37 38 0 33 38 0
		 36 39 0 40 39 0 34 40 1 30 41 0 42 41 0 31 42 0 29 42 0 42 43 0 35 43 0 32 44 0 44 45 0
		 37 45 0 34 44 0 24 44 0 40 45 0 41 46 1 43 46 1 28 44 0 47 48 0 48 49 0 50 49 0 47 50 0
		 48 51 0 51 52 0 49 52 1 26 53 0 53 54 1 54 27 0 55 26 0 55 56 0 56 53 0 57 58 0 58 59 0
		 60 59 1 57 60 0 47 61 0 61 62 1 48 62 0 26 63 0 64 63 1 55 64 0 1 63 1 8 58 1 58 65 0
		 7 65 1 57 66 0 66 65 0 61 67 0 67 68 1 62 68 0 49 69 0 70 69 0 50 70 1 52 71 0 69 71 1
		 63 72 0 73 72 1 64 73 0 2 72 1 53 74 0 74 75 1 75 54 0 56 76 1 76 74 0 59 77 0 78 77 1
		 60 78 0 65 79 1 6 79 1 66 80 1 80 79 0 67 81 0 81 82 0 68 82 0 69 83 0 84 83 0 70 84 0
		 71 85 0 83 85 0 72 86 0 87 86 1 73 87 0 3 86 1 74 88 0 88 89 1 89 75 0 76 84 0 84 88 1
		 77 90 0 81 90 1 78 81 0 79 91 0 5 91 0 80 87 0 87 91 0 90 92 0 82 92 0 91 93 0 4 93 0
		 86 93 0 85 94 0 95 94 0 83 95 0 88 95 0 94 89 0 48 96 0 96 97 0 62 97 1 97 98 0 68 98 1
		 98 99 0 82 99 0 99 100 0 92 100 0 90 101 1 100 101 0 77 102 1 101 102 0 59 103 1
		 102 103 0 58 104 1 103 104 0 104 9 0 45 105 0;
	setAttr ".ed[166:331]" 45 57 0 57 106 0 105 106 0 106 107 0 60 107 1 107 108 0
		 78 108 1 108 109 0 81 109 0 67 110 1 109 110 0 61 111 1 110 111 0 47 112 0 111 112 0
		 30 113 0 112 113 0 30 47 0 33 114 1 113 114 0 38 115 0 114 115 0 37 116 1 115 116 0
		 116 105 0 28 117 0 44 118 0 117 118 0 118 119 0 32 119 0 31 120 0 119 120 0 28 31 0
		 120 117 0 43 121 1 122 121 0 35 122 0 121 123 0 46 123 0 41 124 1 123 124 0 30 125 0
		 124 125 0 125 126 0 47 126 0 126 127 0 50 127 1 127 128 0 70 128 1 128 129 0 84 129 0
		 76 130 1 129 130 0 56 131 1 130 131 0 55 132 0 131 132 0 132 122 0 35 55 0 31 133 0
		 134 133 0 28 134 0 42 135 0 133 135 0 29 136 0 135 136 0 136 134 0 11 80 1 10 87 0
		 12 66 1 13 57 0 14 45 0 15 40 1 16 39 0 17 36 1 18 35 0 19 55 0 20 64 1 21 73 1 42 137 0
		 43 138 0 137 138 1 46 139 0 138 139 0 41 140 0 140 139 0 137 140 1 137 141 0 138 142 1
		 141 142 1 139 143 0 142 143 0 140 144 1 144 143 0 141 144 1 140 145 0 139 146 0 145 146 0
		 144 147 0 145 147 1 143 148 0 147 148 1 146 148 1 145 149 1 146 150 1 149 150 0 147 151 0
		 149 151 0 148 152 0 151 152 0 150 152 0 138 153 0 139 154 0 153 154 0 143 155 0 154 155 1
		 142 156 0 156 155 1 153 156 1 153 157 1 154 158 1 157 158 0 155 159 0 158 159 0 156 160 0
		 160 159 0 157 160 0 69 150 1 70 146 0 49 149 1 50 145 0 74 158 1 53 157 1 76 154 0
		 56 153 0 141 161 0 142 162 0 161 162 0 143 163 0 162 163 1 144 164 0 164 163 1 161 164 1
		 161 165 0 162 166 1 165 166 1 163 167 0 166 167 0 164 168 0 168 167 0 165 168 0 79 166 0
		 65 165 0 66 161 0 80 162 0 49 169 0 69 170 0 169 170 0 149 171 0 169 171 1 150 172 0
		 171 172 1 170 172 1 169 173 0 170 174 1 173 174 1;
	setAttr ".ed[332:396]" 171 175 0 173 175 0 172 176 0 175 176 0 174 176 0 169 180 1
		 170 177 0 174 178 0 173 179 1 177 178 0 178 179 0 180 177 0 53 181 0 74 182 0 181 182 0
		 158 183 0 182 183 1 157 184 0 184 183 1 181 184 1 181 185 0 182 186 1 185 186 1 183 187 0
		 186 187 0 184 188 0 188 187 0 185 188 0 182 191 0 181 192 1 186 190 0 185 189 1 189 190 0
		 190 191 0 191 192 0 169 193 0 173 194 0 193 194 1 179 195 0 194 195 1 180 196 0 193 196 0
		 193 197 1 194 198 0 195 199 0 197 198 0 198 199 0 51 196 0 48 193 0 96 197 0 181 200 0
		 185 201 0 200 201 1 192 202 0 200 202 0 189 203 0 201 203 1 200 206 1 201 205 0 203 204 0
		 204 205 0 205 206 0 26 200 0 27 202 0 0 206 0;
	setAttr -s 175 -ch 700 ".fc[0:174]" -type "polyFaces" 
		f 4 29 -29 -28 -22
		mu 0 4 4 7 6 5
		f 4 33 -33 -32 30
		mu 0 4 8 11 10 9
		f 4 35 -35 -30 -25
		mu 0 4 12 15 14 13
		f 4 34 38 -38 -37
		mu 0 4 16 19 18 17
		f 4 41 -41 -40 32
		mu 0 4 20 23 22 21
		f 4 44 43 -43 -39
		mu 0 4 24 27 26 25
		f 4 47 46 -46 -31
		mu 0 4 28 31 30 29
		f 4 50 -50 -49 36
		mu 0 4 32 35 34 33
		f 4 53 -53 -52 39
		mu 0 4 36 39 38 37
		f 4 55 -55 -36 -24
		mu 0 4 40 43 42 41
		f 4 54 52 -57 -45
		mu 0 4 44 47 46 45
		f 4 311 313 -316 -317
		mu 0 4 1 0 116 113
		f 4 59 -56 -23 27
		mu 0 4 52 55 54 53
		f 4 63 62 -62 -61
		mu 0 4 56 59 58 57
		f 4 61 66 -66 -65
		mu 0 4 57 58 61 60
		f 4 -70 -69 -68 26
		mu 0 4 62 65 64 63
		f 4 67 -73 -72 70
		mu 0 4 66 69 68 67
		f 4 76 75 -75 -74
		mu 0 4 70 73 72 71
		f 4 79 -79 -78 60
		mu 0 4 57 75 74 56
		f 4 82 81 -81 -71
		mu 0 4 76 79 78 77
		f 4 80 -84 -1 25
		mu 0 4 63 82 81 80
		f 4 -8 86 -86 -85
		mu 0 4 83 86 85 84
		f 4 85 -89 -88 73
		mu 0 4 87 90 89 88
		f 4 91 -91 -90 78
		mu 0 4 75 92 91 74
		f 4 92 96 -96 -67
		mu 0 4 58 93 95 61
		f 4 99 98 -98 -82
		mu 0 4 96 99 98 97
		f 4 97 -101 -2 83
		mu 0 4 97 98 101 100
		f 4 -104 -103 -102 68
		mu 0 4 102 105 104 69
		f 4 108 107 -107 -76
		mu 0 4 108 111 110 109
		f 4 -7 110 -110 -87
		mu 0 4 112 115 114 90
		f 4 115 -115 -114 90
		mu 0 4 92 119 118 91
		f 4 118 117 -117 -94
		mu 0 4 94 121 120 93
		f 4 116 120 -120 -97
		mu 0 4 93 120 122 95
		f 4 123 122 -122 -99
		mu 0 4 99 124 123 98
		f 4 121 -125 -3 100
		mu 0 4 98 123 125 101
		f 4 -128 -127 -126 102
		mu 0 4 105 127 126 104
		f 4 125 -130 -129 105
		mu 0 4 104 126 121 107
		f 4 132 131 -131 -108
		mu 0 4 111 118 128 110
		f 4 -6 134 -134 -111
		mu 0 4 115 130 129 114
		f 4 133 -137 -136 112
		mu 0 4 114 129 124 117
		f 4 114 138 -138 -132
		mu 0 4 118 119 131 128
		f 4 -5 140 -140 -135
		mu 0 4 130 133 132 129
		f 4 141 -141 -4 124
		mu 0 4 123 132 133 125
		f 4 136 139 -142 -123
		mu 0 4 124 129 132 123
		f 4 144 143 -143 -121
		mu 0 4 120 135 134 122
		f 4 145 -145 -118 129
		mu 0 4 126 135 120 121
		f 4 -147 -144 -146 126
		mu 0 4 127 134 135 126
		f 4 -150 -80 147 148
		mu 0 4 137 75 57 136
		f 4 -152 -92 149 150
		mu 0 4 138 92 75 137
		f 4 -154 -116 151 152
		mu 0 4 139 119 92 138
		f 4 -156 -139 153 154
		mu 0 4 140 131 119 139
		f 4 137 155 157 -157
		mu 0 4 128 131 140 141
		f 4 130 156 159 -159
		mu 0 4 110 128 141 142
		f 4 106 158 161 -161
		mu 0 4 109 110 142 143
		f 4 74 160 163 -163
		mu 0 4 144 147 146 145
		f 4 84 162 164 -9
		mu 0 4 148 151 150 149
		f 4 168 -168 -167 165
		mu 0 4 152 155 154 153
		f 4 -171 -77 167 169
		mu 0 4 156 108 158 157
		f 4 -173 -109 170 171
		mu 0 4 159 111 108 156
		f 4 -175 -133 172 173
		mu 0 4 160 118 111 159
		f 4 113 174 176 -176
		mu 0 4 91 118 160 161
		f 4 89 175 178 -178
		mu 0 4 74 91 161 162
		f 4 77 177 180 -180
		mu 0 4 56 74 162 163
		f 4 183 179 182 -182
		mu 0 4 164 167 166 165
		f 4 181 185 -185 -34
		mu 0 4 168 171 170 169
		f 4 184 187 -187 -42
		mu 0 4 172 175 174 173
		f 4 186 189 -189 40
		mu 0 4 176 179 178 177
		f 4 -54 188 190 -166
		mu 0 4 180 183 182 181
		f 4 193 -193 -60 191
		mu 0 4 184 187 186 185
		f 4 -196 51 192 194
		mu 0 4 188 191 190 189
		f 4 195 197 -197 31
		mu 0 4 192 195 194 193
		f 4 196 199 -192 198
		mu 0 4 196 199 198 197
		f 4 202 201 -201 -51
		mu 0 4 200 203 202 201
		f 4 -205 -59 200 203
		mu 0 4 204 207 206 205
		f 4 57 204 206 -206
		mu 0 4 208 211 210 209
		f 4 205 208 -208 45
		mu 0 4 212 215 214 213
		f 4 -211 -184 207 209
		mu 0 4 216 219 218 217
		f 4 -213 -64 210 211
		mu 0 4 220 59 56 221
		f 4 -215 -95 212 213
		mu 0 4 222 94 59 220
		f 4 -217 -119 214 215
		mu 0 4 223 121 94 222
		f 4 128 216 218 -218
		mu 0 4 107 121 223 224
		f 4 104 217 220 -220
		mu 0 4 68 107 224 225
		f 4 71 219 222 -222
		mu 0 4 226 68 225 227
		f 4 224 221 223 -203
		mu 0 4 228 231 230 229
		f 4 227 226 -226 -199
		mu 0 4 232 235 234 233
		f 4 225 229 -229 -48
		mu 0 4 236 239 238 237
		f 4 228 231 -231 48
		mu 0 4 240 243 242 241
		f 4 230 232 -228 28
		mu 0 4 244 247 246 245
		f 4 135 -235 9 233
		mu 0 4 117 124 250 249
		f 4 111 -234 10 235
		mu 0 4 89 117 249 251
		f 4 87 -236 11 236
		mu 0 4 158 89 251 252
		f 4 166 -237 12 237
		mu 0 4 253 256 255 254
		f 4 238 56 -238 13
		mu 0 4 257 260 259 258
		f 4 239 -44 -239 14
		mu 0 4 261 264 263 262
		f 4 240 42 -240 15
		mu 0 4 265 268 267 266
		f 4 241 37 -241 16
		mu 0 4 269 272 271 270
		f 4 242 -225 -242 17
		mu 0 4 273 276 275 274
		f 4 243 -83 -243 18
		mu 0 4 277 96 226 278
		f 4 244 -100 -244 19
		mu 0 4 279 99 96 277
		f 4 234 -124 -245 20
		mu 0 4 250 124 99 279
		f 4 49 246 -248 -246
		mu 0 4 48 51 281 280
		f 4 58 248 -250 -247
		mu 0 4 51 50 282 281
		f 4 -58 250 251 -249
		mu 0 4 50 49 283 282
		f 4 -47 245 252 -251
		mu 0 4 49 48 280 283
		f 4 247 254 -256 -254
		mu 0 4 280 281 285 284
		f 4 287 289 -292 -293
		mu 0 4 3 2 106 103
		f 4 -272 273 275 -277
		mu 0 4 292 293 294 295
		f 4 -253 253 260 -259
		mu 0 4 283 280 284 287
		f 4 -252 261 263 -263
		mu 0 4 282 283 289 288
		f 4 258 264 -266 -262
		mu 0 4 283 287 290 289
		f 4 259 266 -268 -265
		mu 0 4 287 286 291 290
		f 4 -257 262 268 -267
		mu 0 4 286 282 288 291
		f 4 265 272 -274 -270
		mu 0 4 289 290 294 293
		f 4 267 274 -276 -273
		mu 0 4 290 291 295 294
		f 4 -269 270 276 -275
		mu 0 4 291 288 292 295
		f 4 249 278 -280 -278
		mu 0 4 281 282 297 296
		f 4 256 280 -282 -279
		mu 0 4 282 286 298 297
		f 4 -258 282 283 -281
		mu 0 4 286 285 299 298
		f 4 -255 277 284 -283
		mu 0 4 285 281 296 299
		f 4 281 288 -290 -287
		mu 0 4 297 298 106 2
		f 4 -284 290 291 -289
		mu 0 4 298 299 103 106
		f 4 -285 285 292 -291
		mu 0 4 299 296 3 103
		f 4 93 293 -271 -295
		mu 0 4 94 93 292 288
		f 4 -332 333 335 -337
		mu 0 4 308 309 310 311
		f 4 94 294 -264 -297
		mu 0 4 59 94 288 289
		f 4 -63 296 269 -296
		mu 0 4 58 59 289 293
		f 4 354 356 -359 -360
		mu 0 4 320 321 322 323
		f 4 -106 299 286 -298
		mu 0 4 104 107 297 2
		f 4 -105 300 279 -300
		mu 0 4 107 68 296 297
		f 4 72 298 -286 -301
		mu 0 4 68 69 3 296
		f 4 255 302 -304 -302
		mu 0 4 284 285 301 300
		f 4 257 304 -306 -303
		mu 0 4 285 286 302 301
		f 4 -260 306 307 -305
		mu 0 4 286 287 303 302
		f 4 -261 301 308 -307
		mu 0 4 287 284 300 303
		f 4 305 312 -314 -311
		mu 0 4 301 302 116 0
		f 4 -308 314 315 -313
		mu 0 4 302 303 113 116
		f 4 -309 309 316 -315
		mu 0 4 303 300 1 113
		f 4 109 317 -312 -319
		mu 0 4 90 114 0 1
		f 4 -112 319 303 -321
		mu 0 4 117 89 300 301
		f 4 -113 320 310 -318
		mu 0 4 114 117 301 0
		f 4 318 -310 -320 88
		mu 0 4 90 1 300 89
		f 4 -93 321 323 -323
		mu 0 4 93 58 305 304
		f 4 295 324 -326 -322
		mu 0 4 58 293 306 305
		f 4 271 326 -328 -325
		mu 0 4 293 292 307 306
		f 4 -294 322 328 -327
		mu 0 4 292 93 304 307
		f 4 325 332 -334 -330
		mu 0 4 305 306 310 309
		f 4 327 334 -336 -333
		mu 0 4 306 307 311 310
		f 4 -329 330 336 -335
		mu 0 4 307 304 308 311
		f 4 -324 337 343 -339
		mu 0 4 304 305 315 312
		f 4 -331 338 341 -340
		mu 0 4 308 304 312 313
		f 4 331 339 342 -341
		mu 0 4 309 308 313 314
		f 4 101 345 -347 -345
		mu 0 4 69 104 317 316
		f 4 297 347 -349 -346
		mu 0 4 104 2 318 317
		f 4 -288 349 350 -348
		mu 0 4 2 3 319 318
		f 4 -299 344 351 -350
		mu 0 4 3 69 316 319
		f 4 348 355 -357 -354
		mu 0 4 317 318 322 321
		f 4 -351 357 358 -356
		mu 0 4 318 319 323 322
		f 4 -352 352 359 -358
		mu 0 4 319 316 320 323
		f 4 346 360 366 -362
		mu 0 4 316 317 326 327
		f 4 353 362 365 -361
		mu 0 4 317 321 325 326
		f 4 -355 363 364 -363
		mu 0 4 321 320 324 325
		f 4 329 368 -370 -368
		mu 0 4 305 309 329 328
		f 4 340 370 -372 -369
		mu 0 4 309 314 330 329
		f 4 -338 367 373 -373
		mu 0 4 315 305 328 331
		f 4 369 375 -378 -375
		mu 0 4 328 329 333 332
		f 4 371 376 -379 -376
		mu 0 4 329 330 334 333
		f 4 64 379 -374 -381
		mu 0 4 57 60 331 328
		f 4 -148 380 374 -382
		mu 0 4 136 57 328 332
		f 4 -353 382 384 -384
		mu 0 4 320 316 336 335
		f 4 361 385 -387 -383
		mu 0 4 316 327 337 336
		f 4 -364 383 388 -388
		mu 0 4 324 320 335 338
		f 4 -389 390 -393 -392
		mu 0 4 338 335 340 339
		f 4 -385 389 -394 -391
		mu 0 4 335 336 248 340
		f 4 -27 394 386 -396
		mu 0 4 62 63 336 337
		f 4 -26 396 -390 -395
		mu 0 4 63 80 248 336;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape3" -p "environment_mid";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 21 "f[0:1]" "f[4]" "f[9]" "f[17]" "f[19]" "f[24]" "f[26]" "f[28]" "f[31]" "f[37:41]" "f[43:45]" "f[49]" "f[58:60]" "f[62]" "f[74]" "f[76]" "f[79]" "f[81]" "f[83]" "f[86]" "f[101:102]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 21 "f[2:3]" "f[5:8]" "f[10:16]" "f[18]" "f[20:23]" "f[25]" "f[27]" "f[29:30]" "f[32:36]" "f[42]" "f[46:48]" "f[50:57]" "f[61]" "f[63:73]" "f[75]" "f[77:78]" "f[80]" "f[82]" "f[84:85]" "f[87:100]" "f[103:104]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 22 "f[2]" "f[7]" "f[10]" "f[12:13]" "f[20:21]" "f[27]" "f[30]" "f[33:36]" "f[42]" "f[46:48]" "f[57]" "f[66]" "f[68]" "f[70]" "f[72]" "f[82]" "f[84:85]" "f[87]" "f[91]" "f[93:94]" "f[96]" "f[99]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 28 "f[3]" "f[5:6]" "f[8]" "f[11]" "f[14:16]" "f[18]" "f[22:23]" "f[25]" "f[29]" "f[32]" "f[50]" "f[54:56]" "f[61]" "f[63:65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77:78]" "f[80]" "f[88]" "f[90]" "f[92]" "f[95]" "f[97:98]" "f[100]" "f[103:104]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 420 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.24999988 1 0.74999988 1 0.74999988
		 1 0.74999988 -2.9802322e-008 -5.9604645e-008 -5.9604645e-008 0.99999976 -5.9604645e-008
		 0.75 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.25 -5.9604645e-008
		 0.74999988 -5.9604645e-008 0.24999988 5.9604645e-008 -5.9604645e-008 5.9604645e-008
		 0.74999988 0.99999976 0.74999988 0.99999988 0.74999988 0 -5.9604645e-008 0 0.99999976
		 0 0.74999976 0.99999988 0.99999988 1.1920929e-007 0.24999976 0.99999988 0.99999988
		 0.99999976 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.74999988 -1.1920929e-007
		 -2.9802322e-008 0 0.99999988 0.99999976 0.99999976 0.99999976 -5.9604645e-008 0.99999976
		 0.75 5.9604645e-008 0.74999988 0.99999988 0 0.99999976 0 0 0.74999988 0.99999988
		 0.74999988 -2.9802322e-008 -1.1920929e-007 1.1920929e-007 0.99999976 1.7881393e-007
		 0.74999988 -5.9604645e-008 0.74999988 0.99999988 -1.1920929e-007 1.7881393e-007 0.99999988
		 2.3841858e-007 0.74999988 0.99999988 0.24999994 0.99999988 0.99999988 0.99999976
		 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 0.99999976 0 0.99999952 1 -2.3841858e-007
		 0.99999988 0.74999988 -5.9604645e-008 0.74999988 0.99999964 0.74999988 0.99999976
		 0.24999982 0.99999976 0.74999988 0.99999988 0.74999988 0.99999988 0.24999982 0.99999988
		 0.24999982 -1.1920929e-007 0 0.99999976 0.74999988 -5.9604645e-008 0.74999988 0.99999976
		 0.74999988 0.99999976 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 1 0.99999976 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 0.74999988 0.99999988 0.24999982 0.99999988 0.74999976 0.99999988 0.25
		 1 0.74999988 0.99999988 0.24999994 0 0.74999988 0 0 0.99999976 0.74999988 -1.1920929e-007
		 0.74999988 0.99999988 0.24999994 0.99999976 0.24999988 -1.1920929e-007 0.74999988
		 -1.1920929e-007 0 0.99999988 0.75 0.99999976 0.74999988 0 0.74999988 0.99999976 0
		 -2.9802322e-008 0.24999994 0.99999976 0.24999988 -8.9406967e-008 0.99999976 -5.9604645e-008
		 0.74999988 -1.1920929e-007 0.24999994 1 0.24999988 5.9604645e-008 -1.1920929e-007
		 0 0.99999988 0 0.99999988 0.99999976 0.99999976 0 0.99999976 -1.1920929e-007 0.24999994
		 0.99999952 -8.9406967e-008 0.99999988 0.24999994 -2.0861626e-007 0.74999988 -2.3841858e-007
		 0.74999988 0.99999952 0.99999976 0.99999976 0.74999988 5.9604645e-008 0.74999988
		 1 0.99999976 -2.9802322e-008 0.74999988 1 0.74999988 0.99999976 0.74999988 0 0.74999988
		 0 0.74999988 0.99999988 0.74999988 0 0.74999988 0.99999976 0.74999988 -1.1920929e-007
		 0.99999976 0.99999988 0.99999988 0 0.99999988 0.99999988 0.99999988 0.99999988 0.99999988
		 -5.9604645e-008 0.24999994 0.99999988 0.74999988 0.99999988 -5.9604645e-008 0 0.99999988
		 5.9604645e-008 0 0.99999988 0 -5.9604645e-008 0.74999988 -2.9802322e-008 0.24999994
		 -2.9802322e-008 0.24999994 0.99999976 0.74999988 0.99999976 0.74999988 0 0.74999988
		 0.99999976 0.24999988 0.99999976 0.24999988 0 5.9604645e-008 -5.9604645e-008 1 -5.9604645e-008
		 1 0.99999976 5.9604645e-008 0.99999976 -2.3841858e-007 0.99999988 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0.99999988 -5.9604645e-008 0.24999988 0.99999988 0.24999988
		 -5.9604645e-008 0.74999988 -2.9802322e-008 0.24999976 0.99999988 0.24999988 0.99999988
		 0.24999988 -1.1920929e-007 0.24999988 0.99999988 0.74999988 -1.1920929e-007 0.74999988
		 0.99999988 0 -5.9604645e-008 0.99999952 -5.9604645e-008 0.99999952 0.99999976 0.99999976
		 -5.9604645e-008 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.74999988
		 0.99999988 0.99999976 0.99999976 -8.9406967e-008 0.99999976 -5.9604645e-008 0 0.99999988
		 -2.9802322e-008 0.24999994 0.99999988 -2.9802322e-008 0.99999976 0.99999976 0.99999976
		 1 0 1 0.99999988 -2.3841858e-007 -2.9802322e-008 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 0 0.24999994 0 0.24999994 1 0.24999994 0 0.74999988 0.99999976
		 0.24999988 0.99999976 0.24999988 0.99999988 0.74999988 0.99999988 0.24999988 0.99999988
		 0.24999988 -1.1920929e-007 0.74999988 -1.1920929e-007 0.99999976 0 0.99999976 0.99999988
		 0 0.99999976 0 -1.1920929e-007 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0.99999988
		 0.99999976 0 0.99999976 -2.9802322e-008 -5.9604645e-008 -5.9604645e-008 0.99999976
		 -5.9604645e-008 -5.9604645e-008 -5.9604645e-008 -5.9604645e-008 -8.9406967e-008 0.99999988
		 0.99999976 -5.9604645e-008 0.99999976 0.99999976 -5.9604645e-008 0.99999976 0.99999976
		 -5.9604645e-008 0.24999988 1.000000119209 0.24999988 1 0.99999976 0.99999976 0.99999976
		 -5.9604645e-008 -5.9604645e-008 0 0.25 0.99999988 0.24999988 0 0.99999976 0.99999976
		 1 -5.9604645e-008 0 0.99999976 0 -5.9604645e-008 0 0.99999976 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0.99999976 0.99999976 0.99999988 0 -2.9802322e-008 0.99999976 -2.9802322e-008
		 0 -2.9802322e-008 0.99999976 -2.9802322e-008 -5.9604645e-008 1 0.99999976 0 0.99999976
		 0 -5.9604645e-008 0.99999988 0.99999976 0 0.99999976 0.99999976 -5.9604645e-008 -2.9802322e-008
		 0.99999976 0 0.99999976 0 -5.9604645e-008 -2.9802322e-008 0 0.99999988 0 0 0 0.99999988
		 0 0.74999988 0.99999988 0.24999988 0.99999988 -1.1920929e-007 -5.9604645e-008 -2.3841858e-007
		 0.99999976 -2.3841858e-007 0 0.99999976 5.9604645e-008 -5.9604645e-008 -1.1920929e-007
		 0 -1.1920929e-007 0.99999976 -1.1920929e-007 0.99999976 0.99999988 0.99999976 0 0.99999976
		 1 -1.1920929e-007 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0.99999988
		 -5.9604645e-008 0.99999964 0.99999988;
	setAttr ".uvst[0].uvsp[250:419]" -2.3841858e-007 0.99999988 0 0.99999976 0
		 -5.9604645e-008 0.99999988 5.9604645e-008 0.99999976 1 -1.1920929e-007 0.99999976
		 -1.1920929e-007 -5.9604645e-008 0.24999988 -1.7881393e-007 0.74999988 -1.4901161e-007
		 0.99999976 0.99999988 0 0.99999988 0 -1.1920929e-007 0 0.99999976 0 0 0.24999994
		 0.99999964 0.24999994 -8.9406967e-008 0.24999988 0.99999988 0.24999994 -8.9406967e-008
		 -1.1920929e-007 0.99999976 0.24999994 0.99999988 0.25 5.9604645e-008 0.24999994 0.99999976
		 0.24999994 0 0.24999994 0.99999988 0.24999994 -1.1920929e-007 0.24999994 0.99999976
		 0.24999994 -5.9604645e-008 0.24999994 -2.9802322e-008 0.74999988 -1.1920929e-007
		 0.74999988 0.99999988 0.24999988 0.99999988 0.24999988 -1.1920929e-007 0.99999988
		 0.99999976 0 0.99999976 0 0 -1.1920929e-007 0 0.99999988 0 0.99999988 0.99999976
		 -1.1920929e-007 0.99999976 0 -1.1920929e-007 0.99999988 -1.1920929e-007 0.99999988
		 0.99999988 0 0.99999988 0 0 1 0 0.99999988 0 0.24999982 0.99999976 0.24999982 0 0.74999988
		 0 0.24999982 -1.1920929e-007 0 0.99999988 0 -2.9802322e-008 0.99999976 -5.9604645e-008
		 0.99999976 0.99999988 0 -5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -1.1920929e-007 0.99999976 -1.1920929e-007
		 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976 0.99999976 0.99999988
		 -8.9406967e-008 0.99999976 0.99999976 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999988
		 -5.9604645e-008 0.99999988 0.99999976 0.99999988 5.9604645e-008 0.99999976 0.99999988
		 -2.0861626e-007 0.99999976 -2.0861626e-007 -5.9604645e-008 0 0.99999976 0 -5.9604645e-008
		 0.24999982 0.99999988 0.24999982 -2.9802322e-008 0.74999988 -2.9802322e-008 0.24999982
		 -5.9604645e-008 0.74999988 -5.9604645e-008 0.74999988 -1.1920929e-007 0.99999988
		 0 0.99999988 0.99999976 -2.9802322e-008 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007
		 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0 -5.9604645e-008 0 0 0.99999988 0 0.99999988 0 0.74999988
		 -1.1920929e-007 0.24999994 0 0.24999994 0.99999976 0.24999994 0 0.24999994 1 0.24999994
		 0 0.24999994 0.99999988 0.24999994 -1.1920929e-007 0.24999994 0.99999976 -2.9802322e-008
		 -5.9604645e-008 -2.9802322e-008 0.99999988 0.24999994 0.99999988 0.24999988 5.9604645e-008
		 0.74999988 5.9604645e-008 0.74999988 0.99999988 0.74999988 0.99999976 0.99999976
		 0.99999976 -1.1920929e-007 0.99999964 -1.1920929e-007 -8.9406967e-008 0.74999988
		 5.9604645e-008 0.74999988 1 0.24999994 1 -2.9802322e-008 0.99999976 0 0.99999988
		 0 -2.9802322e-008 -5.9604645e-008 0.99999988 0.99999976 1 0.99999976 0.99999976 0.24999988
		 5.9604645e-008 0.74999988 5.9604645e-008 0.74999988 1.000000119209 -1.1920929e-007
		 0.99999964 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976 0.24999988
		 5.9604645e-008 0.74999988 5.9604645e-008 0.74999988 1 0.74999988 -2.9802322e-008
		 0.75 0.99999988 0.25 0.99999988 0.24999988 0 0.74999988 0 0.75 0.99999988 0.99999988
		 0.99999976 0.24999994 0.99999988 0.24999994 -1.1920929e-007 0.24999988 -1.4901161e-007
		 0.74999988 -1.1920929e-007 0.24999976 -2.9802322e-008 0.74999976 0 0 -5.9604645e-008
		 0.74999988 0 0.74999988 0.99999988 0.24999994 -2.9802322e-008 0.24999988 0.99999988
		 0.24999988 -2.9802322e-008 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008
		 0.24999988 -2.9802322e-008 0.74999988 -2.9802322e-008 0.99999988 0 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 0.99999988 0.99999976 0.74999988 -1.1920929e-007 0.24999994
		 -1.1920929e-007 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.74999988
		 -5.9604645e-008 0.24999994 -5.9604645e-008 0.75 1 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 136 ".vt[0:135]"  7.3205331e-016 45 3.5388359e-016 7.3205331e-016 15 -45
		 7.3205331e-016 5 -45 7.3205331e-016 25 -45 7.3205331e-016 35 -45 7.3205331e-016 45 -45
		 7.3205331e-016 45 -35 7.3205331e-016 45 -25 7.3205331e-016 45 -15 7.3205331e-016 45 -5
		 7.7715612e-016 25 -5 8.2225893e-016 35 -5 8.4307561e-016 35 -15 8.7430063e-016 35 -25
		 8.8817842e-016 35 -35 8.7430063e-016 25 -35 8.4307561e-016 15 -35 8.2225893e-016 5 -35
		 7.7715612e-016 5 -25 45 15 3.5388359e-016 45 5 3.5388359e-016 5 45 3.5388359e-016
		 15 45 3.5388359e-016 45 25 3.5388359e-016 25 45 4.6490589e-016 45 35 3.5388359e-016
		 35 45 4.6490589e-016 45 45 3.5388359e-016 35 35 3.0878078e-016 25 35 3.2265857e-016
		 15 35 2.4286129e-016 5 35 2.6367797e-016 5 25 3.0878078e-016 25 5 4.1980308e-016
		 35 5 6.1756156e-016 35 15 4.8572257e-016 35 25 2.1163626e-016 5 5 -25 25 5 -5 15 5 -25
		 15 5 -15 25 5 -15 5 25 -5 15 45 -15 15 45 -25 25 45 -25 25 45 -15 5 5 -35 5 5 -45
		 15 5 -45 15 5 -35 5 -1.4883927e-015 -45 15 -1.4883927e-015 -45 45 -1.4883927e-015 -5
		 45 5 -5 45 5 -15 45 -1.4883927e-015 -15 35 5 -5 35 5 -15 5 35 -5 5 45 -5 5 45 -15
		 5 35 -15 5 15 -35 5 15 -45 45 15 -5 35 15 -5 15 45 -5 15 35 -5 5 25 -35 5 25 -45
		 25 -1.599415e-015 -45 25 5 -45 45 25 -5 35 25 -5 45 5 -25 45 -1.599415e-015 -25 5 45 -25
		 5 35 -25 25 45 -5 5 35 -35 5 35 -45 25 5 -35 35 5 -45 35 5 -35 35 -1.599415e-015 -45
		 45 35 -5 35 35 -5 45 5 -35 45 -1.599415e-015 -35 35 5 -25 5 45 -35 35 45 -5 25 35 -5
		 45 45 -5 45 -1.4883927e-015 -45 45 5 -45 5 45 -45 25 -1.5543122e-015 -5 25 5 -25
		 5 -1.5543122e-015 -25 5 -1.7520707e-015 -35 15 -1.6202317e-015 -35 25 -1.4571677e-015 -35
		 35 -1.5543122e-015 -35 35 -1.4571677e-015 -25 35 -1.3773704e-015 -15 35 -1.5092094e-015 -5
		 15 15 -15 25 15 -15 25 15 -25 15 15 -25 15 25 -15 25 25 -15 45 15 -15 45 25 -15 45 25 -25
		 45 15 -25 25 15 -45 25 25 -45 15 25 -45 15 15 -45 15 25 -25 25 15 -35 15 15 -35 15 25 -35
		 25 25 -35 25 25 -25 35 15 -15 35 15 -25 35 25 -25 35 25 -15 15 35 -15 25 35 -15 25 35 -25
		 15 35 -25;
	setAttr -s 250 ".ed";
	setAttr ".ed[0:165]"  2 1 0 1 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0 9 0 0
		 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 20 19 0 22 21 0 19 23 0
		 24 22 0 23 25 0 26 24 0 27 26 0 25 27 0 21 0 0 28 29 0 29 30 0 30 31 0 31 32 0 33 34 0
		 34 35 0 35 36 0 36 28 0 40 39 0 40 41 0 43 44 0 44 45 0 46 45 0 43 46 1 47 48 0 48 49 0
		 50 49 0 47 50 0 48 51 0 51 52 0 49 52 1 54 53 0 54 55 0 55 56 1 56 53 0 57 54 0 57 58 0
		 58 55 0 59 60 0 60 61 0 62 61 1 59 62 0 47 63 0 63 64 1 48 64 0 54 65 0 66 65 1 57 66 0
		 20 54 0 19 65 1 21 60 1 60 67 0 22 67 1 59 68 0 68 67 0 63 69 0 69 70 1 64 70 0 52 71 0
		 72 71 1 49 72 0 65 73 0 74 73 1 66 74 0 23 73 1 55 75 0 75 76 1 76 56 0 61 77 0 78 77 1
		 62 78 0 67 79 1 24 79 1 69 80 0 80 81 0 70 81 0 82 72 0 72 83 0 84 83 1 82 84 0 71 85 0
		 83 85 1 73 86 0 87 86 0 74 87 0 25 86 1 75 88 0 88 89 1 89 76 0 90 75 0 90 84 0 84 88 1
		 77 91 0 80 91 0 78 80 0 79 92 0 26 92 1 93 79 0 93 87 0 87 92 0 92 94 0 27 94 0 86 94 0
		 85 95 0 96 95 0 83 96 0 88 96 0 95 89 0 48 2 0 64 1 1 70 3 1 81 4 1 81 97 0 97 5 0
		 91 6 1 91 97 0 77 7 1 61 8 1 60 9 1 42 10 0 42 59 0 59 11 0 62 12 1 78 13 1 80 14 0
		 69 15 1 63 16 1 47 17 0 37 18 0 37 47 0 38 98 0 41 99 0 39 99 0 37 100 0 100 101 0
		 47 101 0 101 102 0 50 102 1 102 103 0 50 82 1 82 103 1 103 104 0 84 104 0 90 105 1
		 104 105 0 58 106 1 105 106 0 58 90 1 57 107 0 106 107 0;
	setAttr ".ed[166:249]" 107 98 0 38 57 0 29 93 1 28 87 0 30 68 1 68 93 1 31 59 0
		 32 42 0 33 38 0 34 57 0 35 66 1 36 74 1 40 108 0 108 109 1 41 109 0 109 110 0 99 110 0
		 111 110 0 39 111 0 108 111 1 108 112 0 112 113 1 109 113 1 114 115 0 115 116 0 117 116 0
		 114 117 0 118 119 0 120 119 0 121 120 0 121 118 0 111 122 1 112 122 1 110 123 0 124 123 0
		 111 124 0 124 125 1 122 125 0 125 126 1 127 126 0 122 127 0 123 126 1 110 127 0 124 121 1
		 125 120 0 126 119 0 123 118 1 109 128 0 128 129 0 110 129 0 129 130 1 127 130 0 131 130 1
		 113 131 0 113 127 0 128 131 1 129 117 1 130 116 0 131 115 0 128 114 1 82 123 0 72 118 0
		 50 124 0 49 121 0 75 117 0 90 129 0 58 128 0 55 114 0 112 132 0 132 133 0 113 133 0
		 133 134 1 127 134 0 135 134 1 122 135 0 132 135 1 133 46 1 134 45 0 135 44 0 132 43 1
		 67 43 0 79 46 0 93 133 0 68 132 0;
	setAttr -s 105 -ch 420 ".fc[0:104]" -type "polyFaces" 
		f 4 39 38 -38 -37
		mu 0 4 4 5 27 28
		f 4 43 42 -42 -41
		mu 0 4 44 45 46 368
		f 4 41 46 -46 -45
		mu 0 4 6 7 8 9
		f 4 -51 -50 -49 47
		mu 0 4 3 14 401 402
		f 4 48 -54 -53 51
		mu 0 4 67 68 82 86
		f 4 57 56 -56 -55
		mu 0 4 25 332 333 334
		f 4 60 -60 -59 40
		mu 0 4 26 31 32 345
		f 4 63 62 -62 -52
		mu 0 4 12 19 313 314
		f 4 61 -66 -18 64
		mu 0 4 34 41 42 277
		f 4 -19 68 -68 -67
		mu 0 4 87 88 90 361
		f 4 67 -71 -70 54
		mu 0 4 21 22 23 295
		f 4 73 -73 -72 59
		mu 0 4 43 58 343 344
		f 4 76 75 -75 -47
		mu 0 4 29 30 269 270
		f 4 79 78 -78 -63
		mu 0 4 35 36 307 308
		f 4 77 -81 -20 65
		mu 0 4 59 60 275 276
		f 4 -84 -83 -82 49
		mu 0 4 10 13 62 63
		f 4 86 85 -85 -57
		mu 0 4 16 17 64 65
		f 4 -21 88 -88 -69
		mu 0 4 357 358 359 360
		f 4 91 -91 -90 72
		mu 0 4 66 76 293 294
		f 4 95 94 -94 -93
		mu 0 4 93 94 95 268
		f 4 93 97 -97 -76
		mu 0 4 37 38 266 267
		f 4 100 99 -99 -79
		mu 0 4 39 40 305 306
		f 4 98 -102 -22 80
		mu 0 4 77 78 273 274
		f 4 -105 -104 -103 82
		mu 0 4 278 279 280 281
		f 4 102 -108 -107 105
		mu 0 4 97 259 260 261
		f 4 110 109 -109 -86
		mu 0 4 285 286 287 288
		f 4 -23 112 -112 -89
		mu 0 4 91 92 365 366
		f 4 111 -116 -115 113
		mu 0 4 47 48 49 304
		f 4 -24 117 -117 -113
		mu 0 4 98 100 101 102
		f 4 118 -118 -25 101
		mu 0 4 130 131 271 272
		f 4 121 120 -120 -98
		mu 0 4 50 51 264 265
		f 4 122 -122 -95 107
		mu 0 4 96 103 262 263
		f 4 -124 -121 -123 103
		mu 0 4 84 85 132 133
		f 4 -126 -61 124 0
		mu 0 4 54 326 327 328
		f 4 -127 -74 125 1
		mu 0 4 52 53 329 330
		f 4 -128 -92 126 2
		mu 0 4 55 56 57 331
		f 4 -130 -129 127 3
		mu 0 4 61 296 297 298
		f 4 131 129 4 -131
		mu 0 4 108 109 347 348
		f 4 108 130 5 -133
		mu 0 4 107 110 349 350
		f 4 84 132 6 -134
		mu 0 4 111 112 351 352
		f 4 55 133 7 -135
		mu 0 4 113 114 353 354
		f 4 66 134 8 -26
		mu 0 4 118 119 355 356
		f 4 9 -138 -137 135
		mu 0 4 24 69 70 299
		f 4 -139 -58 137 10
		mu 0 4 120 121 126 127
		f 4 -140 -87 138 11
		mu 0 4 128 129 415 416
		f 4 -141 -111 139 12
		mu 0 4 170 171 411 412
		f 4 89 140 13 -142
		mu 0 4 72 74 75 417
		f 4 71 141 14 -143
		mu 0 4 386 387 388 389
		f 4 58 142 15 -144
		mu 0 4 79 80 81 83
		f 4 145 143 16 -145
		mu 0 4 2 172 175 367
		f 4 -152 -146 149 150
		mu 0 4 33 143 148 346
		f 4 -154 -44 151 152
		mu 0 4 18 20 144 145
		f 4 -157 -156 153 154
		mu 0 4 71 146 395 396
		f 4 -159 -96 156 157
		mu 0 4 73 147 393 394
		f 4 106 158 160 -160
		mu 0 4 150 151 391 392
		f 4 163 159 162 -162
		mu 0 4 149 156 398 399
		f 4 52 161 165 -165
		mu 0 4 157 158 164 400
		f 4 167 164 166 -147
		mu 0 4 0 11 104 105
		f 4 114 -170 26 168
		mu 0 4 200 374 375 376
		f 4 171 -169 27 170
		mu 0 4 201 381 382 383
		f 4 69 -171 28 172
		mu 0 4 205 206 384 385
		f 4 136 -173 29 173
		mu 0 4 1 15 173 174
		f 4 175 -168 -175 30
		mu 0 4 233 234 257 258
		f 4 176 -64 -176 31
		mu 0 4 159 178 405 406
		f 4 177 -80 -177 32
		mu 0 4 176 177 413 414
		f 4 169 -101 -178 33
		mu 0 4 179 180 181 182
		f 4 35 180 -180 -179
		mu 0 4 106 115 403 404
		f 4 147 182 -182 -181
		mu 0 4 142 189 190 397
		f 4 -149 184 183 -183
		mu 0 4 99 122 123 372
		f 4 -35 178 185 -185
		mu 0 4 165 191 409 410
		f 4 179 188 -188 -187
		mu 0 4 116 117 124 125
		f 4 192 191 -191 -190
		mu 0 4 194 196 197 198
		f 4 -197 195 194 -194
		mu 0 4 134 135 136 137
		f 4 -186 186 198 -198
		mu 0 4 192 193 199 202
		f 4 -184 201 200 -200
		mu 0 4 236 237 238 373
		f 4 197 203 -203 -202
		mu 0 4 339 340 341 342
		f 4 206 205 -205 -204
		mu 0 4 239 241 242 371
		f 4 -209 199 207 -206
		mu 0 4 289 290 291 292
		f 4 202 210 -196 -210
		mu 0 4 203 207 211 212
		f 4 204 211 -195 -211
		mu 0 4 243 244 369 370
		f 4 -208 212 193 -212
		mu 0 4 209 210 213 214
		f 4 181 215 -215 -214
		mu 0 4 235 245 246 247
		f 4 208 217 -217 -216
		mu 0 4 139 140 324 325
		f 4 -221 219 218 -218
		mu 0 4 240 248 249 250
		f 4 -189 213 221 -220
		mu 0 4 309 310 311 312
		f 4 216 223 -192 -223
		mu 0 4 153 154 322 323
		f 4 -219 224 190 -224
		mu 0 4 251 252 379 380
		f 4 -222 225 189 -225
		mu 0 4 141 152 155 160
		f 4 92 227 -213 -227
		mu 0 4 215 282 283 284
		f 4 155 226 -201 -229
		mu 0 4 187 188 255 256
		f 4 -43 228 209 -230
		mu 0 4 216 217 407 408
		f 4 -106 231 222 -231
		mu 0 4 161 162 320 321
		f 4 -164 232 214 -232
		mu 0 4 218 219 318 319
		f 4 53 233 -226 -233
		mu 0 4 163 166 377 378
		f 4 187 236 -236 -235
		mu 0 4 167 168 300 301
		f 4 220 238 -238 -237
		mu 0 4 208 220 221 222
		f 4 -207 240 239 -239
		mu 0 4 138 169 183 184
		f 4 -199 234 241 -241
		mu 0 4 335 336 337 338
		f 4 237 243 -39 -243
		mu 0 4 225 315 316 317
		f 4 -240 244 37 -244
		mu 0 4 185 186 302 303
		f 4 -242 245 36 -245
		mu 0 4 224 228 418 419
		f 4 87 247 -40 -247
		mu 0 4 89 362 363 364
		f 4 -172 249 235 -249
		mu 0 4 195 204 253 254
		f 4 -114 248 242 -248
		mu 0 4 226 229 230 390
		f 4 246 -246 -250 70
		mu 0 4 223 227 231 232;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "environment_outer" -p "environmentsGRP";
createNode mesh -n "environment_outerShape" -p "environment_outer";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 225 "f[0]" "f[2]" "f[5]" "f[10]" "f[12]" "f[15]" "f[20]" "f[23]" "f[26:27]" "f[31]" "f[33:34]" "f[36]" "f[39]" "f[41]" "f[43:44]" "f[46:49]" "f[51]" "f[53]" "f[55]" "f[57]" "f[104:105]" "f[107:108]" "f[111]" "f[113]" "f[121]" "f[123]" "f[125]" "f[127:128]" "f[131:132]" "f[134]" "f[137]" "f[142]" "f[144]" "f[147]" "f[152]" "f[155]" "f[158:159]" "f[163]" "f[165:166]" "f[168]" "f[171]" "f[173]" "f[175:176]" "f[178:181]" "f[183]" "f[185]" "f[187]" "f[189]" "f[236:237]" "f[239:240]" "f[243]" "f[245]" "f[253]" "f[255]" "f[257]" "f[259:260]" "f[263:264]" "f[266]" "f[269]" "f[274]" "f[276]" "f[279]" "f[284]" "f[287]" "f[290:291]" "f[295]" "f[297:298]" "f[300]" "f[303]" "f[305]" "f[307:308]" "f[310:313]" "f[315]" "f[317]" "f[319]" "f[321]" "f[368:369]" "f[371:372]" "f[375]" "f[377]" "f[385]" "f[387]" "f[389]" "f[391:392]" "f[395:396]" "f[398]" "f[401]" "f[406]" "f[408]" "f[411]" "f[416]" "f[419]" "f[422:423]" "f[427]" "f[429:430]" "f[432]" "f[435]" "f[437]" "f[439:440]" "f[442:445]" "f[447]" "f[449]" "f[451]" "f[453]" "f[500:501]" "f[503:504]" "f[507]" "f[509]" "f[517]" "f[519]" "f[521]" "f[523:524]" "f[527:528]" "f[530]" "f[533]" "f[538]" "f[540]" "f[543]" "f[548]" "f[551]" "f[554:555]" "f[559]" "f[561:562]" "f[564]" "f[567]" "f[569]" "f[571:572]" "f[574:577]" "f[579]" "f[581]" "f[583]" "f[585]" "f[632:633]" "f[635:636]" "f[639]" "f[641]" "f[649]" "f[651]" "f[653]" "f[655:656]" "f[659:660]" "f[662]" "f[665]" "f[670]" "f[672]" "f[675]" "f[680]" "f[683]" "f[686:687]" "f[691]" "f[693:694]" "f[696]" "f[699]" "f[701]" "f[703:704]" "f[706:709]" "f[711]" "f[713]" "f[715]" "f[717]" "f[764:765]" "f[767:768]" "f[771]" "f[773]" "f[781]" "f[783]" "f[785]" "f[787:788]" "f[791:792]" "f[794]" "f[797]" "f[802]" "f[804]" "f[807]" "f[812]" "f[815]" "f[818:819]" "f[823]" "f[825:826]" "f[828]" "f[831]" "f[833]" "f[835:836]" "f[838:841]" "f[843]" "f[845]" "f[847]" "f[849]" "f[896:897]" "f[899:900]" "f[903]" "f[905]" "f[913]" "f[915]" "f[917]" "f[919:920]" "f[923:924]" "f[926]" "f[929]" "f[934]" "f[936]" "f[939]" "f[944]" "f[947]" "f[950:951]" "f[955]" "f[957:958]" "f[960]" "f[963]" "f[965]" "f[967:968]" "f[970:973]" "f[975]" "f[977]" "f[979]" "f[981]" "f[1028:1029]" "f[1031:1032]" "f[1035]" "f[1037]" "f[1045]" "f[1047]" "f[1049]" "f[1051:1052]" "f[1055]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 224 "f[1]" "f[3:4]" "f[6:9]" "f[11]" "f[13:14]" "f[16:19]" "f[21:22]" "f[24:25]" "f[28:30]" "f[32]" "f[35]" "f[37:38]" "f[40]" "f[42]" "f[45]" "f[50]" "f[52]" "f[54]" "f[56]" "f[58:103]" "f[106]" "f[109:110]" "f[112]" "f[114:120]" "f[122]" "f[124]" "f[126]" "f[129:130]" "f[133]" "f[135:136]" "f[138:141]" "f[143]" "f[145:146]" "f[148:151]" "f[153:154]" "f[156:157]" "f[160:162]" "f[164]" "f[167]" "f[169:170]" "f[172]" "f[174]" "f[177]" "f[182]" "f[184]" "f[186]" "f[188]" "f[190:235]" "f[238]" "f[241:242]" "f[244]" "f[246:252]" "f[254]" "f[256]" "f[258]" "f[261:262]" "f[265]" "f[267:268]" "f[270:273]" "f[275]" "f[277:278]" "f[280:283]" "f[285:286]" "f[288:289]" "f[292:294]" "f[296]" "f[299]" "f[301:302]" "f[304]" "f[306]" "f[309]" "f[314]" "f[316]" "f[318]" "f[320]" "f[322:367]" "f[370]" "f[373:374]" "f[376]" "f[378:384]" "f[386]" "f[388]" "f[390]" "f[393:394]" "f[397]" "f[399:400]" "f[402:405]" "f[407]" "f[409:410]" "f[412:415]" "f[417:418]" "f[420:421]" "f[424:426]" "f[428]" "f[431]" "f[433:434]" "f[436]" "f[438]" "f[441]" "f[446]" "f[448]" "f[450]" "f[452]" "f[454:499]" "f[502]" "f[505:506]" "f[508]" "f[510:516]" "f[518]" "f[520]" "f[522]" "f[525:526]" "f[529]" "f[531:532]" "f[534:537]" "f[539]" "f[541:542]" "f[544:547]" "f[549:550]" "f[552:553]" "f[556:558]" "f[560]" "f[563]" "f[565:566]" "f[568]" "f[570]" "f[573]" "f[578]" "f[580]" "f[582]" "f[584]" "f[586:631]" "f[634]" "f[637:638]" "f[640]" "f[642:648]" "f[650]" "f[652]" "f[654]" "f[657:658]" "f[661]" "f[663:664]" "f[666:669]" "f[671]" "f[673:674]" "f[676:679]" "f[681:682]" "f[684:685]" "f[688:690]" "f[692]" "f[695]" "f[697:698]" "f[700]" "f[702]" "f[705]" "f[710]" "f[712]" "f[714]" "f[716]" "f[718:763]" "f[766]" "f[769:770]" "f[772]" "f[774:780]" "f[782]" "f[784]" "f[786]" "f[789:790]" "f[793]" "f[795:796]" "f[798:801]" "f[803]" "f[805:806]" "f[808:811]" "f[813:814]" "f[816:817]" "f[820:822]" "f[824]" "f[827]" "f[829:830]" "f[832]" "f[834]" "f[837]" "f[842]" "f[844]" "f[846]" "f[848]" "f[850:895]" "f[898]" "f[901:902]" "f[904]" "f[906:912]" "f[914]" "f[916]" "f[918]" "f[921:922]" "f[925]" "f[927:928]" "f[930:933]" "f[935]" "f[937:938]" "f[940:943]" "f[945:946]" "f[948:949]" "f[952:954]" "f[956]" "f[959]" "f[961:962]" "f[964]" "f[966]" "f[969]" "f[974]" "f[976]" "f[978]" "f[980]" "f[982:1027]" "f[1030]" "f[1033:1034]" "f[1036]" "f[1038:1044]" "f[1046]" "f[1048]" "f[1050]" "f[1053:1054]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 296 "f[7]" "f[9]" "f[11]" "f[13:14]" "f[16]" "f[18]" "f[21:22]" "f[24]" "f[32]" "f[35]" "f[37]" "f[42]" "f[54]" "f[56]" "f[58]" "f[60]" "f[63]" "f[65:66]" "f[68]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81:83]" "f[90]" "f[92]" "f[95]" "f[97:101]" "f[103]" "f[106]" "f[112]" "f[115]" "f[117:118]" "f[120]" "f[126]" "f[130]" "f[139]" "f[141]" "f[143]" "f[145:146]" "f[148]" "f[150]" "f[153:154]" "f[156]" "f[164]" "f[167]" "f[169]" "f[174]" "f[186]" "f[188]" "f[190]" "f[192]" "f[195]" "f[197:198]" "f[200]" "f[203]" "f[205]" "f[207]" "f[209]" "f[211]" "f[213:215]" "f[222]" "f[224]" "f[227]" "f[229:233]" "f[235]" "f[238]" "f[244]" "f[247]" "f[249:250]" "f[252]" "f[258]" "f[262]" "f[271]" "f[273]" "f[275]" "f[277:278]" "f[280]" "f[282]" "f[285:286]" "f[288]" "f[296]" "f[299]" "f[301]" "f[306]" "f[318]" "f[320]" "f[322]" "f[324]" "f[327]" "f[329:330]" "f[332]" "f[335]" "f[337]" "f[339]" "f[341]" "f[343]" "f[345:347]" "f[354]" "f[356]" "f[359]" "f[361:365]" "f[367]" "f[370]" "f[376]" "f[379]" "f[381:382]" "f[384]" "f[390]" "f[394]" "f[403]" "f[405]" "f[407]" "f[409:410]" "f[412]" "f[414]" "f[417:418]" "f[420]" "f[428]" "f[431]" "f[433]" "f[438]" "f[450]" "f[452]" "f[454]" "f[456]" "f[459]" "f[461:462]" "f[464]" "f[467]" "f[469]" "f[471]" "f[473]" "f[475]" "f[477:479]" "f[486]" "f[488]" "f[491]" "f[493:497]" "f[499]" "f[502]" "f[508]" "f[511]" "f[513:514]" "f[516]" "f[522]" "f[526]" "f[535]" "f[537]" "f[539]" "f[541:542]" "f[544]" "f[546]" "f[549:550]" "f[552]" "f[560]" "f[563]" "f[565]" "f[570]" "f[582]" "f[584]" "f[586]" "f[588]" "f[591]" "f[593:594]" "f[596]" "f[599]" "f[601]" "f[603]" "f[605]" "f[607]" "f[609:611]" "f[618]" "f[620]" "f[623]" "f[625:629]" "f[631]" "f[634]" "f[640]" "f[643]" "f[645:646]" "f[648]" "f[654]" "f[658]" "f[667]" "f[669]" "f[671]" "f[673:674]" "f[676]" "f[678]" "f[681:682]" "f[684]" "f[692]" "f[695]" "f[697]" "f[702]" "f[714]" "f[716]" "f[718]" "f[720]" "f[723]" "f[725:726]" "f[728]" "f[731]" "f[733]" "f[735]" "f[737]" "f[739]" "f[741:743]" "f[750]" "f[752]" "f[755]" "f[757:761]" "f[763]" "f[766]" "f[772]" "f[775]" "f[777:778]" "f[780]" "f[786]" "f[790]" "f[799]" "f[801]" "f[803]" "f[805:806]" "f[808]" "f[810]" "f[813:814]" "f[816]" "f[824]" "f[827]" "f[829]" "f[834]" "f[846]" "f[848]" "f[850]" "f[852]" "f[855]" "f[857:858]" "f[860]" "f[863]" "f[865]" "f[867]" "f[869]" "f[871]" "f[873:875]" "f[882]" "f[884]" "f[887]" "f[889:893]" "f[895]" "f[898]" "f[904]" "f[907]" "f[909:910]" "f[912]" "f[918]" "f[922]" "f[931]" "f[933]" "f[935]" "f[937:938]" "f[940]" "f[942]" "f[945:946]" "f[948]" "f[956]" "f[959]" "f[961]" "f[966]" "f[978]" "f[980]" "f[982]" "f[984]" "f[987]" "f[989:990]" "f[992]" "f[995]" "f[997]" "f[999]" "f[1001]" "f[1003]" "f[1005:1007]" "f[1014]" "f[1016]" "f[1019]" "f[1021:1025]" "f[1027]" "f[1030]" "f[1036]" "f[1039]" "f[1041:1042]" "f[1044]" "f[1050]" "f[1054]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 280 "f[1]" "f[3:4]" "f[6]" "f[8]" "f[17]" "f[19]" "f[25]" "f[28:30]" "f[38]" "f[40]" "f[45]" "f[50]" "f[52]" "f[59]" "f[61:62]" "f[64]" "f[67]" "f[69:70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[84:89]" "f[91]" "f[93:94]" "f[96]" "f[102]" "f[109:110]" "f[114]" "f[116]" "f[119]" "f[122]" "f[124]" "f[129]" "f[133]" "f[135:136]" "f[138]" "f[140]" "f[149]" "f[151]" "f[157]" "f[160:162]" "f[170]" "f[172]" "f[177]" "f[182]" "f[184]" "f[191]" "f[193:194]" "f[196]" "f[199]" "f[201:202]" "f[204]" "f[206]" "f[208]" "f[210]" "f[212]" "f[216:221]" "f[223]" "f[225:226]" "f[228]" "f[234]" "f[241:242]" "f[246]" "f[248]" "f[251]" "f[254]" "f[256]" "f[261]" "f[265]" "f[267:268]" "f[270]" "f[272]" "f[281]" "f[283]" "f[289]" "f[292:294]" "f[302]" "f[304]" "f[309]" "f[314]" "f[316]" "f[323]" "f[325:326]" "f[328]" "f[331]" "f[333:334]" "f[336]" "f[338]" "f[340]" "f[342]" "f[344]" "f[348:353]" "f[355]" "f[357:358]" "f[360]" "f[366]" "f[373:374]" "f[378]" "f[380]" "f[383]" "f[386]" "f[388]" "f[393]" "f[397]" "f[399:400]" "f[402]" "f[404]" "f[413]" "f[415]" "f[421]" "f[424:426]" "f[434]" "f[436]" "f[441]" "f[446]" "f[448]" "f[455]" "f[457:458]" "f[460]" "f[463]" "f[465:466]" "f[468]" "f[470]" "f[472]" "f[474]" "f[476]" "f[480:485]" "f[487]" "f[489:490]" "f[492]" "f[498]" "f[505:506]" "f[510]" "f[512]" "f[515]" "f[518]" "f[520]" "f[525]" "f[529]" "f[531:532]" "f[534]" "f[536]" "f[545]" "f[547]" "f[553]" "f[556:558]" "f[566]" "f[568]" "f[573]" "f[578]" "f[580]" "f[587]" "f[589:590]" "f[592]" "f[595]" "f[597:598]" "f[600]" "f[602]" "f[604]" "f[606]" "f[608]" "f[612:617]" "f[619]" "f[621:622]" "f[624]" "f[630]" "f[637:638]" "f[642]" "f[644]" "f[647]" "f[650]" "f[652]" "f[657]" "f[661]" "f[663:664]" "f[666]" "f[668]" "f[677]" "f[679]" "f[685]" "f[688:690]" "f[698]" "f[700]" "f[705]" "f[710]" "f[712]" "f[719]" "f[721:722]" "f[724]" "f[727]" "f[729:730]" "f[732]" "f[734]" "f[736]" "f[738]" "f[740]" "f[744:749]" "f[751]" "f[753:754]" "f[756]" "f[762]" "f[769:770]" "f[774]" "f[776]" "f[779]" "f[782]" "f[784]" "f[789]" "f[793]" "f[795:796]" "f[798]" "f[800]" "f[809]" "f[811]" "f[817]" "f[820:822]" "f[830]" "f[832]" "f[837]" "f[842]" "f[844]" "f[851]" "f[853:854]" "f[856]" "f[859]" "f[861:862]" "f[864]" "f[866]" "f[868]" "f[870]" "f[872]" "f[876:881]" "f[883]" "f[885:886]" "f[888]" "f[894]" "f[901:902]" "f[906]" "f[908]" "f[911]" "f[914]" "f[916]" "f[921]" "f[925]" "f[927:928]" "f[930]" "f[932]" "f[941]" "f[943]" "f[949]" "f[952:954]" "f[962]" "f[964]" "f[969]" "f[974]" "f[976]" "f[983]" "f[985:986]" "f[988]" "f[991]" "f[993:994]" "f[996]" "f[998]" "f[1000]" "f[1002]" "f[1004]" "f[1008:1013]" "f[1015]" "f[1017:1018]" "f[1020]" "f[1026]" "f[1033:1034]" "f[1038]" "f[1040]" "f[1043]" "f[1046]" "f[1048]" "f[1053]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4224 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.25 -2.0861626e-007 -2.3841858e-007
		 0.99999988 0.99999988 0 -2.3841858e-007 0.99999988 -2.9802322e-008 0.99999976 -2.3841858e-007
		 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007 0.99999976 0.24999976
		 0.99999988 0.24999976 -2.9802322e-008 0.74999976 0 0.74999976 0.99999988 0.24999988
		 0 0.24999988 1 0.24999988 1.1920929e-007 0.74999988 -2.9802322e-008 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 0 0.99999988 0 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 1 0.99999988 0 0.99999988 0.75 2.3841858e-007 0.74999988 1.000000238419
		 0.75 0.99999988 0.25 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.99999988
		 -1.1920929e-007 0.99999988 0.99999988 0.75 -1.7881393e-007 0.74999988 0.99999976
		 0.24999994 0.99999976 -2.3841858e-007 -5.9604645e-008 0.99999988 0.99999976 -2.9802322e-008
		 0 0.99999988 0 0.99999988 0.99999976 0 -1.4901161e-007 -2.3841858e-007 0.99999988
		 -2.3841858e-007 -8.9406967e-008 0.99999976 -8.9406967e-008 0.99999952 2.9802322e-007
		 0 0.99999976 0 0 1 2.9802322e-007 0.99999988 4.1723251e-007 0.99999976 0 0.99999976
		 0.99999976 0.99999976 1.000000357628 -5.9604645e-008 0 0.99999976 0 0 0.99999988
		 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999988 0.99999976 3.5762787e-007
		 0.99999976 1.000000357628 -8.9406967e-008 0.99999988 0 0.99999988 0 -1.4901161e-007
		 0.99999988 0 0.99999988 0.99999988 0.99999988 0 0.99999976 1 0.99999976 0.99999988
		 0 -1.1920929e-007 -8.9406967e-008 0.99999988 -5.9604645e-008 -2.9802322e-008 -2.0861626e-007
		 0.99999988 0 0.99999988 1 -2.9802322e-008 1 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999976 -2.3841858e-007
		 0.99999976 -5.9604645e-008 0.99999976 0.99999988 1 5.9604645e-008 1 0.99999976 0
		 0.99999976 -2.3841858e-007 1 -2.0861626e-007 -2.3841858e-007 0.99999952 -2.3841858e-007
		 -2.3841858e-007 -5.9604645e-008 1 -2.0861626e-007 0.99999952 0.99999976 -4.7683716e-007
		 0.99999976 0 -2.3841858e-007 -2.3841858e-007 1.000000476837 -2.3841858e-007 4.1723251e-007
		 0.99999952 1.000000238419 -2.3841858e-007 1.000000476837 1 1.000000238419 -2.3841858e-007
		 4.1723251e-007 -5.9604645e-008 0.99999976 -5.9604645e-008 0 0.99999964 0 0.99999964
		 0.99999976 -1.1920929e-007 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999976 1
		 -5.9604645e-008 1 0 0.99999988 0 5.9604645e-008 1 1.1920929e-007 0.99999988 1 1 0
		 -1.1920929e-007 1 0 0.99999976 0 -2.9802322e-008 0 1 0 0 0 1 0 0 0.99999988 0 0.99999988
		 1 -2.3841858e-007 0.99999988 0.99999988 0 0.99999988 1 1 -5.9604645e-008 1 0.99999976
		 0 0.99999976 -1.1920929e-007 1 1 -2.9802322e-008 1 0.99999988 0 0.99999988 1 0 0
		 0.99999976 0 1 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999988 0 0 0.99999976 0.99999976
		 0 0.99999976 0 0 1 0.99999988 0 1 0.24999988 1 0.24999988 0 0.74999988 -1.1920929e-007
		 0.74999988 0.99999976 0.24999994 0.99999976 0.99999988 0 0.99999988 0.99999976 1
		 -5.9604645e-008 1 0.99999976 0.24999994 -1.1920929e-007 0.24999988 0.99999976 0.24999988
		 -5.9604645e-008 0.74999988 -5.9604645e-008 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -2.3841858e-007 0.99999988 -2.3841858e-007 -2.9802322e-008 1 -2.9802322e-008 1 0.99999988
		 -2.3841858e-007 1 1 0 -2.3841858e-007 0 1 0 -2.3841858e-007 1 -2.3841858e-007 0.99999976
		 -2.3841858e-007 -2.3841858e-007 -2.3841858e-007 0 1 -2.3841858e-007 1 0.99999976
		 0 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976 0.99999976 0 0.99999976 0.74999988
		 0.99999976 0.24999988 -2.3841858e-007 -2.3841858e-007 0 0.74999988 -2.3841858e-007
		 0.99999976 0 0.74999988 0.99999976 0.99999976 -2.9802322e-008 0.99999976 0.99999976
		 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999976 1 0 1 0.99999988 0 0.99999988
		 0 -5.9604645e-008 -2.3841858e-007 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 0.99999976 -2.3841858e-007 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0 0.99999976 0.74999988 0 0.24999994 -2.3841858e-007
		 0.74999988 1 0.74999988 -2.3841858e-007 0.74999988 0.99999976 0 -5.9604645e-008 0.24999976
		 -2.9802322e-007 0.74999988 -5.9604645e-008 0.74999976 -2.682209e-007 0.74999988 1
		 0.74999976 0.99999976 -2.9802322e-008 0 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0 -8.9406967e-008 0.99999976 -2.9802322e-008 0.99999976 5.9604645e-008 -5.9604645e-008
		 -2.3841858e-007 0 -2.9802322e-008 0.99999976 -2.9802322e-008 0 -1.1920929e-007 0.99999988
		 0.99999976 -5.9604645e-008 5.9604645e-008 0.99999988 1.1920929e-007 0.99999976 1
		 0 -2.9802322e-008 0.99999976 0 0.99999976 1 0 0.99999988 0.99999988 0.99999976 0
		 -5.9604645e-008 0.99999976 -5.9604645e-008 -1.1920929e-007 0.99999976 0.99999976
		 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008 0.99999976 0.99999988 -5.9604645e-008
		 0 0.99999976 0 -5.9604645e-008 1 0 1 0.99999988 0 0.99999976 0 -5.9604645e-008 1
		 0 1 1 0 -8.9406967e-008 1 -5.9604645e-008 1 0.99999988 0 0.99999976 1 0.99999976;
	setAttr ".uvst[0].uvsp[250:499]" 1 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976
		 0.99999976 0 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 0.99999976 0.99999976
		 0.99999988 -5.9604645e-008 0 -5.9604645e-008 1 -1.1920929e-007 0.99999988 -1.1920929e-007
		 0.99999988 -5.9604645e-008 -1.4901161e-007 -5.9604645e-008 -1.4901161e-007 -1.1920929e-007
		 1.1920929e-007 0.99999976 1.7881393e-007 0 0.99999976 0 -5.9604645e-008 0.99999976
		 0.99999988 -1.1920929e-007 0.99999988 0.99999976 0.99999988 -2.3841858e-007 0.99999988
		 -2.3841858e-007 0 0 0.99999988 -1.1920929e-007 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0.99999976 0 0.99999976 0.99999988 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.24999988
		 1.1920929e-007 0.74999988 1.1920929e-007 0.24999994 0 0.74999988 0 0.99999988 -2.9802322e-008
		 0.99999988 0.99999988 0.99999988 0 0.99999988 0.99999976 0 0.99999976 -2.9802322e-008
		 0.99999976 -2.9802322e-008 0 0 -5.9604645e-008 0 0.99999976 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0.99999988 0 1 0 1 0.99999976 0.99999988 1 1 1 0 0.99999976 0 0 1
		 1 0.99999976 0 0.99999976 1 0 1 0 0 0.99999988 0 0 0 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 0 0.99999976 0 -5.9604645e-008 1 0.99999988 0 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999976
		 0 0.99999988 0 0.99999988 0 0.99999976 0 -5.9604645e-008 -1.1920929e-007 0.99999988
		 -1.1920929e-007 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999976 1 0.24999994
		 1 0.24999988 -2.9802322e-008 0.24999976 0.99999976 0 0.99999976 0 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0 0 -1.1920929e-007 0 0 -5.9604645e-008 0 0.99999976 0
		 -5.9604645e-008 0 0.99999988 0 -2.9802322e-008 0.99999988 0 0.99999988 0.99999976
		 -2.9802322e-008 0.99999988 -2.9802322e-008 -2.9802322e-008 0.74999988 0.99999988
		 0.24999994 0.99999988 0.99999988 -5.9604645e-008 0.99999988 0.99999976 -2.3841858e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0.24999988 0.99999976
		 0.74999988 0 0.74999988 1 1 -2.9802322e-008 1 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008
		 0.99999988 0 0.99999988 1 1 0 1 1 1 0 1 0.99999976 0 1 0 0 0 1 0 0 0 0.99999976 0
		 -2.3841858e-007 0.99999976 0 0.99999976 0.99999976 0 0.99999976 1 -5.9604645e-008
		 1 0.99999976 0 0 1 0.99999976 0 0.99999976 0 -5.9604645e-008 -1.1920929e-007 0 0.99999988
		 0 0.99999976 0.99999976 -5.9604645e-008 0.99999976 0 0.99999988 0 -5.9604645e-008
		 -2.9802322e-008 0.99999988 -2.9802322e-008 -1.1920929e-007 -1.1920929e-007 0 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 1 -2.9802322e-008 1 0.99999988 0.24999994 1.000000238419 0.25 2.3841858e-007
		 0 -2.9802322e-008 1 -2.9802322e-008 0.99999988 -5.9604645e-008 0.99999988 0.99999988
		 1 -1.1920929e-007 1 0.99999988 1 0 1 0.99999976 0 1.000000238419 0 2.3841858e-007
		 -4.7683716e-007 1.000000238419 -4.7683716e-007 2.3841858e-007 0.99999988 0.99999976
		 0 0.99999976 0 0.99999976 0 0 0 1 0.99999988 1 1 0.99999988 1 0 1 1 1 5.9604645e-008
		 1 0.99999976 0.99999952 0.99999976 -2.0861626e-007 0.99999976 0.99999976 -2.9802322e-008
		 0.99999976 1 0.99999976 4.7683716e-007 0.99999976 1.000000476837 0.99999976 4.7683716e-007
		 0.99999976 1.000000476837 -2.0861626e-007 0.99999976 -2.0861626e-007 0 -2.3841858e-007
		 1.000000357628 -1.1920929e-007 3.5762787e-007 -1.1920929e-007 1.000000357628 -1.1920929e-007
		 2.9802322e-007 -2.0861626e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 -2.0861626e-007
		 0.99999988 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988 -2.0861626e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -5.9604645e-008 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.1920929e-007 0.74999988 1.1920929e-007 0.74999988 1 -2.9802322e-008 0.99999976
		 -2.9802322e-008 0 0.99999976 0.99999988 0 0.99999976 0 0 1 0 1 0.99999976 1 0 1 1
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0.99999976 -2.3841858e-007 0.99999976
		 0.99999976 0.99999976 0 0.99999976 1 0.99999976 0 0.99999976 1 0 0.99999976 0 0 -1.1920929e-007
		 1 -1.1920929e-007 0 -5.9604645e-008 1 -5.9604645e-008 0 0 -2.9802322e-008 1 -2.9802322e-008
		 0 0.99999988 0 -2.9802322e-008 0 0.99999988 0 -2.9802322e-008 0 0.99999988 0 -2.9802322e-008
		 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988 1 -2.9802322e-008 1 -2.9802322e-008
		 0 0.24999994 1 0.24999994 0 0.24999994 0.99999976 0.99999976 0.99999988 0 0.99999976
		 0 0.99999988 0 -2.9802322e-008 1 0 1 0.99999988 0.99999988 0 0.99999988 0.99999988
		 0.99999976 0.99999988 0 0.99999988 0.99999976 0.99999976 0 0.99999976 0.99999988
		 0.99999988;
	setAttr ".uvst[0].uvsp[500:749]" 0 0.99999988 1 -5.9604645e-008 1 0.99999976
		 -1.1920929e-007 -5.9604645e-008 -1.1920929e-007 0.99999976 -1.1920929e-007 0.99999988
		 -5.9604645e-008 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 1 0.99999976
		 0 0.99999976 0.99999976 0.99999976 -2.3841858e-007 0.99999988 0 1 -5.9604645e-008
		 1 0.99999976 0.99999976 -8.9406967e-008 0.99999976 0.99999988 0.99999976 -8.9406967e-008
		 0.99999976 0.99999988 0.74999988 0.99999988 0.24999994 0.99999988 0.74999988 1 0.24999988
		 1 0.99999976 0 0.99999976 0.99999976 0.99999988 1 0 1 0 0 -2.3841858e-007 0.99999988
		 -2.3841858e-007 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988
		 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 1
		 0.99999976 0 0.99999976 0 -5.9604645e-008 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 1 -2.9802322e-008
		 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 0 1 0.99999988 0 0.99999988 0 -5.9604645e-008
		 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999988 0.24999976 0.99999988
		 0.24999976 -2.9802322e-008 0.74999976 0 0.74999976 0.99999988 0.24999988 1 0.24999988
		 0 0.74999988 0 0.74999988 1 0.24999988 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007
		 0.74999988 1 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007 0.99999976 0.99999976
		 0.99999976 0.99999976 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988
		 -2.0861626e-007 0.99999988 -2.0861626e-007 -2.9802322e-008 -2.3841858e-007 0.99999976
		 -2.3841858e-007 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976
		 -2.3841858e-007 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007
		 0.99999988 -2.0861626e-007 -2.9802322e-008 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008
		 1 0.99999976 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999988 0.74999988
		 -1.1920929e-007 0.74999988 0.99999976 0.24999994 0.99999976 0.24999994 -1.1920929e-007
		 0.75 2.3841858e-007 0.74999988 1.000000238419 0.24999994 1.000000238419 0.25 2.3841858e-007
		 0.24999988 0.99999976 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.74999988
		 0.99999976 0.99999988 0 0.99999988 1 -2.9802322e-008 1 -2.9802322e-008 0 0.24999988
		 0 0.74999988 -2.9802322e-008 0.75 0.99999988 0.25 0.99999988 0.24999988 0 0.74999988
		 -2.9802322e-008 0.74999988 0.99999988 0.24999994 0.99999988 0.74999988 0 0.74999988
		 1 0.24999994 1 0.24999994 0 0.99999988 -1.1920929e-007 0.99999988 0.99999988 -2.9802322e-008
		 0.99999988 -2.9802322e-008 -1.1920929e-007 0.24999988 -2.3841858e-007 0.74999988
		 -2.3841858e-007 0.74999988 0.99999976 0.24999988 0.99999976 0.24999994 -2.3841858e-007
		 0.74999988 -2.3841858e-007 0.74999988 0.99999976 0.24999994 0.99999976 -1.1920929e-007
		 0.99999988 -1.1920929e-007 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999976
		 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007 0.74999988 1 0.24999988 1 0.24999994
		 0 0.74999988 0 0.74999988 0.99999988 0.24999994 0.99999988 0.99999988 -2.9802322e-008
		 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008 -2.9802322e-008
		 0.74999988 -5.9604645e-008 0.74999988 1 0.24999994 1 0.24999988 -2.9802322e-008 0.25
		 -2.0861626e-007 0.75 -1.7881393e-007 0.74999988 0.99999976 0.24999994 0.99999976
		 0.24999976 -2.9802322e-007 0.74999976 -2.682209e-007 0.74999976 0.99999976 0.24999976
		 0.99999976 -2.9802322e-008 0 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0.99999988
		 0 0.99999988 0 0.99999988 0.99999976 -2.9802322e-008 0.99999976 -2.9802322e-008 0
		 0 -8.9406967e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0 0.99999976 -2.9802322e-008
		 0.99999976 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 0.99999988 0 0.99999988
		 0.99999976 0 0.99999976 0 0 0 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 0 0.99999988 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999988 0
		 0.99999988 0.99999976 -8.9406967e-008 0.99999988 -5.9604645e-008 5.9604645e-008 0.99999988
		 1.1920929e-007 0.99999976 1 0 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976
		 0.99999988 0 0.99999976 0 -2.9802322e-008 0.99999976 0 0.99999976 1 0 0.99999988
		 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976 0 0.99999976 0
		 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976 0 0.99999976 -5.9604645e-008
		 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008
		 0.99999976 0 -1.1920929e-007 0.99999988 -5.9604645e-008 0.99999988 0.99999988 0 0.99999988
		 1 0 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0 0.99999976 0 -5.9604645e-008 1
		 -5.9604645e-008 1 0.99999976 1 0 1 0.99999976 0 0.99999976 0 0 1 0 1 1 0 0.99999988
		 0 -2.9802322e-008 0 0.99999976 0 0 1 0 1 0.99999976 0 0.99999976 0 -8.9406967e-008
		 1 -5.9604645e-008 1 0.99999988 0 0.99999976 0 0 1 0 1 0.99999976 0 -5.9604645e-008
		 0 0.99999976;
	setAttr ".uvst[0].uvsp[750:999]" 1 0.99999976 1 -5.9604645e-008 0.99999976
		 0 0.99999976 0.99999976 -2.0861626e-007 0.99999976 -2.0861626e-007 0 0 0.99999976
		 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999988
		 1 0 1 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007 0 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 -2.3841858e-007 0.99999988 -2.3841858e-007 -5.9604645e-008
		 0 1 0 0 1 0 1 1 0.99999988 0 0 0 0 1 0.99999988 1 0.99999988 4.1723251e-007 0.99999976
		 1.000000357628 -2.3841858e-007 1.000000357628 -1.1920929e-007 3.5762787e-007 0 0.99999976
		 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 0 0.99999988 0 -1.4901161e-007 1
		 -1.1920929e-007 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988
		 0.99999988 0.99999976 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0 0.99999976
		 -5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.1920929e-007 0 1 0 0 0.99999988 0 0.99999988 1 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 -5.9604645e-008 -5.9604645e-008 0.99999976
		 3.5762787e-007 0.99999976 1.000000357628 -1.1920929e-007 1.000000357628 -1.1920929e-007
		 2.9802322e-007 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 0 0.99999988 0 -1.1920929e-007 0.99999988 -5.9604645e-008 0.99999988 0.99999988
		 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 0.99999988 0 0.99999976
		 1 -8.9406967e-008 0.99999988 -5.9604645e-008 -2.9802322e-008 1 0.99999988 0 0.99999988
		 0 -2.9802322e-008 1 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988
		 -2.0861626e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999976 0 -5.9604645e-008
		 0.99999988 -5.9604645e-008 0.99999988 0.99999976 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0 0.99999976 0 0.99999976
		 0.99999976 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -5.9604645e-008 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 0 -2.3841858e-007 0.99999976 -2.3841858e-007
		 0.99999976 0.99999976 0 0.99999976 1 -2.3841858e-007 1 0.99999976 0 0.99999976 0
		 -2.3841858e-007 -2.3841858e-007 0.99999976 -2.3841858e-007 -2.3841858e-007 0.99999976
		 -2.3841858e-007 0.99999976 0.99999976 1 0 1 1 0 1 0 0 -2.3841858e-007 1 -2.3841858e-007
		 0 0.99999976 0 0.99999976 1 1 0 1 1 0 1 0 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007
		 1 -2.3841858e-007 0 0.99999976 0 0.99999976 1 1 5.9604645e-008 1 0.99999976 0 0.99999976
		 0 0 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -2.0861626e-007 -2.3841858e-007 0.99999952 -2.3841858e-007 0.99999952
		 0.99999976 -2.0861626e-007 0.99999976 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 0.99999988 0.99999976 0 0.99999976 1 -2.0861626e-007 0.99999952 0.99999976 -4.7683716e-007
		 0.99999976 0 -2.3841858e-007 -2.3841858e-007 1 -2.3841858e-007 -5.9604645e-008 0.99999976
		 -2.9802322e-008 0.99999976 1 0.99999952 2.9802322e-007 0.99999952 1.000000238419
		 -4.7683716e-007 1.000000238419 -4.7683716e-007 2.3841858e-007 -2.3841858e-007 1.000000476837
		 -2.3841858e-007 4.1723251e-007 0.99999976 4.7683716e-007 0.99999976 1.000000476837
		 1 2.9802322e-007 1 1.000000238419 0 1.000000238419 0 2.3841858e-007 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0 -5.9604645e-008 -2.3841858e-007 1.000000476837 -2.3841858e-007
		 4.1723251e-007 0.99999976 4.7683716e-007 0.99999976 1.000000476837 -5.9604645e-008
		 -2.3841858e-007 -5.9604645e-008 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 -5.9604645e-008 0 -5.9604645e-008 1 0.99999976 1 0.99999976 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0 0.99999976 0 0.99999976 0.99999976 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976 0.99999988 -1.1920929e-007
		 0.99999988 -5.9604645e-008 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976
		 0.99999988 0.99999988 0 0.99999988 0.99999976 0 0.99999976 0 0 0.99999976 0.99999976
		 0 0.99999976 0 0 0.99999976 0 0.99999976 0 0.99999976 0.99999988 0 0.99999976 0 -5.9604645e-008
		 0.99999964 0 0.99999964 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 0 -1.1920929e-007
		 1.1920929e-007 0.99999976 1.7881393e-007 0.99999976 0.99999988 -1.1920929e-007 0.99999988
		 0 0.99999976 0 0 1 0 1 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999976 1 -5.9604645e-008
		 1 1 0 1 0.99999976 0 0.99999976 0 0 0 0.99999988 0 5.9604645e-008 1 1.1920929e-007
		 1 0.99999988;
	setAttr ".uvst[0].uvsp[1000:1249]" 1 0 1 0.99999976 0 0.99999976 0 -5.9604645e-008
		 1 -5.9604645e-008 1 0.99999976 0 0.99999976 0 -5.9604645e-008 0 0.99999976 0 -2.9802322e-008
		 1 5.9604645e-008 1 0.99999976 0.99999976 5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007
		 0.99999988 -2.3841858e-007 0 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007
		 0 0 0.99999988 0 -2.9802322e-008 1 0 1 0.99999988 0 1 0 0 1 0 1 1 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008 -1.1920929e-007 0.99999976
		 0 1 0 0 1 0 1 1 0.99999976 0 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -5.9604645e-008 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988 0.99999988
		 0 1 0 0 0.99999988 0 0.99999988 1 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007
		 0 0.99999988 0 0.99999988 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008
		 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999988 -2.3841858e-007 -5.9604645e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999988 0
		 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999976 0 0.99999976 0 -5.9604645e-008
		 -2.3841858e-007 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 0 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0 0.99999988 0 -2.9802322e-008 1
		 -2.9802322e-008 1 0.99999988 0.24999976 0.99999988 0.24999976 -2.9802322e-008 0.74999976
		 0 0.74999976 0.99999988 0.24999988 1 0.24999988 0 0.74999988 0 0.74999988 1 0.24999988
		 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007 0.74999988 1 -2.3841858e-007
		 -5.9604645e-008 -2.3841858e-007 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007
		 -2.9802322e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0.99999976 0.99999976 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007 -2.9802322e-008
		 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 1 0.99999988 0.74999988 -1.1920929e-007 0.74999988 0.99999976 0.24999994
		 0.99999976 0.24999994 -1.1920929e-007 0.75 2.3841858e-007 0.74999988 1.000000238419
		 0.24999994 1.000000238419 0.25 2.3841858e-007 0.24999988 0.99999976 0.24999988 -5.9604645e-008
		 0.74999988 -5.9604645e-008 0.74999988 0.99999976 0.99999988 0 0.99999988 1 -2.9802322e-008
		 1 -2.9802322e-008 0 0.24999988 0 0.74999988 -2.9802322e-008 0.75 0.99999988 0.25
		 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994
		 0.99999988 0.74999988 0 0.74999988 1 0.24999994 1 0.24999994 0 0.99999988 -1.1920929e-007
		 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008 -1.1920929e-007
		 0.24999988 -2.3841858e-007 0.74999988 -2.3841858e-007 0.74999988 0.99999976 0.24999988
		 0.99999976 0.24999994 -2.3841858e-007 0.74999988 -2.3841858e-007 0.74999988 0.99999976
		 0.24999994 0.99999976 -1.1920929e-007 0.99999988 -1.1920929e-007 -8.9406967e-008
		 0.99999976 -5.9604645e-008 0.99999976 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007
		 0.74999988 1 0.24999988 1 0.24999994 0 0.74999988 0 0.74999988 0.99999988 0.24999994
		 0.99999988 0.99999988 -2.9802322e-008 0.99999988 0.99999988 -2.9802322e-008 0.99999988
		 -2.9802322e-008 -2.9802322e-008 0.74999988 -5.9604645e-008 0.74999988 1 0.24999994
		 1 0.24999988 -2.9802322e-008 0.25 -2.0861626e-007 0.75 -1.7881393e-007 0.74999988
		 0.99999976 0.24999994 0.99999976 0.24999976 -2.9802322e-007 0.74999976 -2.682209e-007
		 0.74999976 0.99999976 0.24999976 0.99999976 -2.9802322e-008 0 -2.9802322e-008 0.99999976
		 0.99999988 0.99999976 0.99999988 0 0.99999988 0 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 -2.9802322e-008 0 0 -8.9406967e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 0 0.99999976 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999988 0
		 0.99999988 0.99999976 0.99999988 0 0.99999988 0.99999976 0 0.99999976 0 0 0 -2.9802322e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0 0.99999988 -2.9802322e-008 0.99999976
		 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 -8.9406967e-008 0.99999988 -5.9604645e-008
		 5.9604645e-008 0.99999988 1.1920929e-007 0.99999976 1 0 -1.4901161e-007 0.99999976
		 -8.9406967e-008 0.99999976 0.99999988 0 0.99999976 0 -2.9802322e-008 0.99999976 0
		 0.99999976 1 0 0.99999988 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976
		 0 0.99999976 -5.9604645e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 0 -1.1920929e-007 0.99999988 -5.9604645e-008
		 0.99999988 0.99999988 0 0.99999988 1 0 1 0.99999988;
	setAttr ".uvst[0].uvsp[1250:1499]" 0 0.99999988 0 -5.9604645e-008 0 0.99999976
		 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 1 0 1 0.99999976 0 0.99999976 0
		 0 1 0 1 1 0 0.99999988 0 -2.9802322e-008 0 0.99999976 0 0 1 0 1 0.99999976 0 0.99999976
		 0 -8.9406967e-008 1 -5.9604645e-008 1 0.99999988 0 0.99999976 0 0 1 0 1 0.99999976
		 0 -5.9604645e-008 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0.99999976 0 0.99999976
		 0.99999976 -2.0861626e-007 0.99999976 -2.0861626e-007 0 0 0.99999976 0 -5.9604645e-008
		 1 -5.9604645e-008 1 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999988 1 0 1 0.99999988
		 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007 0 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -2.3841858e-007 0.99999988 -2.3841858e-007 -5.9604645e-008 0 1 0 0 1 0
		 1 1 0.99999988 0 0 0 0 1 0.99999988 1 0.99999988 4.1723251e-007 0.99999976 1.000000357628
		 -2.3841858e-007 1.000000357628 -1.1920929e-007 3.5762787e-007 0 0.99999976 0 -5.9604645e-008
		 1 -5.9604645e-008 1 0.99999976 0 0.99999988 0 -1.4901161e-007 1 -1.1920929e-007 1
		 0.99999988 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988 0.99999988 0.99999976
		 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0 0.99999976 -5.9604645e-008 0.99999976
		 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008 -1.1920929e-007 0 1 0 0 0.99999988
		 0 0.99999988 1 0.99999976 -5.9604645e-008 0.99999976 0.99999976 -5.9604645e-008 0.99999976
		 -5.9604645e-008 -5.9604645e-008 0.99999976 3.5762787e-007 0.99999976 1.000000357628
		 -1.1920929e-007 1.000000357628 -1.1920929e-007 2.9802322e-007 0 0.99999976 0 -5.9604645e-008
		 0.99999988 -5.9604645e-008 0.99999988 0.99999976 0 0.99999988 0 -1.1920929e-007 0.99999988
		 -5.9604645e-008 0.99999988 0.99999988 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 0.99999988 0 0.99999976 1 -8.9406967e-008 0.99999988 -5.9604645e-008
		 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 0.99999976
		 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007 -2.9802322e-008 0.99999976
		 -2.9802322e-008 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 -2.3841858e-007
		 0.99999976 -2.3841858e-007 0 0.99999976 0 0.99999976 0.99999976 1 -2.9802322e-008
		 1 0.99999988 0 0.99999988 0 -5.9604645e-008 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -5.9604645e-008
		 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008
		 0.99999976 0 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976 0.99999976 0 0.99999976
		 1 -2.3841858e-007 1 0.99999976 0 0.99999976 0 -2.3841858e-007 -2.3841858e-007 0.99999976
		 -2.3841858e-007 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976 0.99999976
		 1 0 1 1 0 1 0 0 -2.3841858e-007 1 -2.3841858e-007 0 0.99999976 0 0.99999976 1 1 0
		 1 1 0 1 0 0 -2.3841858e-007 0.99999988 -2.3841858e-007 -8.9406967e-008 0.99999976
		 -5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007 1 -2.3841858e-007 0 0.99999976
		 0 0.99999976 1 1 5.9604645e-008 1 0.99999976 0 0.99999976 0 0 1 -2.9802322e-008 1
		 0.99999988 0 0.99999988 0 -2.9802322e-008 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007
		 -2.3841858e-007 0.99999952 -2.3841858e-007 0.99999952 0.99999976 -2.0861626e-007
		 0.99999976 0 -2.3841858e-007 0.99999988 -2.3841858e-007 0.99999988 0.99999976 0 0.99999976
		 1 -2.0861626e-007 0.99999952 0.99999976 -4.7683716e-007 0.99999976 0 -2.3841858e-007
		 -2.3841858e-007 1 -2.3841858e-007 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976
		 1 0.99999952 2.9802322e-007 0.99999952 1.000000238419 -4.7683716e-007 1.000000238419
		 -4.7683716e-007 2.3841858e-007 -2.3841858e-007 1.000000476837 -2.3841858e-007 4.1723251e-007
		 0.99999976 4.7683716e-007 0.99999976 1.000000476837 1 2.9802322e-007 1 1.000000238419
		 0 1.000000238419 0 2.3841858e-007 1 -5.9604645e-008 1 0.99999976 0 0.99999976 0 -5.9604645e-008
		 -2.3841858e-007 1.000000476837 -2.3841858e-007 4.1723251e-007 0.99999976 4.7683716e-007
		 0.99999976 1.000000476837 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 0.99999976
		 0.99999976 0.99999976 0.99999976 -2.3841858e-007 -5.9604645e-008 0 -5.9604645e-008
		 1 0.99999976 1 0.99999976 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0 0.99999976
		 0 0.99999976 0.99999976 -1.1920929e-007 0.99999988 -5.9604645e-008 -1.4901161e-007
		 0.99999976 -8.9406967e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976 0.99999988 0.99999988 0 0.99999988
		 0.99999976 0 0.99999976 0 0 0.99999976 0.99999976 0 0.99999976 0 0 0.99999976 0;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.99999976 0 0.99999976 0.99999988 0 0.99999976
		 0 -5.9604645e-008 0.99999964 0 0.99999964 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007
		 0 -1.1920929e-007 1.1920929e-007 0.99999976 1.7881393e-007 0.99999976 0.99999988
		 -1.1920929e-007 0.99999988 0 0.99999976 0 0 1 0 1 0.99999976 -5.9604645e-008 0 0.99999976
		 0 0.99999976 1 -5.9604645e-008 1 1 0 1 0.99999976 0 0.99999976 0 0 0 0.99999988 0
		 5.9604645e-008 1 1.1920929e-007 1 0.99999988 1 0 1 0.99999976 0 0.99999976 0 -5.9604645e-008
		 1 -5.9604645e-008 1 0.99999976 0 0.99999976 0 -5.9604645e-008 0 0.99999976 0 -2.9802322e-008
		 1 5.9604645e-008 1 0.99999976 0.99999976 5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007
		 0.99999988 -2.3841858e-007 0 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007
		 0 0 0.99999988 0 -2.9802322e-008 1 0 1 0.99999988 0 1 0 0 1 0 1 1 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008 -1.1920929e-007 0.99999976
		 0 1 0 0 1 0 1 1 0.99999976 0 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -5.9604645e-008 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988 0.99999988
		 0 1 0 0 0.99999988 0 0.99999988 1 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007
		 0 0.99999988 0 0.99999988 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008
		 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976
		 -2.9802322e-008 -2.3841858e-007 -5.9604645e-008 1 -2.9802322e-008 0 -2.9802322e-008
		 0 0.99999988 1 0.99999988 1 -2.9802322e-008 0 -5.9604645e-008 0 0.99999976 1 0.99999976
		 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -2.9802322e-008 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 1 0.99999988 1 0
		 0 -5.9604645e-008 0 0.99999988 1 0.99999988 0 0.99999988 1 0.99999988 1 -2.9802322e-008
		 0 -2.9802322e-008 0.24999976 0.99999988 0.74999976 0.99999988 0.74999976 0 0.24999976
		 -2.9802322e-008 0.24999988 1 0.74999988 1 0.74999988 0 0.24999988 0 0.24999988 1
		 0.74999988 1 0.74999988 1.1920929e-007 0.24999988 1.1920929e-007 -2.3841858e-007
		 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976 -2.3841858e-007
		 0.99999976 0.99999976 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007
		 0.99999988 0.99999976 0.99999988 -2.3841858e-007 0.99999976 0.99999976 0.99999976
		 0.99999976 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007 -2.9802322e-008
		 0.99999976 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988
		 0.99999976 0.99999988 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999988 1 0.99999988 1 -2.9802322e-008 0 -2.9802322e-008 0.74999988 -1.1920929e-007
		 0.24999994 -1.1920929e-007 0.24999994 0.99999976 0.74999988 0.99999976 0.75 2.3841858e-007
		 0.25 2.3841858e-007 0.24999994 1.000000238419 0.74999988 1.000000238419 0.24999988
		 0.99999976 0.74999988 0.99999976 0.74999988 -5.9604645e-008 0.24999988 -5.9604645e-008
		 0.99999988 0 -2.9802322e-008 0 -2.9802322e-008 1 0.99999988 1 0.24999988 0 0.25 0.99999988
		 0.75 0.99999988 0.74999988 -2.9802322e-008 0.24999988 0 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0 0.24999994 0 0.24999994 1 0.74999988
		 1 0.99999988 -1.1920929e-007 -2.9802322e-008 -1.1920929e-007 -2.9802322e-008 0.99999988
		 0.99999988 0.99999988 0.24999988 -2.3841858e-007 0.24999988 0.99999976 0.74999988
		 0.99999976 0.74999988 -2.3841858e-007 0.24999994 -2.3841858e-007 0.24999994 0.99999976
		 0.74999988 0.99999976 0.74999988 -2.3841858e-007 -1.1920929e-007 0.99999988 0.99999976
		 1 0.99999976 -5.9604645e-008 -1.1920929e-007 -8.9406967e-008 0.24999988 1.1920929e-007
		 0.24999988 1 0.74999988 1 0.74999988 1.1920929e-007 0.24999994 0 0.24999994 0.99999988
		 0.74999988 0.99999988 0.74999988 0 0.99999988 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008
		 -2.9802322e-008 0.99999988 0.99999988 0.99999988 0.74999988 -5.9604645e-008 0.24999988
		 -2.9802322e-008 0.24999994 1 0.74999988 1 0.25 -2.0861626e-007 0.24999994 0.99999976
		 0.74999988 0.99999976 0.75 -1.7881393e-007 0.24999976 -2.9802322e-007 0.24999976
		 0.99999976 0.74999976 0.99999976 0.74999976 -2.682209e-007 -2.9802322e-008 0 0.99999988
		 0 0.99999988 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0 -2.9802322e-008 0
		 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0 -8.9406967e-008 0 0.99999976 0.99999976
		 0.99999988 0.99999976 -2.9802322e-008 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0.99999988 0 -2.9802322e-008 0 0.99999988 0 0 0 0 0.99999976 0.99999988 0.99999976
		 0 -2.9802322e-008 0 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.9802322e-008
		 0.99999976 0.99999988 0.99999976 0.99999988 0 -2.9802322e-008 0 -8.9406967e-008 0.99999988
		 0.99999976 1;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.99999988 1.1920929e-007 -5.9604645e-008
		 5.9604645e-008 0 -1.4901161e-007 0 0.99999976 0.99999976 0.99999988 0.99999976 -8.9406967e-008
		 0 -2.9802322e-008 0 0.99999988 0.99999976 1 0.99999976 0 0 -5.9604645e-008 0 0.99999976
		 0.99999976 0.99999976 0.99999976 -5.9604645e-008 0 -5.9604645e-008 0 0.99999976 0.99999976
		 0.99999976 0.99999976 -5.9604645e-008 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008
		 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007 0 -1.1920929e-007 0 0.99999988
		 0.99999988 0.99999988 0.99999988 -5.9604645e-008 1 0 0 -5.9604645e-008 0 0.99999988
		 1 0.99999988 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008 1 0 0
		 0 0 0.99999976 1 0.99999976 1 0 0 -2.9802322e-008 0 0.99999988 1 1 0 0.99999976 1
		 0.99999976 1 0 0 0 0 0.99999976 1 0.99999988 1 -5.9604645e-008 0 -8.9406967e-008
		 0 0.99999976 1 0.99999976 1 0 0 0 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976
		 0 0.99999976 0.99999976 0 -2.0861626e-007 0 -2.0861626e-007 0.99999976 0.99999976
		 0.99999976 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008 -5.9604645e-008
		 0 0 1 0.99999988 1 0.99999976 0 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007 1
		 0.99999988 1 0.99999976 -2.9802322e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007
		 0.99999988 0.99999976 0.99999988 0 1 1 1 1 0 0 0 0.99999988 0 0.99999988 1 0 1 0
		 0 0.99999988 4.1723251e-007 -1.1920929e-007 3.5762787e-007 -2.3841858e-007 1.000000357628
		 0.99999976 1.000000357628 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999988 1 0.99999988 1 -1.1920929e-007 0 -1.4901161e-007 0 0.99999988 0.99999988
		 0.99999988 0.99999988 0 0 -5.9604645e-008 0.99999976 0 -5.9604645e-008 0 -5.9604645e-008
		 1 0.99999976 1 0.99999976 -5.9604645e-008 -5.9604645e-008 -1.1920929e-007 -1.1920929e-007
		 0.99999988 0.99999976 0.99999988 0 1 0.99999988 1 0.99999988 0 0 0 0.99999976 -5.9604645e-008
		 -5.9604645e-008 -5.9604645e-008 -5.9604645e-008 0.99999976 0.99999976 0.99999976
		 0.99999976 3.5762787e-007 -1.1920929e-007 2.9802322e-007 -1.1920929e-007 1.000000357628
		 0.99999976 1.000000357628 0 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999988 0.99999988 0.99999988 0.99999988 -5.9604645e-008 0
		 -1.1920929e-007 1 0.99999988 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 0.99999988
		 0 -5.9604645e-008 -2.9802322e-008 -8.9406967e-008 0.99999988 0.99999976 1 1 0.99999988
		 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 0.99999976 0.99999988 0.99999976
		 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988 0 0.99999976
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 1 0.99999988 1
		 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 -2.3841858e-007 0.99999976 0.99999976
		 0.99999976 0.99999976 0 -2.3841858e-007 0 1 -2.9802322e-008 0 -5.9604645e-008 0 0.99999988
		 1 0.99999988 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008
		 -2.3841858e-007 -5.9604645e-008 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 0.99999976
		 0.99999976 0.99999976 0.99999976 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976 0.99999976
		 0.99999976 0.99999976 -2.3841858e-007 1 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976
		 1 0.99999976 -2.3841858e-007 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 -2.3841858e-007 -2.3841858e-007 1 0 0 0 0 1 1 1 -2.3841858e-007 1 0.99999976 1 0.99999976
		 0 -2.3841858e-007 0 1 0 0 0 0 1 1 1 -2.3841858e-007 0.99999988 0.99999976 0.99999988
		 0.99999976 -5.9604645e-008 -2.3841858e-007 -8.9406967e-008 -2.3841858e-007 1 0.99999976
		 1 0.99999976 0 -2.3841858e-007 0 1 5.9604645e-008 0 0 0 0.99999976 1 0.99999976 1
		 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 1 0.99999988 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007 -2.9802322e-008
		 -2.0861626e-007 -2.3841858e-007 -2.0861626e-007 0.99999976 0.99999952 0.99999976
		 0.99999952 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976 0.99999988 0.99999976 0.99999988
		 -2.3841858e-007 1 -2.0861626e-007 0 -2.3841858e-007 -4.7683716e-007 0.99999976 0.99999952
		 0.99999976 -2.3841858e-007 1 0.99999976 1 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -5.9604645e-008 0.99999952 2.9802322e-007 -4.7683716e-007 2.3841858e-007 -4.7683716e-007
		 1.000000238419 0.99999952 1.000000238419 -2.3841858e-007 1.000000476837 0.99999976
		 1.000000476837 0.99999976 4.7683716e-007 -2.3841858e-007 4.1723251e-007 1 2.9802322e-007
		 0 2.3841858e-007 0 1.000000238419 1 1.000000238419 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999976 1 0.99999976 -2.3841858e-007 1.000000476837 0.99999976 1.000000476837
		 0.99999976 4.7683716e-007 -2.3841858e-007 4.1723251e-007;
	setAttr ".uvst[0].uvsp[2000:2249]" -5.9604645e-008 -2.3841858e-007 0.99999976
		 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008 0.99999976 -5.9604645e-008
		 0 0.99999976 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0.99999976 0.99999976
		 0.99999976 0.99999976 0 -5.9604645e-008 0 -1.1920929e-007 0.99999988 0.99999976 0.99999988
		 0.99999976 -8.9406967e-008 -5.9604645e-008 -1.4901161e-007 -1.1920929e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -8.9406967e-008 -5.9604645e-008 -1.4901161e-007
		 0.99999988 0 0 0 0 0.99999976 0.99999988 0.99999976 0.99999976 0.99999976 0.99999976
		 0 0 0 0 0.99999976 0.99999976 0 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999988
		 0.99999964 0 -1.1920929e-007 0 -1.1920929e-007 0.99999976 0.99999964 0.99999976 -1.1920929e-007
		 1.1920929e-007 -1.1920929e-007 0.99999988 0.99999976 0.99999988 0.99999976 1.7881393e-007
		 0 0.99999976 1 0.99999976 1 0 0 0 -5.9604645e-008 0 -5.9604645e-008 1 0.99999976
		 1 0.99999976 0 1 0 0 0 0 0.99999976 1 0.99999976 0 0.99999988 1 0.99999988 1 1.1920929e-007
		 0 5.9604645e-008 1 0 0 -5.9604645e-008 0 0.99999976 1 0.99999976 1 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999976 1 0.99999976 0 0.99999976 1 0.99999976 1 5.9604645e-008
		 0 -2.9802322e-008 0.99999976 5.9604645e-008 -2.3841858e-007 0 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007 1 0.99999988
		 1 0 0.99999988 1 0.99999988 1 0 0 -2.9802322e-008 0 1 1 1 1 0 0 0 0.99999988 0.99999976
		 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0 1 1 1 1 0 0 0 0.99999976 0 -5.9604645e-008 -5.9604645e-008 -1.1920929e-007 0.99999988
		 0.99999976 0.99999988 0 0.99999988 0.99999988 0.99999988 0.99999988 0 0 -5.9604645e-008
		 0 1 0.99999988 1 0.99999988 0 0 0 0.99999988 1 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007
		 1 0.99999988 0.99999976 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008
		 -1.1920929e-007 0.99999976 -2.3841858e-007 0.99999988 -2.3841858e-007 -5.9604645e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999988 0
		 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999976 0 0.99999976 0 -5.9604645e-008
		 -2.3841858e-007 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 0 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0 0.99999988 0 -2.9802322e-008 1
		 -2.9802322e-008 1 0.99999988 0.24999976 0.99999988 0.24999976 -2.9802322e-008 0.74999976
		 0 0.74999976 0.99999988 0.24999988 1 0.24999988 0 0.74999988 0 0.74999988 1 0.24999988
		 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007 0.74999988 1 -2.3841858e-007
		 -5.9604645e-008 -2.3841858e-007 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007
		 -2.9802322e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0.99999976 0.99999976 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007 -2.9802322e-008
		 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 1 0.99999988 0.74999988 -1.1920929e-007 0.74999988 0.99999976 0.24999994
		 0.99999976 0.24999994 -1.1920929e-007 0.75 2.3841858e-007 0.74999988 1.000000238419
		 0.24999994 1.000000238419 0.25 2.3841858e-007 0.24999988 0.99999976 0.24999988 -5.9604645e-008
		 0.74999988 -5.9604645e-008 0.74999988 0.99999976 0.99999988 0 0.99999988 1 -2.9802322e-008
		 1 -2.9802322e-008 0 0.24999988 0 0.74999988 -2.9802322e-008 0.75 0.99999988 0.25
		 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988 0.99999988 0.24999994
		 0.99999988 0.74999988 0 0.74999988 1 0.24999994 1 0.24999994 0 0.99999988 -1.1920929e-007
		 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008 -1.1920929e-007
		 0.24999988 -2.3841858e-007 0.74999988 -2.3841858e-007 0.74999988 0.99999976 0.24999988
		 0.99999976 0.24999994 -2.3841858e-007 0.74999988 -2.3841858e-007 0.74999988 0.99999976
		 0.24999994 0.99999976 -1.1920929e-007 0.99999988 -1.1920929e-007 -8.9406967e-008
		 0.99999976 -5.9604645e-008 0.99999976 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007
		 0.74999988 1 0.24999988 1 0.24999994 0 0.74999988 0 0.74999988 0.99999988 0.24999994
		 0.99999988 0.99999988 -2.9802322e-008 0.99999988 0.99999988 -2.9802322e-008 0.99999988
		 -2.9802322e-008 -2.9802322e-008 0.74999988 -5.9604645e-008 0.74999988 1 0.24999994
		 1 0.24999988 -2.9802322e-008 0.25 -2.0861626e-007 0.75 -1.7881393e-007 0.74999988
		 0.99999976 0.24999994 0.99999976 0.24999976 -2.9802322e-007 0.74999976 -2.682209e-007
		 0.74999976 0.99999976 0.24999976 0.99999976 -2.9802322e-008 0 -2.9802322e-008 0.99999976;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.99999988 0.99999976 0.99999988 0 0.99999988
		 0 0.99999988 0.99999976 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0 -8.9406967e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0 0.99999976 -2.9802322e-008 0.99999976
		 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 0.99999988 0 0.99999988 0.99999976
		 0 0.99999976 0 0 0 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976 0.99999988
		 0 0.99999988 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999988 0 0.99999988
		 0.99999976 -8.9406967e-008 0.99999988 -5.9604645e-008 5.9604645e-008 0.99999988 1.1920929e-007
		 0.99999976 1 0 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976 0.99999988 0
		 0.99999976 0 -2.9802322e-008 0.99999976 0 0.99999976 1 0 0.99999988 0 -5.9604645e-008
		 0.99999976 -5.9604645e-008 0.99999976 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0.99999976 0.99999976 0 0.99999976 -5.9604645e-008 -2.3841858e-007
		 0.99999976 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008 0.99999976 0 -1.1920929e-007
		 0.99999988 -5.9604645e-008 0.99999988 0.99999988 0 0.99999988 1 0 1 0.99999988 0
		 0.99999988 0 -5.9604645e-008 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976
		 1 0 1 0.99999976 0 0.99999976 0 0 1 0 1 1 0 0.99999988 0 -2.9802322e-008 0 0.99999976
		 0 0 1 0 1 0.99999976 0 0.99999976 0 -8.9406967e-008 1 -5.9604645e-008 1 0.99999988
		 0 0.99999976 0 0 1 0 1 0.99999976 0 -5.9604645e-008 0 0.99999976 1 0.99999976 1 -5.9604645e-008
		 0.99999976 0 0.99999976 0.99999976 -2.0861626e-007 0.99999976 -2.0861626e-007 0 0
		 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 -5.9604645e-008 0 0.99999976
		 0 0.99999988 1 0 1 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007 0
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -5.9604645e-008 0 1 0 0 1 0 1 1 0.99999988 0 0 0 0 1 0.99999988 1 0.99999988 4.1723251e-007
		 0.99999976 1.000000357628 -2.3841858e-007 1.000000357628 -1.1920929e-007 3.5762787e-007
		 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 0 0.99999988 0 -1.4901161e-007
		 1 -1.1920929e-007 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988
		 0.99999988 0.99999976 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0 0.99999976
		 -5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.1920929e-007 0 1 0 0 0.99999988 0 0.99999988 1 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 -5.9604645e-008 -5.9604645e-008 0.99999976
		 3.5762787e-007 0.99999976 1.000000357628 -1.1920929e-007 1.000000357628 -1.1920929e-007
		 2.9802322e-007 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 0 0.99999988 0 -1.1920929e-007 0.99999988 -5.9604645e-008 0.99999988 0.99999988
		 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 0.99999988 0 0.99999976
		 1 -8.9406967e-008 0.99999988 -5.9604645e-008 -2.9802322e-008 1 0.99999988 0 0.99999988
		 0 -2.9802322e-008 1 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988
		 -2.0861626e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999976 0 -5.9604645e-008
		 0.99999988 -5.9604645e-008 0.99999988 0.99999976 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0 0.99999976 0 0.99999976
		 0.99999976 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -5.9604645e-008 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 0 -2.3841858e-007 0.99999976 -2.3841858e-007
		 0.99999976 0.99999976 0 0.99999976 1 -2.3841858e-007 1 0.99999976 0 0.99999976 0
		 -2.3841858e-007 -2.3841858e-007 0.99999976 -2.3841858e-007 -2.3841858e-007 0.99999976
		 -2.3841858e-007 0.99999976 0.99999976 1 0 1 1 0 1 0 0 -2.3841858e-007 1 -2.3841858e-007
		 0 0.99999976 0 0.99999976 1 1 0 1 1 0 1 0 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007
		 1 -2.3841858e-007 0 0.99999976 0 0.99999976 1 1 5.9604645e-008 1 0.99999976 0 0.99999976
		 0 0 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -2.0861626e-007 -2.3841858e-007 0.99999952 -2.3841858e-007 0.99999952
		 0.99999976 -2.0861626e-007 0.99999976 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 0.99999988 0.99999976 0 0.99999976;
	setAttr ".uvst[0].uvsp[2500:2749]" 1 -2.0861626e-007 0.99999952 0.99999976 -4.7683716e-007
		 0.99999976 0 -2.3841858e-007 -2.3841858e-007 1 -2.3841858e-007 -5.9604645e-008 0.99999976
		 -2.9802322e-008 0.99999976 1 0.99999952 2.9802322e-007 0.99999952 1.000000238419
		 -4.7683716e-007 1.000000238419 -4.7683716e-007 2.3841858e-007 -2.3841858e-007 1.000000476837
		 -2.3841858e-007 4.1723251e-007 0.99999976 4.7683716e-007 0.99999976 1.000000476837
		 1 2.9802322e-007 1 1.000000238419 0 1.000000238419 0 2.3841858e-007 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0 -5.9604645e-008 -2.3841858e-007 1.000000476837 -2.3841858e-007
		 4.1723251e-007 0.99999976 4.7683716e-007 0.99999976 1.000000476837 -5.9604645e-008
		 -2.3841858e-007 -5.9604645e-008 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 -5.9604645e-008 0 -5.9604645e-008 1 0.99999976 1 0.99999976 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0 0.99999976 0 0.99999976 0.99999976 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976 0.99999988 -1.1920929e-007
		 0.99999988 -5.9604645e-008 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976
		 0.99999988 0.99999988 0 0.99999988 0.99999976 0 0.99999976 0 0 0.99999976 0.99999976
		 0 0.99999976 0 0 0.99999976 0 0.99999976 0 0.99999976 0.99999988 0 0.99999976 0 -5.9604645e-008
		 0.99999964 0 0.99999964 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 0 -1.1920929e-007
		 1.1920929e-007 0.99999976 1.7881393e-007 0.99999976 0.99999988 -1.1920929e-007 0.99999988
		 0 0.99999976 0 0 1 0 1 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999976 1 -5.9604645e-008
		 1 1 0 1 0.99999976 0 0.99999976 0 0 0 0.99999988 0 5.9604645e-008 1 1.1920929e-007
		 1 0.99999988 1 0 1 0.99999976 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0 0.99999976 0 -2.9802322e-008 1 5.9604645e-008
		 1 0.99999976 0.99999976 5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007 0.99999988
		 -2.3841858e-007 0 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007 0 0
		 0.99999988 0 -2.9802322e-008 1 0 1 0.99999988 0 1 0 0 1 0 1 1 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008 -1.1920929e-007 0.99999976
		 0 1 0 0 1 0 1 1 0.99999976 0 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -5.9604645e-008 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988 0.99999988
		 0 1 0 0 0.99999988 0 0.99999988 1 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007
		 0 0.99999988 0 0.99999988 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008
		 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976
		 -2.9802322e-008 -2.3841858e-007 -5.9604645e-008 1 -2.9802322e-008 0 -2.9802322e-008
		 0 0.99999988 1 0.99999988 1 -2.9802322e-008 0 -5.9604645e-008 0 0.99999976 1 0.99999976
		 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -2.9802322e-008 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 1 0.99999988 1 0
		 0 -5.9604645e-008 0 0.99999988 1 0.99999988 0 0.99999988 1 0.99999988 1 -2.9802322e-008
		 0 -2.9802322e-008 0.24999976 0.99999988 0.74999976 0.99999988 0.74999976 0 0.24999976
		 -2.9802322e-008 0.24999988 1 0.74999988 1 0.74999988 0 0.24999988 0 0.24999988 1
		 0.74999988 1 0.74999988 1.1920929e-007 0.24999988 1.1920929e-007 -2.3841858e-007
		 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976 -2.3841858e-007
		 0.99999976 0.99999976 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007
		 0.99999988 0.99999976 0.99999988 -2.3841858e-007 0.99999976 0.99999976 0.99999976
		 0.99999976 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007 -2.9802322e-008
		 0.99999976 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988
		 0.99999976 0.99999988 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999988 1 0.99999988 1 -2.9802322e-008 0 -2.9802322e-008 0.74999988 -1.1920929e-007
		 0.24999994 -1.1920929e-007 0.24999994 0.99999976 0.74999988 0.99999976 0.75 2.3841858e-007
		 0.25 2.3841858e-007 0.24999994 1.000000238419 0.74999988 1.000000238419 0.24999988
		 0.99999976 0.74999988 0.99999976 0.74999988 -5.9604645e-008 0.24999988 -5.9604645e-008
		 0.99999988 0 -2.9802322e-008 0 -2.9802322e-008 1 0.99999988 1 0.24999988 0 0.25 0.99999988
		 0.75 0.99999988 0.74999988 -2.9802322e-008 0.24999988 0 0.24999994 0.99999988 0.74999988
		 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0 0.24999994 0 0.24999994 1 0.74999988
		 1 0.99999988 -1.1920929e-007 -2.9802322e-008 -1.1920929e-007 -2.9802322e-008 0.99999988
		 0.99999988 0.99999988 0.24999988 -2.3841858e-007 0.24999988 0.99999976 0.74999988
		 0.99999976 0.74999988 -2.3841858e-007 0.24999994 -2.3841858e-007 0.24999994 0.99999976
		 0.74999988 0.99999976 0.74999988 -2.3841858e-007 -1.1920929e-007 0.99999988 0.99999976
		 1;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.99999976 -5.9604645e-008 -1.1920929e-007
		 -8.9406967e-008 0.24999988 1.1920929e-007 0.24999988 1 0.74999988 1 0.74999988 1.1920929e-007
		 0.24999994 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0 0.99999988
		 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008 0.99999988 0.99999988
		 0.99999988 0.74999988 -5.9604645e-008 0.24999988 -2.9802322e-008 0.24999994 1 0.74999988
		 1 0.25 -2.0861626e-007 0.24999994 0.99999976 0.74999988 0.99999976 0.75 -1.7881393e-007
		 0.24999976 -2.9802322e-007 0.24999976 0.99999976 0.74999976 0.99999976 0.74999976
		 -2.682209e-007 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 0 -2.9802322e-008 0 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0 -8.9406967e-008 0 0.99999976 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.9802322e-008
		 0.99999976 0.99999988 0.99999976 0.99999988 0 -2.9802322e-008 0 0.99999988 0 0 0
		 0 0.99999976 0.99999988 0.99999976 0 -2.9802322e-008 0 0.99999988 0.99999976 0.99999988
		 0.99999976 -2.9802322e-008 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0.99999988
		 0 -2.9802322e-008 0 -8.9406967e-008 0.99999988 0.99999976 1 0.99999988 1.1920929e-007
		 -5.9604645e-008 5.9604645e-008 0 -1.4901161e-007 0 0.99999976 0.99999976 0.99999988
		 0.99999976 -8.9406967e-008 0 -2.9802322e-008 0 0.99999988 0.99999976 1 0.99999976
		 0 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008 -5.9604645e-008
		 -2.3841858e-007 -5.9604645e-008 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 0 -1.1920929e-007 0 0.99999988 0.99999988 0.99999988 0.99999988 -5.9604645e-008 1
		 0 0 -5.9604645e-008 0 0.99999988 1 0.99999988 0 0.99999976 1 0.99999976 1 -5.9604645e-008
		 0 -5.9604645e-008 1 0 0 0 0 0.99999976 1 0.99999976 1 0 0 -2.9802322e-008 0 0.99999988
		 1 1 0 0.99999976 1 0.99999976 1 0 0 0 0 0.99999976 1 0.99999988 1 -5.9604645e-008
		 0 -8.9406967e-008 0 0.99999976 1 0.99999976 1 0 0 0 0 -5.9604645e-008 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0.99999976 0 -2.0861626e-007 0 -2.0861626e-007 0.99999976
		 0.99999976 0.99999976 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 -5.9604645e-008 0 0 1 0.99999988 1 0.99999976 0 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007
		 1 0.99999988 1 0.99999976 -2.9802322e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007
		 0.99999988 0.99999976 0.99999988 0 1 1 1 1 0 0 0 0.99999988 0 0.99999988 1 0 1 0
		 0 0.99999988 4.1723251e-007 -1.1920929e-007 3.5762787e-007 -2.3841858e-007 1.000000357628
		 0.99999976 1.000000357628 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999988 1 0.99999988 1 -1.1920929e-007 0 -1.4901161e-007 0 0.99999988 0.99999988
		 0.99999988 0.99999988 0 0 -5.9604645e-008 0.99999976 0 -5.9604645e-008 0 -5.9604645e-008
		 1 0.99999976 1 0.99999976 -5.9604645e-008 -5.9604645e-008 -1.1920929e-007 -1.1920929e-007
		 0.99999988 0.99999976 0.99999988 0 1 0.99999988 1 0.99999988 0 0 0 0.99999976 -5.9604645e-008
		 -5.9604645e-008 -5.9604645e-008 -5.9604645e-008 0.99999976 0.99999976 0.99999976
		 0.99999976 3.5762787e-007 -1.1920929e-007 2.9802322e-007 -1.1920929e-007 1.000000357628
		 0.99999976 1.000000357628 0 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999988 0.99999988 0.99999988 0.99999988 -5.9604645e-008 0
		 -1.1920929e-007 1 0.99999988 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 0.99999988
		 0 -5.9604645e-008 -2.9802322e-008 -8.9406967e-008 0.99999988 0.99999976 1 1 0.99999988
		 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 0.99999976 0.99999988 0.99999976
		 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988 0 0.99999976
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 1 0.99999988 1
		 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 -2.3841858e-007 0.99999976 0.99999976
		 0.99999976 0.99999976 0 -2.3841858e-007 0 1 -2.9802322e-008 0 -5.9604645e-008 0 0.99999988
		 1 0.99999988 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008
		 -2.3841858e-007 -5.9604645e-008 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 0.99999976
		 0.99999976 0.99999976 0.99999976 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976 0.99999976
		 0.99999976 0.99999976 -2.3841858e-007 1 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976
		 1 0.99999976 -2.3841858e-007 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 -2.3841858e-007 -2.3841858e-007 1 0 0 0 0 1 1 1 -2.3841858e-007 1 0.99999976 1 0.99999976
		 0 -2.3841858e-007 0 1 0 0 0 0 1 1 1;
	setAttr ".uvst[0].uvsp[3000:3249]" -2.3841858e-007 0.99999988 0.99999976 0.99999988
		 0.99999976 -5.9604645e-008 -2.3841858e-007 -8.9406967e-008 -2.3841858e-007 1 0.99999976
		 1 0.99999976 0 -2.3841858e-007 0 1 5.9604645e-008 0 0 0 0.99999976 1 0.99999976 1
		 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 1 0.99999988 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007 -2.9802322e-008
		 -2.0861626e-007 -2.3841858e-007 -2.0861626e-007 0.99999976 0.99999952 0.99999976
		 0.99999952 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976 0.99999988 0.99999976 0.99999988
		 -2.3841858e-007 1 -2.0861626e-007 0 -2.3841858e-007 -4.7683716e-007 0.99999976 0.99999952
		 0.99999976 -2.3841858e-007 1 0.99999976 1 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -5.9604645e-008 0.99999952 2.9802322e-007 -4.7683716e-007 2.3841858e-007 -4.7683716e-007
		 1.000000238419 0.99999952 1.000000238419 -2.3841858e-007 1.000000476837 0.99999976
		 1.000000476837 0.99999976 4.7683716e-007 -2.3841858e-007 4.1723251e-007 1 2.9802322e-007
		 0 2.3841858e-007 0 1.000000238419 1 1.000000238419 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999976 1 0.99999976 -2.3841858e-007 1.000000476837 0.99999976 1.000000476837
		 0.99999976 4.7683716e-007 -2.3841858e-007 4.1723251e-007 -5.9604645e-008 -2.3841858e-007
		 0.99999976 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008 0.99999976 -5.9604645e-008
		 0 0.99999976 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0.99999976 0.99999976
		 0.99999976 0.99999976 0 -5.9604645e-008 0 -1.1920929e-007 0.99999988 0.99999976 0.99999988
		 0.99999976 -8.9406967e-008 -5.9604645e-008 -1.4901161e-007 -1.1920929e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -8.9406967e-008 -5.9604645e-008 -1.4901161e-007
		 0.99999988 0 0 0 0 0.99999976 0.99999988 0.99999976 0.99999976 0.99999976 0.99999976
		 0 0 0 0 0.99999976 0.99999976 0 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999988
		 0.99999964 0 -1.1920929e-007 0 -1.1920929e-007 0.99999976 0.99999964 0.99999976 -1.1920929e-007
		 1.1920929e-007 -1.1920929e-007 0.99999988 0.99999976 0.99999988 0.99999976 1.7881393e-007
		 0 0.99999976 1 0.99999976 1 0 0 0 -5.9604645e-008 0 -5.9604645e-008 1 0.99999976
		 1 0.99999976 0 1 0 0 0 0 0.99999976 1 0.99999976 0 0.99999988 1 0.99999988 1 1.1920929e-007
		 0 5.9604645e-008 1 0 0 -5.9604645e-008 0 0.99999976 1 0.99999976 1 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999976 1 0.99999976 0 0.99999976 1 0.99999976 1 5.9604645e-008
		 0 -2.9802322e-008 0.99999976 5.9604645e-008 -2.3841858e-007 0 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007 1 0.99999988
		 1 0 0.99999988 1 0.99999988 1 0 0 -2.9802322e-008 0 1 1 1 1 0 0 0 0.99999988 0.99999976
		 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0 1 1 1 1 0 0 0 0.99999976 0 -5.9604645e-008 -5.9604645e-008 -1.1920929e-007 0.99999988
		 0.99999976 0.99999988 0 0.99999988 0.99999988 0.99999988 0.99999988 0 0 -5.9604645e-008
		 0 1 0.99999988 1 0.99999988 0 0 0 0.99999988 1 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007
		 1 0.99999988 0.99999976 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008
		 -1.1920929e-007 0.99999976 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976
		 -2.9802322e-008 -2.3841858e-007 -5.9604645e-008 1 -2.9802322e-008 0 -2.9802322e-008
		 0 0.99999988 1 0.99999988 1 -2.9802322e-008 0 -5.9604645e-008 0 0.99999976 1 0.99999976
		 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -2.9802322e-008 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 1 0.99999988 1 0
		 0 -5.9604645e-008 0 0.99999988 1 0.99999988 0 0.99999988 1 0.99999988 1 -2.9802322e-008
		 0 -2.9802322e-008 0.24999976 0.99999988 0.74999976 0.99999988 0.74999976 0 0.24999976
		 -2.9802322e-008 0.24999988 1 0.74999988 1 0.74999988 0 0.24999988 0 0.24999988 1
		 0.74999988 1 0.74999988 1.1920929e-007 0.24999988 1.1920929e-007 -2.3841858e-007
		 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976 -2.3841858e-007
		 0.99999976 0.99999976 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007
		 0.99999988 0.99999976 0.99999988 -2.3841858e-007 0.99999976 0.99999976 0.99999976
		 0.99999976 -5.9604645e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007 -2.9802322e-008
		 0.99999976 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988
		 0.99999976 0.99999988 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999988 1 0.99999988 1 -2.9802322e-008 0 -2.9802322e-008 0.74999988 -1.1920929e-007
		 0.24999994 -1.1920929e-007 0.24999994 0.99999976 0.74999988 0.99999976 0.75 2.3841858e-007
		 0.25 2.3841858e-007 0.24999994 1.000000238419 0.74999988 1.000000238419 0.24999988
		 0.99999976 0.74999988 0.99999976 0.74999988 -5.9604645e-008 0.24999988 -5.9604645e-008
		 0.99999988 0 -2.9802322e-008 0;
	setAttr ".uvst[0].uvsp[3250:3499]" -2.9802322e-008 1 0.99999988 1 0.24999988
		 0 0.25 0.99999988 0.75 0.99999988 0.74999988 -2.9802322e-008 0.24999988 0 0.24999994
		 0.99999988 0.74999988 0.99999988 0.74999988 -2.9802322e-008 0.74999988 0 0.24999994
		 0 0.24999994 1 0.74999988 1 0.99999988 -1.1920929e-007 -2.9802322e-008 -1.1920929e-007
		 -2.9802322e-008 0.99999988 0.99999988 0.99999988 0.24999988 -2.3841858e-007 0.24999988
		 0.99999976 0.74999988 0.99999976 0.74999988 -2.3841858e-007 0.24999994 -2.3841858e-007
		 0.24999994 0.99999976 0.74999988 0.99999976 0.74999988 -2.3841858e-007 -1.1920929e-007
		 0.99999988 0.99999976 1 0.99999976 -5.9604645e-008 -1.1920929e-007 -8.9406967e-008
		 0.24999988 1.1920929e-007 0.24999988 1 0.74999988 1 0.74999988 1.1920929e-007 0.24999994
		 0 0.24999994 0.99999988 0.74999988 0.99999988 0.74999988 0 0.99999988 -2.9802322e-008
		 -2.9802322e-008 -2.9802322e-008 -2.9802322e-008 0.99999988 0.99999988 0.99999988
		 0.74999988 -5.9604645e-008 0.24999988 -2.9802322e-008 0.24999994 1 0.74999988 1 0.25
		 -2.0861626e-007 0.24999994 0.99999976 0.74999988 0.99999976 0.75 -1.7881393e-007
		 0.24999976 -2.9802322e-007 0.24999976 0.99999976 0.74999976 0.99999976 0.74999976
		 -2.682209e-007 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 0 -2.9802322e-008 0 -2.9802322e-008 0.99999976 0.99999988 0.99999976
		 0 -8.9406967e-008 0 0.99999976 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.9802322e-008
		 0.99999976 0.99999988 0.99999976 0.99999988 0 -2.9802322e-008 0 0.99999988 0 0 0
		 0 0.99999976 0.99999988 0.99999976 0 -2.9802322e-008 0 0.99999988 0.99999976 0.99999988
		 0.99999976 -2.9802322e-008 -2.9802322e-008 0.99999976 0.99999988 0.99999976 0.99999988
		 0 -2.9802322e-008 0 -8.9406967e-008 0.99999988 0.99999976 1 0.99999988 1.1920929e-007
		 -5.9604645e-008 5.9604645e-008 0 -1.4901161e-007 0 0.99999976 0.99999976 0.99999988
		 0.99999976 -8.9406967e-008 0 -2.9802322e-008 0 0.99999988 0.99999976 1 0.99999976
		 0 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008 -5.9604645e-008
		 -2.3841858e-007 -5.9604645e-008 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 0 -1.1920929e-007 0 0.99999988 0.99999988 0.99999988 0.99999988 -5.9604645e-008 1
		 0 0 -5.9604645e-008 0 0.99999988 1 0.99999988 0 0.99999976 1 0.99999976 1 -5.9604645e-008
		 0 -5.9604645e-008 1 0 0 0 0 0.99999976 1 0.99999976 1 0 0 -2.9802322e-008 0 0.99999988
		 1 1 0 0.99999976 1 0.99999976 1 0 0 0 0 0.99999976 1 0.99999988 1 -5.9604645e-008
		 0 -8.9406967e-008 0 0.99999976 1 0.99999976 1 0 0 0 0 -5.9604645e-008 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0.99999976 0 -2.0861626e-007 0 -2.0861626e-007 0.99999976
		 0.99999976 0.99999976 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 -5.9604645e-008 0 0 1 0.99999988 1 0.99999976 0 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007
		 1 0.99999988 1 0.99999976 -2.9802322e-008 -2.3841858e-007 -5.9604645e-008 -2.3841858e-007
		 0.99999988 0.99999976 0.99999988 0 1 1 1 1 0 0 0 0.99999988 0 0.99999988 1 0 1 0
		 0 0.99999988 4.1723251e-007 -1.1920929e-007 3.5762787e-007 -2.3841858e-007 1.000000357628
		 0.99999976 1.000000357628 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999988 1 0.99999988 1 -1.1920929e-007 0 -1.4901161e-007 0 0.99999988 0.99999988
		 0.99999988 0.99999988 0 0 -5.9604645e-008 0.99999976 0 -5.9604645e-008 0 -5.9604645e-008
		 1 0.99999976 1 0.99999976 -5.9604645e-008 -5.9604645e-008 -1.1920929e-007 -1.1920929e-007
		 0.99999988 0.99999976 0.99999988 0 1 0.99999988 1 0.99999988 0 0 0 0.99999976 -5.9604645e-008
		 -5.9604645e-008 -5.9604645e-008 -5.9604645e-008 0.99999976 0.99999976 0.99999976
		 0.99999976 3.5762787e-007 -1.1920929e-007 2.9802322e-007 -1.1920929e-007 1.000000357628
		 0.99999976 1.000000357628 0 0.99999976 0.99999988 0.99999976 0.99999988 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999988 0.99999988 0.99999988 0.99999988 -5.9604645e-008 0
		 -1.1920929e-007 1 0.99999988 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 0.99999988
		 0 -5.9604645e-008 -2.9802322e-008 -8.9406967e-008 0.99999988 0.99999976 1 1 0.99999988
		 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 0.99999976 0.99999988 0.99999976
		 -2.9802322e-008 -2.0861626e-007 -2.9802322e-008 -2.0861626e-007 0.99999988 0 0.99999976
		 0.99999988 0.99999976 0.99999988 -5.9604645e-008 0 -5.9604645e-008 1 0.99999988 1
		 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 -2.3841858e-007 0.99999976 0.99999976
		 0.99999976 0.99999976 0 -2.3841858e-007 0 1 -2.9802322e-008 0 -5.9604645e-008 0 0.99999988
		 1 0.99999988 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008
		 -2.3841858e-007 -5.9604645e-008;
	setAttr ".uvst[0].uvsp[3500:3749]" -5.9604645e-008 -2.3841858e-007 -5.9604645e-008
		 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976
		 0.99999976 0.99999976 0.99999976 -2.3841858e-007 1 -2.3841858e-007 0 -2.3841858e-007
		 0 0.99999976 1 0.99999976 -2.3841858e-007 0.99999976 0.99999976 0.99999976 0.99999976
		 -2.3841858e-007 -2.3841858e-007 -2.3841858e-007 1 0 0 0 0 1 1 1 -2.3841858e-007 1
		 0.99999976 1 0.99999976 0 -2.3841858e-007 0 1 0 0 0 0 1 1 1 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -5.9604645e-008 -2.3841858e-007 -8.9406967e-008
		 -2.3841858e-007 1 0.99999976 1 0.99999976 0 -2.3841858e-007 0 1 5.9604645e-008 0
		 0 0 0.99999976 1 0.99999976 1 -2.9802322e-008 0 -2.9802322e-008 0 0.99999988 1 0.99999988
		 -2.3841858e-007 0.99999988 0.99999976 0.99999988 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -2.9802322e-008 -2.0861626e-007 -2.3841858e-007 -2.0861626e-007 0.99999976 0.99999952
		 0.99999976 0.99999952 -2.3841858e-007 0 -2.3841858e-007 0 0.99999976 0.99999988 0.99999976
		 0.99999988 -2.3841858e-007 1 -2.0861626e-007 0 -2.3841858e-007 -4.7683716e-007 0.99999976
		 0.99999952 0.99999976 -2.3841858e-007 1 0.99999976 1 0.99999976 -2.9802322e-008 -2.3841858e-007
		 -5.9604645e-008 0.99999952 2.9802322e-007 -4.7683716e-007 2.3841858e-007 -4.7683716e-007
		 1.000000238419 0.99999952 1.000000238419 -2.3841858e-007 1.000000476837 0.99999976
		 1.000000476837 0.99999976 4.7683716e-007 -2.3841858e-007 4.1723251e-007 1 2.9802322e-007
		 0 2.3841858e-007 0 1.000000238419 1 1.000000238419 1 -5.9604645e-008 0 -5.9604645e-008
		 0 0.99999976 1 0.99999976 -2.3841858e-007 1.000000476837 0.99999976 1.000000476837
		 0.99999976 4.7683716e-007 -2.3841858e-007 4.1723251e-007 -5.9604645e-008 -2.3841858e-007
		 0.99999976 -2.3841858e-007 0.99999976 0.99999976 -5.9604645e-008 0.99999976 -5.9604645e-008
		 0 0.99999976 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0.99999976 0.99999976
		 0.99999976 0.99999976 0 -5.9604645e-008 0 -1.1920929e-007 0.99999988 0.99999976 0.99999988
		 0.99999976 -8.9406967e-008 -5.9604645e-008 -1.4901161e-007 -1.1920929e-007 0.99999988
		 0.99999976 0.99999988 0.99999976 -8.9406967e-008 -5.9604645e-008 -1.4901161e-007
		 0.99999988 0 0 0 0 0.99999976 0.99999988 0.99999976 0.99999976 0.99999976 0.99999976
		 0 0 0 0 0.99999976 0.99999976 0 0 -5.9604645e-008 0 0.99999976 0.99999976 0.99999988
		 0.99999964 0 -1.1920929e-007 0 -1.1920929e-007 0.99999976 0.99999964 0.99999976 -1.1920929e-007
		 1.1920929e-007 -1.1920929e-007 0.99999988 0.99999976 0.99999988 0.99999976 1.7881393e-007
		 0 0.99999976 1 0.99999976 1 0 0 0 -5.9604645e-008 0 -5.9604645e-008 1 0.99999976
		 1 0.99999976 0 1 0 0 0 0 0.99999976 1 0.99999976 0 0.99999988 1 0.99999988 1 1.1920929e-007
		 0 5.9604645e-008 1 0 0 -5.9604645e-008 0 0.99999976 1 0.99999976 1 -5.9604645e-008
		 0 -5.9604645e-008 0 0.99999976 1 0.99999976 0 0.99999976 1 0.99999976 1 5.9604645e-008
		 0 -2.9802322e-008 0.99999976 5.9604645e-008 -2.3841858e-007 0 -2.3841858e-007 0.99999988
		 0.99999976 0.99999988 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007 1 0.99999988
		 1 0 0.99999988 1 0.99999988 1 0 0 -2.9802322e-008 0 1 1 1 1 0 0 0 0.99999988 0.99999976
		 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008 0.99999988 -5.9604645e-008
		 0 1 1 1 1 0 0 0 0.99999976 0 -5.9604645e-008 -5.9604645e-008 -1.1920929e-007 0.99999988
		 0.99999976 0.99999988 0 0.99999988 0.99999988 0.99999988 0.99999988 0 0 -5.9604645e-008
		 0 1 0.99999988 1 0.99999988 0 0 0 0.99999988 1 0.99999988 0 -1.1920929e-007 0 -1.1920929e-007
		 1 0.99999988 0.99999976 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008
		 -1.1920929e-007 0.99999976 -2.3841858e-007 0.99999988 -2.3841858e-007 -5.9604645e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999988 0
		 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999976 0 0.99999976 0 -5.9604645e-008
		 -2.3841858e-007 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 0 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0 0.99999988 0 -2.9802322e-008 1
		 -2.9802322e-008 1 0.99999988 0.24999976 0.99999988 0.24999976 -2.9802322e-008 0.74999976
		 0 0.74999976 0.99999988 0.24999988 1 0.24999988 0 0.74999988 0 0.74999988 1 0.24999988
		 1 0.24999988 1.1920929e-007 0.74999988 1.1920929e-007 0.74999988 1 -2.3841858e-007
		 -5.9604645e-008 -2.3841858e-007 0.99999976 0.99999976 0.99999976 0.99999976 -5.9604645e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007
		 -2.9802322e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0.99999976 0.99999976 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -2.9802322e-008;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.99999976 -2.9802322e-008 0.99999976 0.99999988
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007
		 -2.9802322e-008 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 0 0.99999988
		 0 -2.9802322e-008 1 -2.9802322e-008 1 0.99999988 0.74999988 -1.1920929e-007 0.74999988
		 0.99999976 0.24999994 0.99999976 0.24999994 -1.1920929e-007 0.75 2.3841858e-007 0.74999988
		 1.000000238419 0.24999994 1.000000238419 0.25 2.3841858e-007 0.24999988 0.99999976
		 0.24999988 -5.9604645e-008 0.74999988 -5.9604645e-008 0.74999988 0.99999976 0.99999988
		 0 0.99999988 1 -2.9802322e-008 1 -2.9802322e-008 0 0.24999988 0 0.74999988 -2.9802322e-008
		 0.75 0.99999988 0.25 0.99999988 0.24999988 0 0.74999988 -2.9802322e-008 0.74999988
		 0.99999988 0.24999994 0.99999988 0.74999988 0 0.74999988 1 0.24999994 1 0.24999994
		 0 0.99999988 -1.1920929e-007 0.99999988 0.99999988 -2.9802322e-008 0.99999988 -2.9802322e-008
		 -1.1920929e-007 0.24999988 -2.3841858e-007 0.74999988 -2.3841858e-007 0.74999988
		 0.99999976 0.24999988 0.99999976 0.24999994 -2.3841858e-007 0.74999988 -2.3841858e-007
		 0.74999988 0.99999976 0.24999994 0.99999976 -1.1920929e-007 0.99999988 -1.1920929e-007
		 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999976 1 0.24999988 1.1920929e-007
		 0.74999988 1.1920929e-007 0.74999988 1 0.24999988 1 0.24999994 0 0.74999988 0 0.74999988
		 0.99999988 0.24999994 0.99999988 0.99999988 -2.9802322e-008 0.99999988 0.99999988
		 -2.9802322e-008 0.99999988 -2.9802322e-008 -2.9802322e-008 0.74999988 -5.9604645e-008
		 0.74999988 1 0.24999994 1 0.24999988 -2.9802322e-008 0.25 -2.0861626e-007 0.75 -1.7881393e-007
		 0.74999988 0.99999976 0.24999994 0.99999976 0.24999976 -2.9802322e-007 0.74999976
		 -2.682209e-007 0.74999976 0.99999976 0.24999976 0.99999976 -2.9802322e-008 0 -2.9802322e-008
		 0.99999976 0.99999988 0.99999976 0.99999988 0 0.99999988 0 0.99999988 0.99999976
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0 -8.9406967e-008 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 0 0.99999976 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999988
		 0 0.99999988 0.99999976 0.99999988 0 0.99999988 0.99999976 0 0.99999976 0 0 0 -2.9802322e-008
		 0.99999976 -2.9802322e-008 0.99999976 0.99999988 0 0.99999988 -2.9802322e-008 0.99999976
		 -2.9802322e-008 0 0.99999988 0 0.99999988 0.99999976 -8.9406967e-008 0.99999988 -5.9604645e-008
		 5.9604645e-008 0.99999988 1.1920929e-007 0.99999976 1 0 -1.4901161e-007 0.99999976
		 -8.9406967e-008 0.99999976 0.99999988 0 0.99999976 0 -2.9802322e-008 0.99999976 0
		 0.99999976 1 0 0.99999988 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999976
		 0 0.99999976 -5.9604645e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 0 -1.1920929e-007 0.99999988 -5.9604645e-008
		 0.99999988 0.99999988 0 0.99999988 1 0 1 0.99999988 0 0.99999988 0 -5.9604645e-008
		 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 1 0 1 0.99999976 0
		 0.99999976 0 0 1 0 1 1 0 0.99999988 0 -2.9802322e-008 0 0.99999976 0 0 1 0 1 0.99999976
		 0 0.99999976 0 -8.9406967e-008 1 -5.9604645e-008 1 0.99999988 0 0.99999976 0 0 1
		 0 1 0.99999976 0 -5.9604645e-008 0 0.99999976 1 0.99999976 1 -5.9604645e-008 0.99999976
		 0 0.99999976 0.99999976 -2.0861626e-007 0.99999976 -2.0861626e-007 0 0 0.99999976
		 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999988
		 1 0 1 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007 0 0.99999976 -2.9802322e-008
		 0.99999976 0.99999988 -2.3841858e-007 0.99999988 -2.3841858e-007 -5.9604645e-008
		 0 1 0 0 1 0 1 1 0.99999988 0 0 0 0 1 0.99999988 1 0.99999988 4.1723251e-007 0.99999976
		 1.000000357628 -2.3841858e-007 1.000000357628 -1.1920929e-007 3.5762787e-007 0 0.99999976
		 0 -5.9604645e-008 1 -5.9604645e-008 1 0.99999976 0 0.99999988 0 -1.4901161e-007 1
		 -1.1920929e-007 1 0.99999988 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988
		 0.99999988 0.99999976 0 0.99999976 1 -5.9604645e-008 1 -5.9604645e-008 0 0.99999976
		 -5.9604645e-008 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.1920929e-007 0 1 0 0 0.99999988 0 0.99999988 1 0.99999976 -5.9604645e-008 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 -5.9604645e-008 -5.9604645e-008 0.99999976
		 3.5762787e-007 0.99999976 1.000000357628 -1.1920929e-007 1.000000357628 -1.1920929e-007
		 2.9802322e-007 0 0.99999976 0 -5.9604645e-008 0.99999988 -5.9604645e-008 0.99999988
		 0.99999976 0 0.99999988 0 -1.1920929e-007 0.99999988 -5.9604645e-008 0.99999988 0.99999988
		 1 0.99999988 0 0.99999988 0 -2.9802322e-008 1 -2.9802322e-008 0.99999988 0 0.99999976
		 1 -8.9406967e-008 0.99999988 -5.9604645e-008 -2.9802322e-008;
	setAttr ".uvst[0].uvsp[4000:4223]" 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 0.99999976 0.99999988 -2.0861626e-007 0.99999988 -2.0861626e-007
		 -2.9802322e-008 0.99999976 -2.9802322e-008 0 0.99999976 0 -5.9604645e-008 0.99999988
		 -5.9604645e-008 0.99999988 0.99999976 1 0.99999988 0 0.99999988 0 -2.9802322e-008
		 1 -2.9802322e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0 0.99999976 0 0.99999976
		 0.99999976 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -5.9604645e-008 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -5.9604645e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -5.9604645e-008 -2.3841858e-007 0.99999976 -2.3841858e-007 0.99999976
		 0.99999976 -5.9604645e-008 0.99999976 0 -2.3841858e-007 0.99999976 -2.3841858e-007
		 0.99999976 0.99999976 0 0.99999976 1 -2.3841858e-007 1 0.99999976 0 0.99999976 0
		 -2.3841858e-007 -2.3841858e-007 0.99999976 -2.3841858e-007 -2.3841858e-007 0.99999976
		 -2.3841858e-007 0.99999976 0.99999976 1 0 1 1 0 1 0 0 -2.3841858e-007 1 -2.3841858e-007
		 0 0.99999976 0 0.99999976 1 1 0 1 1 0 1 0 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 -8.9406967e-008 0.99999976 -5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007
		 1 -2.3841858e-007 0 0.99999976 0 0.99999976 1 1 5.9604645e-008 1 0.99999976 0 0.99999976
		 0 0 1 -2.9802322e-008 1 0.99999988 0 0.99999988 0 -2.9802322e-008 -2.3841858e-007
		 0.99999988 -2.3841858e-007 -2.9802322e-008 0.99999976 -2.9802322e-008 0.99999976
		 0.99999988 -2.0861626e-007 -2.3841858e-007 0.99999952 -2.3841858e-007 0.99999952
		 0.99999976 -2.0861626e-007 0.99999976 0 -2.3841858e-007 0.99999988 -2.3841858e-007
		 0.99999988 0.99999976 0 0.99999976 1 -2.0861626e-007 0.99999952 0.99999976 -4.7683716e-007
		 0.99999976 0 -2.3841858e-007 -2.3841858e-007 1 -2.3841858e-007 -5.9604645e-008 0.99999976
		 -2.9802322e-008 0.99999976 1 0.99999952 2.9802322e-007 0.99999952 1.000000238419
		 -4.7683716e-007 1.000000238419 -4.7683716e-007 2.3841858e-007 -2.3841858e-007 1.000000476837
		 -2.3841858e-007 4.1723251e-007 0.99999976 4.7683716e-007 0.99999976 1.000000476837
		 1 2.9802322e-007 1 1.000000238419 0 1.000000238419 0 2.3841858e-007 1 -5.9604645e-008
		 1 0.99999976 0 0.99999976 0 -5.9604645e-008 -2.3841858e-007 1.000000476837 -2.3841858e-007
		 4.1723251e-007 0.99999976 4.7683716e-007 0.99999976 1.000000476837 -5.9604645e-008
		 -2.3841858e-007 -5.9604645e-008 0.99999976 0.99999976 0.99999976 0.99999976 -2.3841858e-007
		 -5.9604645e-008 0 -5.9604645e-008 1 0.99999976 1 0.99999976 0 -5.9604645e-008 0.99999976
		 -5.9604645e-008 0 0.99999976 0 0.99999976 0.99999976 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976 0.99999988 -1.1920929e-007
		 0.99999988 -5.9604645e-008 -1.4901161e-007 0.99999976 -8.9406967e-008 0.99999976
		 0.99999988 0.99999988 0 0.99999988 0.99999976 0 0.99999976 0 0 0.99999976 0.99999976
		 0 0.99999976 0 0 0.99999976 0 0.99999976 0 0.99999976 0.99999988 0 0.99999976 0 -5.9604645e-008
		 0.99999964 0 0.99999964 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 0 -1.1920929e-007
		 1.1920929e-007 0.99999976 1.7881393e-007 0.99999976 0.99999988 -1.1920929e-007 0.99999988
		 0 0.99999976 0 0 1 0 1 0.99999976 -5.9604645e-008 0 0.99999976 0 0.99999976 1 -5.9604645e-008
		 1 1 0 1 0.99999976 0 0.99999976 0 0 0 0.99999988 0 5.9604645e-008 1 1.1920929e-007
		 1 0.99999988 1 0 1 0.99999976 0 0.99999976 0 -5.9604645e-008 1 -5.9604645e-008 1
		 0.99999976 0 0.99999976 0 -5.9604645e-008 0 0.99999976 0 -2.9802322e-008 1 5.9604645e-008
		 1 0.99999976 0.99999976 5.9604645e-008 0.99999976 0.99999988 -2.3841858e-007 0.99999988
		 -2.3841858e-007 0 0.99999988 0 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007 0 0
		 0.99999988 0 -2.9802322e-008 1 0 1 0.99999988 0 1 0 0 1 0 1 1 0.99999988 0.99999976
		 0.99999988 -5.9604645e-008 -1.1920929e-007 -5.9604645e-008 -1.1920929e-007 0.99999976
		 0 1 0 0 1 0 1 1 0.99999976 0 0.99999976 0.99999988 -1.1920929e-007 0.99999988 -5.9604645e-008
		 -5.9604645e-008 0 0.99999988 0 -5.9604645e-008 0.99999988 0 0.99999988 0.99999988
		 0 1 0 0 0.99999988 0 0.99999988 1 0.99999988 1 -1.1920929e-007 1 -1.1920929e-007
		 0 0.99999988 0 0.99999988 0.99999976 -1.1920929e-007 0.99999976 -1.1920929e-007 -5.9604645e-008
		 0.99999988 -5.9604645e-008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1092 ".vt";
	setAttr ".vt[0:165]"  5.5511151e-016 5 -45 6.6613381e-016 5 -65 6.6613381e-016 5 -55
		 5.5511151e-016 -8.8817842e-016 -65 45 5 1.9775848e-016 65 5 1.9775848e-016 65 -8.8817842e-016 1.9775848e-016
		 55 5 1.9775848e-016 5 5 -45 15 5 -45 5 -8.8817842e-016 -45 45 -8.8817842e-016 -5
		 45 5 -5 45 5 -15 25 5 -45 45 5 -25 5 35 -35 5 35 -45 45 35 -5 35 35 -5 5 45 -35 35 45 -5
		 45 45 -5 5 45 -45 45 15 -15 45 15 -25 25 15 -45 15 15 -45 25 5 -55 15 5 -55 15 15 -55
		 25 15 -55 15 5 -65 15 15 -65 25 15 -65 25 5 -65 25 -8.8817842e-016 -55 15 -8.8817842e-016 -55
		 25 -8.8557633e-016 -65 15 -8.6129021e-016 -65 55 5 -15 55 5 -25 55 15 -25 55 15 -15
		 65 5 -25 65 15 -25 65 15 -15 65 5 -15 55 -8.8817842e-016 -15 55 -8.8817842e-016 -25
		 65 -8.8557633e-016 -25 65 -8.6129021e-016 -15 5 5 -55 5 5 -65 5 -8.205242e-016 -65
		 5 -8.8817842e-016 -55 65 5 -5 55 5 -5 55 -8.8817842e-016 -5 65 -8.205242e-016 -5
		 15 35 -35 15 35 -45 15 45 -45 5 55 -45 15 55 -45 15 55 -35 5 55 -35 15 45 -35 35 35 -15
		 35 45 -15 35 55 -5 35 55 -15 45 55 -15 45 55 -5 45 45 -15 45 35 -15 15 35 -75 25 35 -75
		 25 45 -75 15 45 -75 15 65 -45 25 65 -45 25 65 -35 15 65 -35 35 65 -15 35 65 -25 45 65 -25
		 45 65 -15 75 45 -15 75 45 -25 75 35 -25 75 35 -15 15 55 -55 25 55 -55 25 55 -45 45 55 -25
		 55 55 -25 55 55 -15 15 55 -65 25 55 -65 65 55 -25 65 55 -15 15 35 -65 15 45 -65 15 55 -75
		 25 55 -75 25 45 -65 25 35 -65 25 5 -75 15 5 -75 65 45 -15 65 35 -15 75 5 -15 75 5 -25
		 65 35 -25 65 45 -25 75 55 -25 75 55 -15 25 25 -65 15 25 -65 15 25 -75 25 25 -75 65 25 -15
		 65 25 -25 75 25 -25 75 25 -15 15 15 -75 25 15 -75 75 15 -25 75 15 -15 25 55 -35 25 45 -35
		 25 45 -45 25 45 -55 15 45 -55 45 45 -25 35 55 -25 35 45 -25 55 45 -15 55 45 -25 15 55 -15
		 15 65 -15 25 65 -15 25 55 -15 15 55 -25 25 55 -25 25 65 -25 15 65 -25 25 -5 -45 15 -5 -45
		 15 -5 -55 25 -5 -55 15 -15 -45 15 -15 -55 25 -15 -45 25 -15 -55 15 -15 -65 15 -5 -65
		 25 -15 -65 25 -5 -65 45 -5 -15 45 -5 -25 55 -5 -25 55 -5 -15 45 -15 -25 55 -15 -25;
	setAttr ".vt[166:331]" 45 -15 -15 55 -15 -15 65 -15 -25 65 -5 -25 65 -15 -15
		 65 -5 -15 5 -5 -65 5 -5 -55 6.6613381e-016 -5 -65 6.6613381e-016 -5 -55 5 -5 -45
		 5.5511151e-016 -5 -45 55 -5 -5 65 -5 -5 65 -5 1.9775848e-016 55 -5 1.9775848e-016
		 45 -5 -5 45 -5 1.9775848e-016 5 -35 -35 5 -35 -45 15 -35 -45 15 -35 -35 5 -45 -45
		 15 -45 -45 5 -55 -45 5 -55 -35 15 -55 -35 15 -55 -45 5 -45 -35 15 -45 -35 35 -35 -5
		 35 -45 -5 35 -45 -15 35 -35 -15 35 -55 -5 45 -55 -5 45 -55 -15 35 -55 -15 45 -45 -5
		 45 -35 -5 45 -35 -15 45 -45 -15 15 -35 -75 15 -45 -75 25 -45 -75 25 -35 -75 15 -65 -45
		 15 -65 -35 25 -65 -35 25 -65 -45 35 -65 -15 45 -65 -15 45 -65 -25 35 -65 -25 75 -45 -15
		 75 -35 -15 75 -35 -25 75 -45 -25 25 -55 -45 25 -55 -55 15 -55 -55 45 -55 -25 55 -55 -15
		 55 -55 -25 25 -55 -65 15 -55 -65 65 -55 -15 65 -55 -25 15 -35 -65 15 -45 -65 25 -55 -75
		 15 -55 -75 25 -45 -65 25 -35 -65 15 -5 -75 25 -5 -75 65 -45 -15 65 -35 -15 75 -5 -25
		 75 -5 -15 65 -35 -25 65 -45 -25 75 -55 -15 75 -55 -25 15 -25 -65 25 -25 -65 15 -25 -75
		 25 -25 -75 65 -25 -25 65 -25 -15 75 -25 -25 75 -25 -15 15 -15 -75 25 -15 -75 75 -15 -25
		 75 -15 -15 25 -45 -35 25 -55 -35 25 -45 -45 25 -45 -55 15 -45 -55 45 -45 -25 35 -45 -25
		 35 -55 -25 55 -45 -15 55 -45 -25 15 -55 -15 25 -55 -15 25 -65 -15 15 -65 -15 25 -55 -25
		 15 -55 -25 25 -65 -25 15 -65 -25 -25 5 -45 -15 5 -45 -15 5 -55 -25 5 -55 -15 15 -45
		 -15 15 -55 -25 15 -45 -25 15 -55 -15 15 -65 -15 5 -65 -25 15 -65 -25 5 -65 -15 -8.8817842e-016 -55
		 -25 -8.8817842e-016 -55 -25 -8.8557633e-016 -65 -15 -8.6129021e-016 -65 -45 5 -15
		 -45 5 -25 -55 5 -25 -55 5 -15 -45 15 -25 -55 15 -25 -45 15 -15 -55 15 -15 -65 15 -25
		 -65 5 -25 -65 15 -15 -65 5 -15 -55 -8.8817842e-016 -25 -55 -8.8817842e-016 -15 -65 -8.8557633e-016 -25
		 -65 -8.6129021e-016 -15 -5 5 -65 -5 5 -55 -5 -8.205242e-016 -65 -5 -8.8817842e-016 -55
		 -5 5 -45 -5 -8.8817842e-016 -45 -55 5 -5 -65 5 -5 -55 -8.8817842e-016 -5 -65 -8.205242e-016 -5
		 -65 5 1.9775848e-016 -65 -8.8817842e-016 1.9775848e-016 -55 5 1.9775848e-016 -45 -8.8817842e-016 -5
		 -45 5 -5 -45 5 1.9775848e-016 -5 35 -35 -5 35 -45 -15 35 -45 -15 35 -35;
	setAttr ".vt[332:497]" -5 45 -45 -15 45 -45 -5 55 -45 -5 55 -35 -15 55 -35
		 -15 55 -45 -5 45 -35 -15 45 -35 -35 35 -5 -35 45 -5 -35 45 -15 -35 35 -15 -35 55 -5
		 -45 55 -5 -45 55 -15 -35 55 -15 -45 45 -5 -45 35 -5 -45 35 -15 -45 45 -15 -15 35 -75
		 -15 45 -75 -25 45 -75 -25 35 -75 -15 65 -45 -15 65 -35 -25 65 -35 -25 65 -45 -35 65 -15
		 -45 65 -15 -45 65 -25 -35 65 -25 -75 45 -15 -75 35 -15 -75 35 -25 -75 45 -25 -25 55 -45
		 -25 55 -55 -15 55 -55 -45 55 -25 -55 55 -15 -55 55 -25 -25 55 -65 -15 55 -65 -65 55 -15
		 -65 55 -25 -15 35 -65 -15 45 -65 -25 55 -75 -15 55 -75 -25 45 -65 -25 35 -65 -15 5 -75
		 -25 5 -75 -65 45 -15 -65 35 -15 -75 5 -25 -75 5 -15 -65 35 -25 -65 45 -25 -75 55 -15
		 -75 55 -25 -15 25 -65 -25 25 -65 -15 25 -75 -25 25 -75 -65 25 -25 -65 25 -15 -75 25 -25
		 -75 25 -15 -15 15 -75 -25 15 -75 -75 15 -25 -75 15 -15 -25 45 -35 -25 55 -35 -25 45 -45
		 -25 45 -55 -15 45 -55 -45 45 -25 -35 45 -25 -35 55 -25 -55 45 -15 -55 45 -25 -15 55 -15
		 -25 55 -15 -25 65 -15 -15 65 -15 -25 55 -25 -15 55 -25 -25 65 -25 -15 65 -25 -25 -5 -45
		 -25 -5 -55 -15 -5 -55 -15 -5 -45 -15 -15 -55 -15 -15 -45 -25 -15 -55 -25 -15 -45
		 -15 -5 -65 -15 -15 -65 -25 -15 -65 -25 -5 -65 -45 -5 -15 -55 -5 -15 -55 -5 -25 -45 -5 -25
		 -55 -15 -25 -45 -15 -25 -55 -15 -15 -45 -15 -15 -65 -5 -25 -65 -15 -25 -65 -15 -15
		 -65 -5 -15 -5 -5 -55 -5 -5 -65 -5 -5 -45 -65 -5 -5 -55 -5 -5 -65 -5 1.9775848e-016
		 -55 -5 1.9775848e-016 -45 -5 -5 -45 -5 1.9775848e-016 -5 -35 -35 -15 -35 -35 -15 -35 -45
		 -5 -35 -45 -15 -45 -45 -5 -45 -45 -5 -55 -45 -15 -55 -45 -15 -55 -35 -5 -55 -35 -5 -45 -35
		 -15 -45 -35 -35 -35 -5 -35 -35 -15 -35 -45 -15 -35 -45 -5 -35 -55 -5 -35 -55 -15
		 -45 -55 -15 -45 -55 -5 -45 -45 -5 -45 -45 -15 -45 -35 -15 -45 -35 -5 -15 -35 -75
		 -25 -35 -75 -25 -45 -75 -15 -45 -75 -15 -65 -45 -25 -65 -45 -25 -65 -35 -15 -65 -35
		 -35 -65 -15 -35 -65 -25 -45 -65 -25 -45 -65 -15 -75 -45 -15 -75 -45 -25 -75 -35 -25
		 -75 -35 -15 -15 -55 -55;
	setAttr ".vt[498:663]" -25 -55 -55 -25 -55 -45 -45 -55 -25 -55 -55 -25 -55 -55 -15
		 -15 -55 -65 -25 -55 -65 -65 -55 -25 -65 -55 -15 -15 -35 -65 -15 -45 -65 -15 -55 -75
		 -25 -55 -75 -25 -45 -65 -25 -35 -65 -25 -5 -75 -15 -5 -75 -65 -45 -15 -65 -35 -15
		 -75 -5 -15 -75 -5 -25 -65 -35 -25 -65 -45 -25 -75 -55 -25 -75 -55 -15 -25 -25 -65
		 -15 -25 -65 -15 -25 -75 -25 -25 -75 -65 -25 -15 -65 -25 -25 -75 -25 -25 -75 -25 -15
		 -15 -15 -75 -25 -15 -75 -75 -15 -25 -75 -15 -15 -25 -55 -35 -25 -45 -35 -25 -45 -45
		 -25 -45 -55 -15 -45 -55 -45 -45 -25 -35 -55 -25 -35 -45 -25 -55 -45 -15 -55 -45 -25
		 -15 -55 -15 -15 -65 -15 -25 -65 -15 -25 -55 -15 -15 -55 -25 -25 -55 -25 -25 -65 -25
		 -15 -65 -25 25 5 45 15 5 45 15 5 55 25 5 55 15 15 45 15 15 55 25 15 45 25 15 55 15 15 65
		 15 5 65 25 15 65 25 5 65 15 -8.8817842e-016 55 25 -8.8817842e-016 55 25 -8.8557633e-016 65
		 15 -8.6129021e-016 65 45 5 15 45 5 25 55 5 25 55 5 15 45 15 25 55 15 25 45 15 15
		 55 15 15 65 15 25 65 5 25 65 15 15 65 5 15 55 -8.8817842e-016 25 55 -8.8817842e-016 15
		 65 -8.8557633e-016 25 65 -8.6129021e-016 15 5 5 65 5 5 55 5 -8.205242e-016 65 5 -8.8817842e-016 55
		 6.6613381e-016 5 65 6.6613381e-016 5 55 5.5511151e-016 -8.8817842e-016 65 5 5 45
		 5 -8.8817842e-016 45 5.5511151e-016 5 45 55 5 5 65 5 5 55 -8.8817842e-016 5 65 -8.205242e-016 5
		 45 -8.8817842e-016 5 45 5 5 5 35 35 5 35 45 15 35 45 15 35 35 5 45 45 15 45 45 5 55 45
		 5 55 35 15 55 35 15 55 45 5 45 35 15 45 35 35 35 5 35 45 5 35 45 15 35 35 15 35 55 5
		 45 55 5 45 55 15 35 55 15 45 45 5 45 35 5 45 35 15 45 45 15 15 35 75 15 45 75 25 45 75
		 25 35 75 15 65 45 15 65 35 25 65 35 25 65 45 35 65 15 45 65 15 45 65 25 35 65 25
		 75 45 15 75 35 15 75 35 25 75 45 25 25 55 45 25 55 55 15 55 55 45 55 25 55 55 15
		 55 55 25 25 55 65 15 55 65 65 55 15 65 55 25 15 35 65 15 45 65 25 55 75 15 55 75
		 25 45 65 25 35 65 15 5 75 25 5 75 65 45 15 65 35 15 75 5 25 75 5 15 65 35 25;
	setAttr ".vt[664:829]" 65 45 25 75 55 15 75 55 25 15 25 65 25 25 65 15 25 75
		 25 25 75 65 25 25 65 25 15 75 25 25 75 25 15 15 15 75 25 15 75 75 15 25 75 15 15
		 25 45 35 25 55 35 25 45 45 25 45 55 15 45 55 45 45 25 35 45 25 35 55 25 55 45 15
		 55 45 25 15 55 15 25 55 15 25 65 15 15 65 15 25 55 25 15 55 25 25 65 25 15 65 25
		 25 -5 45 25 -5 55 15 -5 55 15 -5 45 15 -15 55 15 -15 45 25 -15 55 25 -15 45 15 -5 65
		 15 -15 65 25 -15 65 25 -5 65 45 -5 15 55 -5 15 55 -5 25 45 -5 25 55 -15 25 45 -15 25
		 55 -15 15 45 -15 15 65 -5 25 65 -15 25 65 -15 15 65 -5 15 5 -5 55 5 -5 65 6.6613381e-016 -5 55
		 6.6613381e-016 -5 65 5 -5 45 5.5511151e-016 -5 45 65 -5 5 55 -5 5 45 -5 5 5 -35 35
		 15 -35 35 15 -35 45 5 -35 45 15 -45 45 5 -45 45 5 -55 45 15 -55 45 15 -55 35 5 -55 35
		 5 -45 35 15 -45 35 35 -35 5 35 -35 15 35 -45 15 35 -45 5 35 -55 5 35 -55 15 45 -55 15
		 45 -55 5 45 -45 5 45 -45 15 45 -35 15 45 -35 5 15 -35 75 25 -35 75 25 -45 75 15 -45 75
		 15 -65 45 25 -65 45 25 -65 35 15 -65 35 35 -65 15 35 -65 25 45 -65 25 45 -65 15 75 -45 15
		 75 -45 25 75 -35 25 75 -35 15 15 -55 55 25 -55 55 25 -55 45 45 -55 25 55 -55 25 55 -55 15
		 15 -55 65 25 -55 65 65 -55 25 65 -55 15 15 -35 65 15 -45 65 15 -55 75 25 -55 75 25 -45 65
		 25 -35 65 25 -5 75 15 -5 75 65 -45 15 65 -35 15 75 -5 15 75 -5 25 65 -35 25 65 -45 25
		 75 -55 25 75 -55 15 25 -25 65 15 -25 65 15 -25 75 25 -25 75 65 -25 15 65 -25 25 75 -25 25
		 75 -25 15 15 -15 75 25 -15 75 75 -15 25 75 -15 15 25 -55 35 25 -45 35 25 -45 45 25 -45 55
		 15 -45 55 45 -45 25 35 -55 25 35 -45 25 55 -45 15 55 -45 25 15 -55 15 15 -65 15 25 -65 15
		 25 -55 15 15 -55 25 25 -55 25 25 -65 25 15 -65 25 -25 5 45 -25 5 55 -15 5 55 -15 5 45;
	setAttr ".vt[830:995]" -15 15 55 -15 15 45 -25 15 55 -25 15 45 -15 5 65 -15 15 65
		 -25 15 65 -25 5 65 -25 -8.8817842e-016 55 -15 -8.8817842e-016 55 -25 -8.8557633e-016 65
		 -15 -8.6129021e-016 65 -45 5 15 -55 5 15 -55 5 25 -45 5 25 -55 15 25 -45 15 25 -55 15 15
		 -45 15 15 -65 5 25 -65 15 25 -65 15 15 -65 5 15 -55 -8.8817842e-016 15 -55 -8.8817842e-016 25
		 -65 -8.8557633e-016 25 -65 -8.6129021e-016 15 -5 5 55 -5 5 65 -5 -8.205242e-016 65
		 -5 -8.8817842e-016 55 -5 5 45 -5 -8.8817842e-016 45 -65 5 5 -55 5 5 -55 -8.8817842e-016 5
		 -65 -8.205242e-016 5 -45 -8.8817842e-016 5 -45 5 5 -5 35 35 -15 35 35 -15 35 45 -5 35 45
		 -15 45 45 -5 45 45 -5 55 45 -15 55 45 -15 55 35 -5 55 35 -5 45 35 -15 45 35 -35 35 5
		 -35 35 15 -35 45 15 -35 45 5 -35 55 5 -35 55 15 -45 55 15 -45 55 5 -45 45 5 -45 45 15
		 -45 35 15 -45 35 5 -15 35 75 -25 35 75 -25 45 75 -15 45 75 -15 65 45 -25 65 45 -25 65 35
		 -15 65 35 -35 65 15 -35 65 25 -45 65 25 -45 65 15 -75 45 15 -75 45 25 -75 35 25 -75 35 15
		 -15 55 55 -25 55 55 -25 55 45 -45 55 25 -55 55 25 -55 55 15 -15 55 65 -25 55 65 -65 55 25
		 -65 55 15 -15 35 65 -15 45 65 -15 55 75 -25 55 75 -25 45 65 -25 35 65 -25 5 75 -15 5 75
		 -65 45 15 -65 35 15 -75 5 15 -75 5 25 -65 35 25 -65 45 25 -75 55 25 -75 55 15 -25 25 65
		 -15 25 65 -15 25 75 -25 25 75 -65 25 15 -65 25 25 -75 25 25 -75 25 15 -15 15 75 -25 15 75
		 -75 15 25 -75 15 15 -25 55 35 -25 45 35 -25 45 45 -25 45 55 -15 45 55 -45 45 25 -35 55 25
		 -35 45 25 -55 45 15 -55 45 25 -15 55 15 -15 65 15 -25 65 15 -25 55 15 -15 55 25 -25 55 25
		 -25 65 25 -15 65 25 -25 -5 45 -15 -5 45 -15 -5 55 -25 -5 55 -15 -15 45 -15 -15 55
		 -25 -15 45 -25 -15 55 -15 -15 65 -15 -5 65 -25 -15 65 -25 -5 65 -45 -5 15 -45 -5 25
		 -55 -5 25 -55 -5 15 -45 -15 25 -55 -15 25 -45 -15 15 -55 -15 15 -65 -15 25 -65 -5 25
		 -65 -15 15 -65 -5 15 -5 -5 65 -5 -5 55 -5 -5 45 -55 -5 5 -65 -5 5 -45 -5 5;
	setAttr ".vt[996:1091]" -5 -35 35 -5 -35 45 -15 -35 45 -15 -35 35 -5 -45 45
		 -15 -45 45 -5 -55 45 -5 -55 35 -15 -55 35 -15 -55 45 -5 -45 35 -15 -45 35 -35 -35 5
		 -35 -45 5 -35 -45 15 -35 -35 15 -35 -55 5 -45 -55 5 -45 -55 15 -35 -55 15 -45 -45 5
		 -45 -35 5 -45 -35 15 -45 -45 15 -15 -35 75 -15 -45 75 -25 -45 75 -25 -35 75 -15 -65 45
		 -15 -65 35 -25 -65 35 -25 -65 45 -35 -65 15 -45 -65 15 -45 -65 25 -35 -65 25 -75 -45 15
		 -75 -35 15 -75 -35 25 -75 -45 25 -25 -55 45 -25 -55 55 -15 -55 55 -45 -55 25 -55 -55 15
		 -55 -55 25 -25 -55 65 -15 -55 65 -65 -55 15 -65 -55 25 -15 -35 65 -15 -45 65 -25 -55 75
		 -15 -55 75 -25 -45 65 -25 -35 65 -15 -5 75 -25 -5 75 -65 -45 15 -65 -35 15 -75 -5 25
		 -75 -5 15 -65 -35 25 -65 -45 25 -75 -55 15 -75 -55 25 -15 -25 65 -25 -25 65 -15 -25 75
		 -25 -25 75 -65 -25 25 -65 -25 15 -75 -25 25 -75 -25 15 -15 -15 75 -25 -15 75 -75 -15 25
		 -75 -15 15 -25 -45 35 -25 -55 35 -25 -45 45 -25 -45 55 -15 -45 55 -45 -45 25 -35 -45 25
		 -35 -55 25 -55 -45 15 -55 -45 25 -15 -55 15 -25 -55 15 -25 -65 15 -15 -65 15 -25 -55 25
		 -15 -55 25 -25 -65 25 -15 -65 25;
	setAttr -s 2192 ".ed";
	setAttr ".ed[0:165]"  2 1 0 1 3 0 0 2 0 6 5 0 5 7 0 4 7 0 8 10 0 12 11 0
		 4 12 0 9 14 0 13 15 0 16 17 0 19 18 0 16 20 0 19 21 0 21 22 0 18 22 0 8 0 0 17 23 0
		 20 23 0 24 25 0 27 26 0 14 26 0 9 27 0 15 25 0 13 24 0 14 28 0 29 28 0 9 29 0 29 30 1
		 27 30 0 30 31 1 26 31 0 28 31 1 29 32 0 32 33 1 30 33 0 33 34 0 31 34 0 35 34 1 28 35 1
		 28 36 0 37 36 0 29 37 1 35 38 0 36 38 0 32 39 1 38 39 0 32 35 0 13 40 0 40 41 0 15 41 0
		 41 42 1 25 42 0 43 42 1 24 43 0 40 43 1 41 44 1 44 45 1 42 45 0 46 45 0 43 46 0 47 46 1
		 40 47 0 40 48 1 49 48 0 41 49 0 50 49 0 44 50 0 51 50 0 47 51 1 47 44 0 29 52 0 52 53 1
		 32 53 0 53 54 1 39 54 0 37 55 0 52 55 0 52 2 1 53 1 0 54 3 0 8 52 0 10 55 0 47 56 0
		 57 56 1 40 57 0 57 58 0 48 58 0 51 59 0 56 59 1 59 6 0 56 5 0 57 7 1 11 58 0 12 57 0
		 16 60 0 60 61 0 17 61 0 61 62 0 23 62 1 63 64 0 65 64 0 66 65 0 66 63 0 20 67 1 60 67 0
		 19 68 0 68 69 0 21 69 1 70 71 0 71 72 0 73 72 0 70 73 0 22 74 1 75 74 0 18 75 0 68 75 0
		 76 77 1 77 78 0 79 78 1 76 79 0 80 81 0 82 81 0 83 82 1 83 80 0 84 85 1 85 86 0 87 86 0
		 84 87 0 88 89 1 90 89 0 91 90 1 91 88 0 64 92 0 92 93 1 94 93 0 64 94 0 95 96 0 97 96 1
		 72 97 0 72 95 0 92 98 0 98 99 1 93 99 0 96 100 0 101 100 1 97 101 0 102 76 1 103 79 1
		 102 103 0 98 104 0 104 105 0 99 105 0 106 78 1 107 77 1 107 106 0 35 108 0 109 108 0
		 32 109 0 110 88 1 111 91 1 111 110 0 47 112 0 112 113 0 44 113 0;
	setAttr ".ed[166:331]" 114 90 1 115 89 1 114 115 0 100 116 0 117 116 0 101 117 0
		 107 118 0 119 118 1 102 119 0 102 107 1 119 120 1 76 120 0 120 121 1 77 121 0 118 121 1
		 111 122 0 122 123 1 114 123 0 111 114 1 123 124 1 90 124 0 125 124 1 91 125 0 122 125 1
		 118 34 0 119 33 0 33 126 1 120 126 0 126 127 1 121 127 0 34 127 1 122 46 0 123 45 0
		 45 128 1 124 128 0 129 128 1 125 129 0 46 129 1 126 109 0 127 108 0 128 113 0 129 112 0
		 23 63 0 20 66 0 67 65 1 62 64 0 65 130 0 131 130 0 67 131 0 130 94 1 132 94 1 131 132 0
		 133 93 1 132 133 0 134 92 1 62 134 0 106 99 1 133 106 0 103 98 1 134 103 0 78 105 0
		 79 104 0 21 70 0 22 73 0 74 72 0 69 71 1 135 95 1 136 95 1 137 136 0 137 135 0 71 136 0
		 69 137 0 138 97 1 74 138 0 139 96 1 135 139 0 110 101 1 138 110 0 115 100 1 139 115 0
		 88 117 0 89 116 0 62 132 1 134 133 1 103 106 0 110 115 0 138 139 1 74 135 1 62 67 0
		 69 74 0 64 80 0 65 83 1 140 141 0 141 142 0 143 142 1 140 143 0 130 82 1 94 81 0
		 71 84 1 72 87 0 95 86 0 136 85 1 65 144 0 144 145 1 130 145 0 145 146 0 82 146 0
		 147 146 1 83 147 0 144 147 1 136 145 0 145 143 1 71 143 0 85 146 0 144 140 0 146 142 1
		 147 141 0 84 142 0 149 148 0 149 150 0 150 151 0 148 151 0 149 152 0 152 153 0 150 153 1
		 152 154 0 154 155 0 153 155 1 148 154 0 151 155 1 153 156 0 157 156 1 150 157 0 155 158 0
		 156 158 0 151 159 1 159 158 1 150 37 1 151 36 0 159 38 0 157 159 0 157 39 1 160 161 0
		 161 162 0 163 162 0 160 163 0 161 164 0 164 165 0 162 165 1 166 164 0 166 167 0 167 165 1
		 160 166 0 163 167 1 165 168 0 169 168 1 162 169 1 167 170 0 170 168 0 163 171 0 171 170 1
		 162 49 0 163 48 1 169 50 0 171 169 0 171 51 1;
	setAttr ".ed[332:497]" 157 172 0 173 172 1 150 173 0 172 54 1 173 55 0 172 174 0
		 175 174 0 173 175 1 174 3 0 176 10 0 176 173 0 176 177 0 177 175 0 163 178 0 178 179 1
		 171 179 0 178 58 0 179 59 1 179 180 0 6 180 0 178 181 1 180 181 0 182 11 0 182 178 0
		 183 182 0 183 181 0 184 185 0 185 186 0 187 186 0 184 187 0 185 188 0 188 189 1 186 189 0
		 191 190 0 191 192 0 192 193 0 190 193 0 184 194 0 187 195 0 194 195 1 196 197 0 197 198 1
		 199 198 0 196 199 0 200 201 0 201 202 0 203 202 0 200 203 0 205 204 0 205 206 0 206 207 0
		 204 207 1 196 205 0 199 206 0 208 209 0 209 210 1 211 210 0 208 211 1 213 212 0 213 214 1
		 214 215 0 212 215 0 216 217 0 217 218 0 219 218 0 216 219 1 221 220 0 221 222 1 222 223 0
		 220 223 1 193 224 0 224 225 0 226 225 1 193 226 0 202 227 0 202 228 0 228 229 1 227 229 0
		 225 230 0 231 230 1 226 231 0 228 232 0 232 233 1 229 233 0 234 235 0 235 209 1 234 208 1
		 230 236 0 237 236 0 231 237 0 239 238 0 239 211 1 238 210 1 157 240 0 240 241 0 159 241 0
		 243 242 0 243 221 1 242 220 1 169 244 0 245 244 0 171 245 0 246 247 0 247 223 1 246 222 1
		 232 248 0 248 249 0 233 249 0 234 239 1 234 250 0 250 251 1 239 251 0 208 252 0 250 252 1
		 211 253 0 252 253 1 251 253 1 243 246 1 246 254 0 255 254 1 243 255 0 222 256 0 254 256 1
		 221 257 0 257 256 1 255 257 1 250 156 0 251 158 0 252 258 0 156 258 1 253 259 0 258 259 1
		 158 259 1 254 168 0 255 170 0 256 260 0 168 260 1 257 261 0 261 260 1 170 261 1 258 240 0
		 259 241 0 260 244 0 261 245 0 194 188 0 194 191 0 188 190 0 195 192 1 189 193 0 195 262 0
		 262 263 0 192 263 0 262 264 0 264 224 1 263 224 1 264 265 0 265 225 1 189 266 0 266 226 1
		 265 238 0 238 230 1 266 235 0 235 231 1 210 236 0 209 237 0 197 204 0;
	setAttr ".ed[498:663]" 204 201 0 197 200 0 207 202 0 198 203 1 268 267 0 268 269 0
		 269 227 1 267 227 1 198 268 0 203 269 0 207 270 0 270 228 1 267 271 0 271 229 1 270 242 0
		 242 232 1 271 247 0 247 233 1 220 248 0 223 249 0 266 265 1 189 264 1 235 238 0 270 271 1
		 242 247 0 207 267 1 189 195 0 198 207 0 192 213 1 193 212 0 272 273 0 273 274 1 275 274 0
		 272 275 0 224 215 0 263 214 1 202 217 0 203 216 1 227 218 0 269 219 1 263 276 0 277 276 1
		 192 277 0 214 278 0 276 278 0 213 279 0 279 278 1 277 279 1 203 273 0 276 273 1 269 276 0
		 219 278 0 277 272 0 279 275 0 278 274 1 216 274 0 281 280 0 281 282 0 282 283 0 280 283 0
		 281 284 0 284 285 0 282 285 1 284 286 0 286 287 0 285 287 1 280 286 0 283 287 1 285 288 0
		 289 288 1 282 289 0 287 290 0 288 290 0 283 291 1 291 290 1 282 292 1 292 293 0 283 293 0
		 293 294 0 291 294 0 289 291 0 294 295 0 289 295 1 296 297 0 297 298 0 299 298 0 296 299 0
		 297 300 0 300 301 0 298 301 1 302 300 0 302 303 0 303 301 1 296 302 0 299 303 1 301 304 0
		 305 304 1 298 305 1 303 306 0 306 304 0 299 307 0 307 306 1 298 308 0 308 309 0 299 309 1
		 305 310 0 310 308 0 307 305 0 307 311 1 311 310 0 289 312 0 313 312 1 282 313 0 295 314 0
		 312 314 1 313 315 0 292 315 0 312 1 0 313 2 1 314 3 0 316 317 0 317 315 0 316 313 0
		 316 0 0 299 318 0 318 319 1 307 319 0 309 320 0 318 320 0 319 321 1 311 321 0 319 322 0
		 323 322 0 321 323 0 318 324 1 322 324 0 326 325 0 326 318 0 325 320 0 327 326 0 327 324 0
		 328 329 0 329 330 0 331 330 0 328 331 0 329 332 0 332 333 1 330 333 0 335 334 0 335 336 0
		 336 337 0 334 337 0 328 338 0 331 339 0 338 339 1 340 341 0 341 342 1 343 342 0 340 343 0
		 344 345 0 345 346 0 347 346 0 344 347 0 349 348 0 349 350 0 350 351 0;
	setAttr ".ed[664:829]" 348 351 1 340 349 0 343 350 0 352 353 0 353 354 1 355 354 0
		 352 355 1 357 356 0 357 358 1 358 359 0 356 359 0 360 361 0 361 362 0 363 362 0 360 363 1
		 365 364 0 365 366 1 366 367 0 364 367 1 337 368 0 368 369 0 370 369 1 337 370 0 346 371 0
		 346 372 0 372 373 1 371 373 0 369 374 0 375 374 1 370 375 0 372 376 0 376 377 1 373 377 0
		 378 379 0 379 353 1 378 352 1 374 380 0 381 380 0 375 381 0 383 382 0 383 355 1 382 354 1
		 289 384 0 384 385 0 291 385 0 387 386 0 387 365 1 386 364 1 305 388 0 389 388 0 307 389 0
		 390 391 0 391 367 1 390 366 1 376 392 0 392 393 0 377 393 0 378 383 1 378 394 0 394 395 1
		 383 395 0 352 396 0 394 396 1 355 397 0 396 397 1 395 397 1 387 390 1 390 398 0 399 398 1
		 387 399 0 366 400 0 398 400 1 365 401 0 401 400 1 399 401 1 394 288 0 395 290 0 396 402 0
		 288 402 1 397 403 0 402 403 1 290 403 1 398 304 0 399 306 0 400 404 0 304 404 1 401 405 0
		 405 404 1 306 405 1 402 384 0 403 385 0 404 388 0 405 389 0 338 332 0 338 335 0 332 334 0
		 339 336 1 333 337 0 339 406 0 406 407 0 336 407 0 406 408 0 408 368 1 407 368 1 408 409 0
		 409 369 1 333 410 0 410 370 1 409 382 0 382 374 1 410 379 0 379 375 1 354 380 0 353 381 0
		 341 348 0 348 345 0 341 344 0 351 346 0 342 347 1 412 411 0 412 413 0 413 371 1 411 371 1
		 342 412 0 347 413 0 351 414 0 414 372 1 411 415 0 415 373 1 414 386 0 386 376 1 415 391 0
		 391 377 1 364 392 0 367 393 0 410 409 1 333 408 1 379 382 0 414 415 1 386 391 0 351 411 1
		 333 339 0 342 351 0 336 357 1 337 356 0 416 417 0 417 418 1 419 418 0 416 419 0 368 359 0
		 407 358 1 346 361 0 347 360 1 371 362 0 413 363 1 407 420 0 421 420 1 336 421 0 358 422 0
		 420 422 0 357 423 0 423 422 1 421 423 1 347 417 0 420 417 1 413 420 0;
	setAttr ".ed[830:995]" 363 422 0 421 416 0 423 419 0 422 418 1 360 418 0 424 425 0
		 426 425 0 427 426 0 427 424 0 426 428 1 429 428 0 427 429 0 428 430 1 431 430 0 429 431 0
		 425 430 1 424 431 0 426 432 0 432 433 1 428 433 0 433 434 0 430 434 0 435 434 1 425 435 1
		 425 293 0 426 292 1 435 294 0 432 295 1 432 435 0 436 437 0 437 438 0 439 438 0 436 439 0
		 438 440 1 441 440 0 439 441 0 442 440 1 443 442 0 443 441 0 437 442 1 436 443 0 438 444 1
		 444 445 1 440 445 0 446 445 0 442 446 0 447 446 1 437 447 0 437 309 1 438 308 0 444 310 0
		 447 311 1 447 444 0 426 448 0 448 449 1 432 449 0 449 314 1 448 315 0 448 175 1 449 174 0
		 450 448 0 450 317 0 450 177 0 447 451 0 452 451 1 437 452 0 452 320 0 451 321 1 323 453 0
		 451 453 0 453 454 0 452 454 1 455 452 0 455 325 0 456 454 0 456 455 0 457 458 0 458 459 0
		 460 459 0 457 460 0 459 461 0 462 461 1 460 462 0 463 464 0 465 464 0 466 465 0 466 463 0
		 467 468 1 458 468 0 457 467 0 469 470 0 470 471 0 472 471 1 469 472 0 473 474 0 474 475 0
		 476 475 0 473 476 0 477 478 1 479 478 0 480 479 0 480 477 0 470 479 0 469 480 0 481 482 1
		 482 483 0 484 483 1 481 484 0 485 486 0 487 486 0 488 487 1 488 485 0 489 490 1 490 491 0
		 492 491 0 489 492 0 493 494 1 495 494 0 496 495 1 496 493 0 464 497 0 497 498 1 499 498 0
		 464 499 0 500 501 0 502 501 1 475 502 0 475 500 0 497 503 0 503 504 1 498 504 0 501 505 0
		 506 505 1 502 506 0 507 481 1 508 484 1 507 508 0 503 509 0 509 510 0 504 510 0 511 483 1
		 512 482 1 512 511 0 435 513 0 514 513 0 432 514 0 515 493 1 516 496 1 516 515 0 447 517 0
		 517 518 0 444 518 0 519 495 1 520 494 1 519 520 0 505 521 0 522 521 0 506 522 0 512 523 0
		 524 523 1 507 524 0 507 512 1 524 525 1 481 525 0 525 526 1 482 526 0;
	setAttr ".ed[996:1161]" 523 526 1 516 527 0 527 528 1 519 528 0 516 519 1 528 529 1
		 495 529 0 530 529 1 496 530 0 527 530 1 523 434 0 524 433 0 433 531 1 525 531 0 531 532 1
		 526 532 0 434 532 1 527 446 0 528 445 0 445 533 1 529 533 0 534 533 1 530 534 0 446 534 1
		 531 514 0 532 513 0 533 518 0 534 517 0 462 463 0 467 466 0 467 462 0 468 465 1 461 464 0
		 465 535 0 536 535 0 468 536 0 535 499 1 537 499 1 536 537 0 538 498 1 537 538 0 539 497 1
		 461 539 0 511 504 1 538 511 0 508 503 1 539 508 0 483 510 0 484 509 0 472 473 0 477 476 0
		 472 477 0 478 475 0 471 474 1 540 500 1 541 500 1 542 541 0 542 540 0 474 541 0 471 542 0
		 543 502 1 478 543 0 544 501 1 540 544 0 515 506 1 543 515 0 520 505 1 544 520 0 493 522 0
		 494 521 0 461 537 1 539 538 1 508 511 0 515 520 0 543 544 1 478 540 1 461 468 0 471 478 0
		 464 485 0 465 488 1 545 546 0 546 547 0 548 547 1 545 548 0 535 487 1 499 486 0 474 489 1
		 475 492 0 500 491 0 541 490 1 465 549 0 549 550 1 535 550 0 550 551 0 487 551 0 552 551 1
		 488 552 0 549 552 1 541 550 0 550 548 1 474 548 0 490 551 0 549 545 0 551 547 1 552 546 0
		 489 547 0 554 553 0 554 555 0 555 556 0 553 556 0 554 557 0 557 558 0 555 558 1 557 559 0
		 559 560 0 558 560 1 553 559 0 556 560 1 558 561 0 562 561 1 555 562 0 560 563 0 561 563 0
		 556 564 1 564 563 1 555 565 1 565 566 0 556 566 0 566 567 0 564 567 0 562 564 0 567 568 0
		 562 568 1 569 570 0 570 571 0 572 571 0 569 572 0 570 573 0 573 574 0 571 574 1 575 573 0
		 575 576 0 576 574 1 569 575 0 572 576 1 574 577 0 578 577 1 571 578 1 576 579 0 579 577 0
		 572 580 0 580 579 1 571 581 0 581 582 0 572 582 1 578 583 0 583 581 0 580 578 0 580 584 1
		 584 583 0 562 585 0 586 585 1 555 586 0 568 587 0 585 587 1 586 588 0;
	setAttr ".ed[1162:1327]" 565 588 0 585 589 0 590 589 0 586 590 1 587 591 0 589 591 0
		 592 593 0 593 588 0 592 586 0 592 594 0 594 590 0 572 595 0 595 596 1 580 596 0 582 597 0
		 595 597 0 596 598 1 584 598 0 596 5 0 598 6 0 595 7 1 600 599 0 600 595 0 599 597 0
		 4 600 0 601 602 0 602 603 0 604 603 0 601 604 0 602 605 0 605 606 1 603 606 0 608 607 0
		 608 609 0 609 610 0 607 610 0 601 611 0 604 612 0 611 612 1 613 614 0 614 615 1 616 615 0
		 613 616 0 617 618 0 618 619 0 620 619 0 617 620 0 622 621 0 622 623 0 623 624 0 621 624 1
		 613 622 0 616 623 0 625 626 0 626 627 1 628 627 0 625 628 1 630 629 0 630 631 1 631 632 0
		 629 632 0 633 634 0 634 635 0 636 635 0 633 636 1 638 637 0 638 639 1 639 640 0 637 640 1
		 610 641 0 641 642 0 643 642 1 610 643 0 619 644 0 619 645 0 645 646 1 644 646 0 642 647 0
		 648 647 1 643 648 0 645 649 0 649 650 1 646 650 0 651 652 0 652 626 1 651 625 1 647 653 0
		 654 653 0 648 654 0 656 655 0 656 628 1 655 627 1 562 657 0 657 658 0 564 658 0 660 659 0
		 660 638 1 659 637 1 578 661 0 662 661 0 580 662 0 663 664 0 664 640 1 663 639 1 649 665 0
		 665 666 0 650 666 0 651 656 1 651 667 0 667 668 1 656 668 0 625 669 0 667 669 1 628 670 0
		 669 670 1 668 670 1 660 663 1 663 671 0 672 671 1 660 672 0 639 673 0 671 673 1 638 674 0
		 674 673 1 672 674 1 667 561 0 668 563 0 669 675 0 561 675 1 670 676 0 675 676 1 563 676 1
		 671 577 0 672 579 0 673 677 0 577 677 1 674 678 0 678 677 1 579 678 1 675 657 0 676 658 0
		 677 661 0 678 662 0 611 605 0 611 608 0 605 607 0 612 609 1 606 610 0 612 679 0 679 680 0
		 609 680 0 679 681 0 681 641 1 680 641 1 681 682 0 682 642 1 606 683 0 683 643 1 682 655 0
		 655 647 1 683 652 0 652 648 1 627 653 0 626 654 0 614 621 0 621 618 0;
	setAttr ".ed[1328:1493]" 614 617 0 624 619 0 615 620 1 685 684 0 685 686 0 686 644 1
		 684 644 1 615 685 0 620 686 0 624 687 0 687 645 1 684 688 0 688 646 1 687 659 0 659 649 1
		 688 664 0 664 650 1 637 665 0 640 666 0 683 682 1 606 681 1 652 655 0 687 688 1 659 664 0
		 624 684 1 606 612 0 615 624 0 609 630 1 610 629 0 689 690 0 690 691 1 692 691 0 689 692 0
		 641 632 0 680 631 1 619 634 0 620 633 1 644 635 0 686 636 1 680 693 0 694 693 1 609 694 0
		 631 695 0 693 695 0 630 696 0 696 695 1 694 696 1 620 690 0 693 690 1 686 693 0 636 695 0
		 694 689 0 696 692 0 695 691 1 633 691 0 697 698 0 699 698 0 700 699 0 700 697 0 699 701 1
		 702 701 0 700 702 0 701 703 1 704 703 0 702 704 0 698 703 1 697 704 0 699 705 0 705 706 1
		 701 706 0 706 707 0 703 707 0 708 707 1 698 708 1 698 566 0 699 565 1 708 567 0 705 568 1
		 705 708 0 709 710 0 710 711 0 712 711 0 709 712 0 711 713 1 714 713 0 712 714 0 715 713 1
		 716 715 0 716 714 0 710 715 1 709 716 0 711 717 1 717 718 1 713 718 0 719 718 0 715 719 0
		 720 719 1 710 720 0 710 582 1 711 581 0 717 583 0 720 584 1 720 717 0 699 721 0 721 722 1
		 705 722 0 722 587 1 721 588 0 721 723 1 723 724 0 722 724 0 724 591 0 725 721 0 725 593 0
		 726 723 0 725 726 0 720 727 0 728 727 1 710 728 0 728 597 0 727 598 1 727 180 0 728 181 1
		 729 728 0 729 599 0 183 729 0 730 731 0 731 732 0 733 732 0 730 733 0 732 734 0 735 734 1
		 733 735 0 736 737 0 738 737 0 739 738 0 739 736 0 740 741 1 731 741 0 730 740 0 742 743 0
		 743 744 0 745 744 1 742 745 0 746 747 0 747 748 0 749 748 0 746 749 0 750 751 1 752 751 0
		 753 752 0 753 750 0 743 752 0 742 753 0 754 755 1 755 756 0 757 756 1 754 757 0 758 759 0
		 760 759 0 761 760 1 761 758 0 762 763 1 763 764 0 765 764 0 762 765 0;
	setAttr ".ed[1494:1659]" 766 767 1 768 767 0 769 768 1 769 766 0 737 770 0 770 771 1
		 772 771 0 737 772 0 773 774 0 775 774 1 748 775 0 748 773 0 770 776 0 776 777 1 771 777 0
		 774 778 0 779 778 1 775 779 0 780 754 1 781 757 1 780 781 0 776 782 0 782 783 0 777 783 0
		 784 756 1 785 755 1 785 784 0 708 786 0 787 786 0 705 787 0 788 766 1 789 769 1 789 788 0
		 720 790 0 790 791 0 717 791 0 792 768 1 793 767 1 792 793 0 778 794 0 795 794 0 779 795 0
		 785 796 0 797 796 1 780 797 0 780 785 1 797 798 1 754 798 0 798 799 1 755 799 0 796 799 1
		 789 800 0 800 801 1 792 801 0 789 792 1 801 802 1 768 802 0 803 802 1 769 803 0 800 803 1
		 796 707 0 797 706 0 706 804 1 798 804 0 804 805 1 799 805 0 707 805 1 800 719 0 801 718 0
		 718 806 1 802 806 0 807 806 1 803 807 0 719 807 1 804 787 0 805 786 0 806 791 0 807 790 0
		 735 736 0 740 739 0 740 735 0 741 738 1 734 737 0 738 808 0 809 808 0 741 809 0 808 772 1
		 810 772 1 809 810 0 811 771 1 810 811 0 812 770 1 734 812 0 784 777 1 811 784 0 781 776 1
		 812 781 0 756 783 0 757 782 0 745 746 0 750 749 0 745 750 0 751 748 0 744 747 1 813 773 1
		 814 773 1 815 814 0 815 813 0 747 814 0 744 815 0 816 775 1 751 816 0 817 774 1 813 817 0
		 788 779 1 816 788 0 793 778 1 817 793 0 766 795 0 767 794 0 734 810 1 812 811 1 781 784 0
		 788 793 0 816 817 1 751 813 1 734 741 0 744 751 0 737 758 0 738 761 1 818 819 0 819 820 0
		 821 820 1 818 821 0 808 760 1 772 759 0 747 762 1 748 765 0 773 764 0 814 763 1 738 822 0
		 822 823 1 808 823 0 823 824 0 760 824 0 825 824 1 761 825 0 822 825 1 814 823 0 823 821 1
		 747 821 0 763 824 0 822 818 0 824 820 1 825 819 0 762 820 0 826 827 0 828 827 0 829 828 0
		 829 826 0 828 830 1 831 830 0 829 831 0 830 832 1 833 832 0 831 833 0;
	setAttr ".ed[1660:1825]" 827 832 1 826 833 0 828 834 0 834 835 1 830 835 0 835 836 0
		 832 836 0 837 836 1 827 837 1 827 838 0 839 838 0 828 839 1 837 840 0 838 840 0 834 841 1
		 840 841 0 834 837 0 842 843 0 843 844 0 845 844 0 842 845 0 844 846 1 847 846 0 845 847 0
		 848 846 1 849 848 0 849 847 0 843 848 1 842 849 0 844 850 1 850 851 1 846 851 0 852 851 0
		 848 852 0 853 852 1 843 853 0 843 854 1 855 854 0 844 855 0 856 855 0 850 856 0 857 856 0
		 853 857 1 853 850 0 828 858 0 858 859 1 834 859 0 859 860 1 841 860 0 839 861 0 858 861 0
		 858 590 1 859 589 0 860 591 0 862 858 0 863 861 0 862 863 0 862 594 0 853 864 0 865 864 1
		 843 865 0 865 866 0 854 866 0 857 867 0 864 867 1 867 323 0 864 322 0 865 324 1 868 866 0
		 869 865 0 869 868 0 327 869 0 870 871 0 871 872 0 873 872 0 870 873 0 872 874 0 875 874 1
		 873 875 0 876 877 0 878 877 0 879 878 0 879 876 0 880 881 1 871 881 0 870 880 0 882 883 0
		 883 884 0 885 884 1 882 885 0 886 887 0 887 888 0 889 888 0 886 889 0 890 891 1 892 891 0
		 893 892 0 893 890 0 883 892 0 882 893 0 894 895 1 895 896 0 897 896 1 894 897 0 898 899 0
		 900 899 0 901 900 1 901 898 0 902 903 1 903 904 0 905 904 0 902 905 0 906 907 1 908 907 0
		 909 908 1 909 906 0 877 910 0 910 911 1 912 911 0 877 912 0 913 914 0 915 914 1 888 915 0
		 888 913 0 910 916 0 916 917 1 911 917 0 914 918 0 919 918 1 915 919 0 920 894 1 921 897 1
		 920 921 0 916 922 0 922 923 0 917 923 0 924 896 1 925 895 1 925 924 0 837 926 0 927 926 0
		 834 927 0 928 906 1 929 909 1 929 928 0 853 930 0 930 931 0 850 931 0 932 908 1 933 907 1
		 932 933 0 918 934 0 935 934 0 919 935 0 925 936 0 937 936 1 920 937 0 920 925 1 937 938 1
		 894 938 0 938 939 1 895 939 0 936 939 1 929 940 0 940 941 1 932 941 0;
	setAttr ".ed[1826:1991]" 929 932 1 941 942 1 908 942 0 943 942 1 909 943 0 940 943 1
		 936 836 0 937 835 0 835 944 1 938 944 0 944 945 1 939 945 0 836 945 1 940 852 0 941 851 0
		 851 946 1 942 946 0 947 946 1 943 947 0 852 947 1 944 927 0 945 926 0 946 931 0 947 930 0
		 875 876 0 880 879 0 880 875 0 881 878 1 874 877 0 878 948 0 949 948 0 881 949 0 948 912 1
		 950 912 1 949 950 0 951 911 1 950 951 0 952 910 1 874 952 0 924 917 1 951 924 0 921 916 1
		 952 921 0 896 923 0 897 922 0 885 886 0 890 889 0 885 890 0 891 888 0 884 887 1 953 913 1
		 954 913 1 955 954 0 955 953 0 887 954 0 884 955 0 956 915 1 891 956 0 957 914 1 953 957 0
		 928 919 1 956 928 0 933 918 1 957 933 0 906 935 0 907 934 0 874 950 1 952 951 1 921 924 0
		 928 933 0 956 957 1 891 953 1 874 881 0 884 891 0 877 898 0 878 901 1 958 959 0 959 960 0
		 961 960 1 958 961 0 948 900 1 912 899 0 887 902 1 888 905 0 913 904 0 954 903 1 878 962 0
		 962 963 1 948 963 0 963 964 0 900 964 0 965 964 1 901 965 0 962 965 1 954 963 0 963 961 1
		 887 961 0 903 964 0 962 958 0 964 960 1 965 959 0 902 960 0 967 966 0 967 968 0 968 969 0
		 966 969 0 967 970 0 970 971 0 968 971 1 970 972 0 972 973 0 971 973 1 966 972 0 969 973 1
		 971 974 0 975 974 1 968 975 0 973 976 0 974 976 0 969 977 1 977 976 1 968 839 1 969 838 0
		 977 840 0 975 977 0 975 841 1 978 979 0 979 980 0 981 980 0 978 981 0 979 982 0 982 983 0
		 980 983 1 984 982 0 984 985 0 985 983 1 978 984 0 981 985 1 983 986 0 987 986 1 980 987 1
		 985 988 0 988 986 0 981 989 0 989 988 1 980 855 0 981 854 1 987 856 0 989 987 0 989 857 1
		 975 990 0 991 990 1 968 991 0 990 860 1 991 861 0 990 724 0 991 723 1 992 863 0 992 991 0
		 992 726 0 981 993 0 993 994 1 989 994 0 993 866 0 994 867 1 994 453 0;
	setAttr ".ed[1992:2157]" 993 454 1 995 868 0 995 993 0 456 995 0 996 997 0 997 998 0
		 999 998 0 996 999 0 997 1000 0 1000 1001 1 998 1001 0 1003 1002 0 1003 1004 0 1004 1005 0
		 1002 1005 0 996 1006 0 999 1007 0 1006 1007 1 1008 1009 0 1009 1010 1 1011 1010 0
		 1008 1011 0 1012 1013 0 1013 1014 0 1015 1014 0 1012 1015 0 1017 1016 0 1017 1018 0
		 1018 1019 0 1016 1019 1 1008 1017 0 1011 1018 0 1020 1021 0 1021 1022 1 1023 1022 0
		 1020 1023 1 1025 1024 0 1025 1026 1 1026 1027 0 1024 1027 0 1028 1029 0 1029 1030 0
		 1031 1030 0 1028 1031 1 1033 1032 0 1033 1034 1 1034 1035 0 1032 1035 1 1005 1036 0
		 1036 1037 0 1038 1037 1 1005 1038 0 1014 1039 0 1014 1040 0 1040 1041 1 1039 1041 0
		 1037 1042 0 1043 1042 1 1038 1043 0 1040 1044 0 1044 1045 1 1041 1045 0 1046 1047 0
		 1047 1021 1 1046 1020 1 1042 1048 0 1049 1048 0 1043 1049 0 1051 1050 0 1051 1023 1
		 1050 1022 1 975 1052 0 1052 1053 0 977 1053 0 1055 1054 0 1055 1033 1 1054 1032 1
		 987 1056 0 1057 1056 0 989 1057 0 1058 1059 0 1059 1035 1 1058 1034 1 1044 1060 0
		 1060 1061 0 1045 1061 0 1046 1051 1 1046 1062 0 1062 1063 1 1051 1063 0 1020 1064 0
		 1062 1064 1 1023 1065 0 1064 1065 1 1063 1065 1 1055 1058 1 1058 1066 0 1067 1066 1
		 1055 1067 0 1034 1068 0 1066 1068 1 1033 1069 0 1069 1068 1 1067 1069 1 1062 974 0
		 1063 976 0 1064 1070 0 974 1070 1 1065 1071 0 1070 1071 1 976 1071 1 1066 986 0 1067 988 0
		 1068 1072 0 986 1072 1 1069 1073 0 1073 1072 1 988 1073 1 1070 1052 0 1071 1053 0
		 1072 1056 0 1073 1057 0 1006 1000 0 1006 1003 0 1000 1002 0 1007 1004 1 1001 1005 0
		 1007 1074 0 1074 1075 0 1004 1075 0 1074 1076 0 1076 1036 1 1075 1036 1 1076 1077 0
		 1077 1037 1 1001 1078 0 1078 1038 1 1077 1050 0 1050 1042 1 1078 1047 0 1047 1043 1
		 1022 1048 0 1021 1049 0 1009 1016 0 1016 1013 0 1009 1012 0 1019 1014 0 1010 1015 1
		 1080 1079 0 1080 1081 0 1081 1039 1 1079 1039 1 1010 1080 0 1015 1081 0 1019 1082 0
		 1082 1040 1 1079 1083 0 1083 1041 1 1082 1054 0 1054 1044 1 1083 1059 0 1059 1045 1
		 1032 1060 0 1035 1061 0 1078 1077 1 1001 1076 1;
	setAttr ".ed[2158:2191]" 1047 1050 0 1082 1083 1 1054 1059 0 1019 1079 1 1001 1007 0
		 1010 1019 0 1004 1025 1 1005 1024 0 1084 1085 0 1085 1086 1 1087 1086 0 1084 1087 0
		 1036 1027 0 1075 1026 1 1014 1029 0 1015 1028 1 1039 1030 0 1081 1031 1 1075 1088 0
		 1089 1088 1 1004 1089 0 1026 1090 0 1088 1090 0 1025 1091 0 1091 1090 1 1089 1091 1
		 1015 1085 0 1088 1085 1 1081 1088 0 1031 1090 0 1089 1084 0 1091 1087 0 1090 1086 1
		 1028 1086 0;
	setAttr -s 1056 -ch 4224 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -10 28 27 -27
		mu 0 4 1 5 182 184
		f 4 23 30 -30 -29
		mu 0 4 128 129 474 475
		f 4 21 32 -32 -31
		mu 0 4 185 186 329 330
		f 4 -23 26 33 -33
		mu 0 4 121 348 349 350
		f 4 29 36 -36 -35
		mu 0 4 135 136 472 473
		f 4 31 38 -38 -37
		mu 0 4 187 188 189 190
		f 4 -34 40 39 -39
		mu 0 4 130 134 354 355
		f 4 -28 43 42 -42
		mu 0 4 8 9 10 11
		f 4 -41 41 45 -45
		mu 0 4 143 144 352 353
		f 4 48 44 47 -47
		mu 0 4 13 14 445 446
		f 4 10 51 -51 -50
		mu 0 4 6 191 192 507
		f 4 24 53 -53 -52
		mu 0 4 16 17 437 438
		f 4 -21 55 54 -54
		mu 0 4 193 194 195 196
		f 4 -26 49 56 -56
		mu 0 4 388 389 390 391
		f 4 52 59 -59 -58
		mu 0 4 20 21 435 436
		f 4 -55 61 60 -60
		mu 0 4 197 198 513 514
		f 4 -57 63 62 -62
		mu 0 4 18 19 392 393
		f 4 50 66 65 -65
		mu 0 4 145 146 147 152
		f 4 57 68 67 -67
		mu 0 4 24 25 394 395
		f 4 -72 70 69 -69
		mu 0 4 153 154 155 176
		f 4 34 74 -74 -73
		mu 0 4 480 481 482 483
		f 4 46 76 -76 -75
		mu 0 4 12 15 26 27
		f 4 -44 72 78 -78
		mu 0 4 28 29 519 520
		f 4 73 80 -1 -80
		mu 0 4 200 202 484 485
		f 4 75 81 -2 -81
		mu 0 4 30 31 385 386
		f 4 6 83 -79 -83
		mu 0 4 177 179 181 351
		f 4 -18 82 79 -3
		mu 0 4 201 203 204 486
		f 4 -64 86 85 -85
		mu 0 4 322 323 324 325
		f 4 64 88 -88 -87
		mu 0 4 279 280 521 522
		f 4 -71 84 90 -90
		mu 0 4 281 282 344 345
		f 4 -91 92 -4 -92
		mu 0 4 283 284 342 343
		f 4 -86 93 -5 -93
		mu 0 4 207 209 326 327
		f 4 -8 95 87 -95
		mu 0 4 0 32 33 34
		f 4 -9 5 -94 -96
		mu 0 4 206 208 210 328
		f 4 11 98 -98 -97
		mu 0 4 211 212 213 512
		f 4 18 100 -100 -99
		mu 0 4 2 36 447 448
		f 4 -105 103 102 -102
		mu 0 4 214 215 487 488
		f 4 -14 96 106 -106
		mu 0 4 4 37 38 39
		f 4 14 109 -109 -108
		mu 0 4 285 286 287 527
		f 4 113 112 -112 -111
		mu 0 4 218 219 495 496
		f 4 -17 116 115 -115
		mu 0 4 288 289 340 341
		f 4 -13 107 117 -117
		mu 0 4 60 222 223 224
		f 4 121 120 -120 -119
		mu 0 4 40 43 449 450
		f 4 -126 124 123 -123
		mu 0 4 225 226 227 228
		f 4 129 128 -128 -127
		mu 0 4 230 231 497 498
		f 4 -134 132 131 -131
		mu 0 4 290 293 371 372
		f 4 137 136 -136 -135
		mu 0 4 217 233 234 235
		f 4 -142 140 139 -139
		mu 0 4 220 236 499 500
		f 4 135 144 -144 -143
		mu 0 4 239 240 478 479
		f 4 -140 147 146 -146
		mu 0 4 237 238 501 502
		f 4 150 149 -122 -149
		mu 0 4 295 296 464 465
		f 4 143 153 -153 -152
		mu 0 4 243 244 476 477
		f 4 -157 155 119 -155
		mu 0 4 299 300 362 363
		f 4 -49 159 158 -158
		mu 0 4 199 245 246 247
		f 4 -163 161 133 -161
		mu 0 4 45 46 402 403
		f 4 71 165 -165 -164
		mu 0 4 205 248 249 250
		f 4 168 167 -132 -167
		mu 0 4 49 50 427 428
		f 4 -147 171 170 -170
		mu 0 4 241 242 251 252
		f 4 -176 174 173 -173
		mu 0 4 52 53 525 526
		f 4 148 177 -177 -175
		mu 0 4 294 297 466 467
		f 4 118 179 -179 -178
		mu 0 4 439 440 441 442
		f 4 -156 172 180 -180
		mu 0 4 304 305 360 361
		f 4 184 183 -183 -182
		mu 0 4 306 307 412 413
		f 4 166 186 -186 -184
		mu 0 4 48 51 429 430
		f 4 -133 188 187 -187
		mu 0 4 291 292 373 374
		f 4 -162 181 189 -189
		mu 0 4 61 62 400 401
		f 4 -174 191 37 -191
		mu 0 4 54 55 63 64
		f 4 176 193 -193 -192
		mu 0 4 302 303 468 469
		f 4 178 195 -195 -194
		mu 0 4 56 57 443 444
		f 4 -181 190 196 -196
		mu 0 4 142 313 358 359
		f 4 182 198 -61 -198
		mu 0 4 308 309 314 315
		f 4 185 200 -200 -199
		mu 0 4 58 59 431 432
		f 4 -188 202 201 -201
		mu 0 4 310 311 316 317
		f 4 -190 197 203 -203
		mu 0 4 23 68 398 399
		f 4 192 204 -160 35
		mu 0 4 312 318 470 471
		f 4 194 205 -159 -205
		mu 0 4 65 66 69 70
		f 4 -197 -40 157 -206
		mu 0 4 141 319 356 357
		f 4 199 206 -166 58
		mu 0 4 67 71 433 434
		f 4 -202 207 164 -207
		mu 0 4 320 321 346 347
		f 4 -204 -63 163 -208
		mu 0 4 22 72 396 397
		f 4 -20 209 104 -209
		mu 0 4 7 178 180 183
		f 4 105 210 -104 -210
		mu 0 4 73 74 383 384
		f 4 -101 208 101 -212
		mu 0 4 3 35 75 76
		f 4 214 213 -213 -211
		mu 0 4 77 78 381 382
		f 4 217 216 -216 -214
		mu 0 4 172 173 174 175
		f 4 219 218 -137 -217
		mu 0 4 170 171 368 369
		f 4 -222 211 134 -221
		mu 0 4 167 168 458 459
		f 4 223 222 -145 -219
		mu 0 4 165 298 366 367
		f 4 -226 220 142 -225
		mu 0 4 166 169 460 461
		f 4 154 226 -154 -223
		mu 0 4 163 301 364 365
		f 4 -121 227 152 -227
		mu 0 4 41 42 79 80
		f 4 -150 224 151 -228
		mu 0 4 162 164 462 463
		f 4 15 229 -114 -229
		mu 0 4 81 82 83 375
		f 4 114 230 -113 -230
		mu 0 4 160 161 338 339
		f 4 -110 228 110 -232
		mu 0 4 158 159 456 457
		f 4 -236 234 233 -233
		mu 0 4 85 86 419 420
		f 4 -238 231 236 -235
		mu 0 4 156 157 408 409
		f 4 239 238 -141 -231
		mu 0 4 88 89 90 91
		f 4 -242 232 138 -241
		mu 0 4 84 87 421 422
		f 4 243 242 -148 -239
		mu 0 4 44 94 406 407
		f 4 -246 240 145 -245
		mu 0 4 92 93 423 424
		f 4 160 246 -172 -243
		mu 0 4 47 96 404 405
		f 4 130 247 -171 -247
		mu 0 4 150 151 336 337
		f 4 -168 244 169 -248
		mu 0 4 95 97 425 426
		f 4 221 249 -220 -249
		mu 0 4 254 255 510 511
		f 4 225 250 -224 -250
		mu 0 4 257 258 508 509
		f 4 -151 175 156 -251
		mu 0 4 98 99 523 524
		f 4 -244 252 245 -252
		mu 0 4 259 262 515 516
		f 4 -240 253 241 -253
		mu 0 4 260 261 517 518
		f 4 162 251 -169 -185
		mu 0 4 148 149 410 411
		f 4 99 254 -107 97
		mu 0 4 138 139 140 370
		f 4 248 -218 -215 -255
		mu 0 4 253 256 265 266
		f 4 108 255 -116 -118
		mu 0 4 100 101 102 387
		f 4 237 235 -254 -256
		mu 0 4 263 264 267 268
		f 4 -103 257 125 -257
		mu 0 4 132 451 452 453
		f 4 261 260 -260 -259
		mu 0 4 103 104 105 106
		f 4 215 263 -124 -263
		mu 0 4 131 331 332 333
		f 4 -138 256 122 -264
		mu 0 4 107 108 109 414
		f 4 111 265 -130 -265
		mu 0 4 111 376 377 378
		f 4 141 266 -129 -266
		mu 0 4 124 125 126 335
		f 4 -234 267 127 -267
		mu 0 4 113 114 417 418
		f 4 212 270 -270 -269
		mu 0 4 216 269 270 271
		f 4 262 272 -272 -271
		mu 0 4 122 123 127 334
		f 4 -125 274 273 -273
		mu 0 4 489 490 491 492
		f 4 -258 268 275 -275
		mu 0 4 133 137 454 455
		f 4 -237 278 -278 -277
		mu 0 4 221 274 503 504
		f 4 -268 276 271 -280
		mu 0 4 115 116 415 416
		f 4 269 277 -262 -281
		mu 0 4 275 276 505 506
		f 4 -274 282 259 -282
		mu 0 4 272 277 493 494
		f 4 -276 280 258 -283
		mu 0 4 117 118 119 120
		f 4 283 -261 -279 264
		mu 0 4 110 112 379 380
		f 4 279 281 -284 126
		mu 0 4 229 232 273 278
		f 4 287 -287 -286 284
		mu 0 4 528 531 530 529
		f 4 285 290 -290 -289
		mu 0 4 532 535 534 533
		f 4 289 293 -293 -292
		mu 0 4 536 539 538 537
		f 4 292 -296 -288 294
		mu 0 4 540 543 542 541
		f 4 298 297 -297 -291
		mu 0 4 544 547 546 545
		f 4 296 300 -300 -294
		mu 0 4 548 551 550 549
		f 4 299 -303 -302 295
		mu 0 4 552 555 554 553
		f 4 304 -43 -304 286
		mu 0 4 556 559 558 557
		f 4 305 -46 -305 301
		mu 0 4 560 563 562 561
		f 4 307 -48 -306 -307
		mu 0 4 564 567 566 565
		f 4 311 310 -310 -309
		mu 0 4 568 571 570 569
		f 4 309 314 -314 -313
		mu 0 4 572 575 574 573
		f 4 313 -318 -317 315
		mu 0 4 576 579 578 577
		f 4 316 -320 -312 318
		mu 0 4 580 583 582 581
		f 4 322 321 -321 -315
		mu 0 4 584 587 586 585
		f 4 320 -325 -324 317
		mu 0 4 588 591 590 589
		f 4 323 -327 -326 319
		mu 0 4 592 595 594 593
		f 4 328 -66 -328 -311
		mu 0 4 596 599 598 597
		f 4 327 -68 -330 -323
		mu 0 4 600 603 602 601
		f 4 329 -70 -332 330
		mu 0 4 604 607 606 605
		f 4 334 333 -333 -299
		mu 0 4 608 611 610 609
		f 4 332 335 -77 -308
		mu 0 4 612 615 614 613
		f 4 77 -337 -335 303
		mu 0 4 616 619 618 617
		f 4 339 338 -338 -334
		mu 0 4 620 623 622 621
		f 4 337 340 -82 -336
		mu 0 4 624 627 626 625
		f 4 342 336 -84 -342
		mu 0 4 628 631 630 629
		f 4 344 -340 -343 343
		mu 0 4 632 635 634 633
		f 4 347 -347 -346 325
		mu 0 4 636 639 638 637
		f 4 345 348 -89 -329
		mu 0 4 640 643 642 641
		f 4 89 -350 -348 331
		mu 0 4 644 647 646 645
		f 4 91 351 -351 349
		mu 0 4 648 651 650 649
		f 4 350 353 -353 346
		mu 0 4 652 655 654 653
		f 4 94 -349 -356 354
		mu 0 4 656 659 658 657
		f 4 355 352 -358 356
		mu 0 4 660 663 662 661
		f 4 361 360 -360 -359
		mu 0 4 664 667 666 665
		f 4 359 364 -364 -363
		mu 0 4 668 671 670 669
		f 4 368 -368 -367 365
		mu 0 4 672 675 674 673
		f 4 371 -371 -362 369
		mu 0 4 676 679 678 677
		f 4 375 374 -374 -373
		mu 0 4 680 683 682 681
		f 4 379 378 -378 -377
		mu 0 4 684 687 686 685
		f 4 383 -383 -382 380
		mu 0 4 688 691 690 689
		f 4 381 -386 -376 384
		mu 0 4 692 695 694 693
		f 4 389 388 -388 -387
		mu 0 4 696 699 698 697
		f 4 393 -393 -392 390
		mu 0 4 700 703 702 701
		f 4 397 396 -396 -395
		mu 0 4 704 707 706 705
		f 4 401 -401 -400 398
		mu 0 4 708 711 710 709
		f 4 405 404 -404 -403
		mu 0 4 712 715 714 713
		f 4 409 -409 -408 406
		mu 0 4 716 719 718 717
		f 4 412 411 -411 -405
		mu 0 4 720 723 722 721
		f 4 415 -415 -414 408
		mu 0 4 724 727 726 725
		f 4 418 386 -418 -417
		mu 0 4 728 731 730 729
		f 4 421 420 -420 -412
		mu 0 4 732 735 734 733
		f 4 424 -389 -424 422
		mu 0 4 736 739 738 737
		f 4 427 -427 -426 306
		mu 0 4 740 743 742 741
		f 4 430 -399 -430 428
		mu 0 4 744 747 746 745
		f 4 433 432 -432 -331
		mu 0 4 748 751 750 749
		f 4 436 400 -436 -435
		mu 0 4 752 755 754 753
		f 4 439 -439 -438 414
		mu 0 4 756 759 758 757
		f 4 443 -443 -442 440
		mu 0 4 760 763 762 761
		f 4 441 445 -445 -419
		mu 0 4 764 767 766 765
		f 4 444 447 -447 -390
		mu 0 4 768 771 770 769
		f 4 446 -449 -444 423
		mu 0 4 772 775 774 773
		f 4 452 451 -451 -450
		mu 0 4 776 779 778 777
		f 4 450 454 -454 -437
		mu 0 4 780 783 782 781
		f 4 453 -457 -456 399
		mu 0 4 784 787 786 785
		f 4 455 -458 -453 429
		mu 0 4 788 791 790 789
		f 4 459 -301 -459 442
		mu 0 4 792 795 794 793
		f 4 458 461 -461 -446
		mu 0 4 796 799 798 797
		f 4 460 463 -463 -448
		mu 0 4 800 803 802 801
		f 4 462 -465 -460 448
		mu 0 4 804 807 806 805
		f 4 466 324 -466 -452
		mu 0 4 808 811 810 809
		f 4 465 468 -468 -455
		mu 0 4 812 815 814 813
		f 4 467 -471 -470 456
		mu 0 4 816 819 818 817
		f 4 469 -472 -467 457
		mu 0 4 820 823 822 821
		f 4 -298 425 -473 -462
		mu 0 4 824 827 826 825
		f 4 472 426 -474 -464
		mu 0 4 828 831 830 829
		f 4 473 -428 302 464
		mu 0 4 832 835 834 833
		f 4 -322 431 -475 -469
		mu 0 4 836 839 838 837
		f 4 474 -433 -476 470
		mu 0 4 840 843 842 841
		f 4 475 -434 326 471
		mu 0 4 844 847 846 845
		f 4 478 -366 -478 476
		mu 0 4 848 851 850 849
		f 4 477 366 -480 -372
		mu 0 4 852 855 854 853
		f 4 480 -369 -479 363
		mu 0 4 856 859 858 857
		f 4 479 483 -483 -482
		mu 0 4 860 863 862 861
		f 4 482 486 -486 -485
		mu 0 4 864 867 866 865
		f 4 485 403 -489 -488
		mu 0 4 868 871 870 869
		f 4 490 -406 -481 489
		mu 0 4 872 875 874 873
		f 4 488 410 -493 -492
		mu 0 4 876 879 878 877
		f 4 494 -413 -491 493
		mu 0 4 880 883 882 881
		f 4 492 419 -496 -425
		mu 0 4 884 887 886 885
		f 4 495 -421 -497 387
		mu 0 4 888 891 890 889
		f 4 496 -422 -495 417
		mu 0 4 892 895 894 893
		f 4 499 376 -499 -498
		mu 0 4 896 899 898 897
		f 4 498 377 -501 -384
		mu 0 4 900 903 902 901
		f 4 501 -380 -500 373
		mu 0 4 904 907 906 905
		f 4 505 -505 -504 502
		mu 0 4 908 911 910 909
		f 4 503 -508 -502 506
		mu 0 4 912 915 914 913
		f 4 500 407 -510 -509
		mu 0 4 916 919 918 917
		f 4 511 -410 -506 510
		mu 0 4 920 923 922 921
		f 4 509 413 -514 -513
		mu 0 4 924 927 926 925
		f 4 515 -416 -512 514
		mu 0 4 928 931 930 929
		f 4 513 437 -517 -431
		mu 0 4 932 935 934 933
		f 4 516 438 -518 -402
		mu 0 4 936 939 938 937
		f 4 517 -440 -516 435
		mu 0 4 940 943 942 941
		f 4 519 487 -519 -490
		mu 0 4 944 947 946 945
		f 4 518 491 -521 -494
		mu 0 4 948 951 950 949
		f 4 520 -423 -441 416
		mu 0 4 952 955 954 953
		f 4 522 -515 -522 512
		mu 0 4 956 959 958 957
		f 4 521 -511 -524 508
		mu 0 4 960 963 962 961
		f 4 449 434 -523 -429
		mu 0 4 964 967 966 965
		f 4 -361 370 -525 -365
		mu 0 4 968 971 970 969
		f 4 524 481 484 -520
		mu 0 4 972 975 974 973
		f 4 385 382 -526 -375
		mu 0 4 976 979 978 977
		f 4 525 523 -503 -507
		mu 0 4 980 983 982 981
		f 4 527 -391 -527 367
		mu 0 4 984 987 986 985
		f 4 531 530 -530 -529
		mu 0 4 988 991 990 989
		f 4 533 392 -533 -487
		mu 0 4 992 995 994 993
		f 4 532 -394 -528 402
		mu 0 4 996 999 998 997
		f 4 535 394 -535 -379
		mu 0 4 1000 1003 1002 1001
		f 4 534 395 -537 -407
		mu 0 4 1004 1007 1006 1005
		f 4 536 -397 -538 504
		mu 0 4 1008 1011 1010 1009
		f 4 540 539 -539 -484
		mu 0 4 1012 1015 1014 1013
		f 4 538 542 -542 -534
		mu 0 4 1016 1019 1018 1017
		f 4 541 -545 -544 391
		mu 0 4 1020 1023 1022 1021
		f 4 543 -546 -541 526
		mu 0 4 1024 1027 1026 1025
		f 4 548 547 -547 507
		mu 0 4 1028 1031 1030 1029
		f 4 549 -543 -549 537
		mu 0 4 1032 1035 1034 1033
		f 4 550 528 -548 -540
		mu 0 4 1036 1039 1038 1037
		f 4 552 -531 -552 544
		mu 0 4 1040 1043 1042 1041
		f 4 551 -532 -551 545
		mu 0 4 1044 1047 1046 1045
		f 4 -536 546 529 -554
		mu 0 4 1048 1051 1050 1049
		f 4 -398 553 -553 -550
		mu 0 4 1052 1055 1054 1053
		f 4 557 -557 -556 554
		mu 0 4 1056 1059 1058 1057
		f 4 555 560 -560 -559
		mu 0 4 1060 1063 1062 1061
		f 4 559 563 -563 -562
		mu 0 4 1064 1067 1066 1065
		f 4 562 -566 -558 564
		mu 0 4 1068 1071 1070 1069
		f 4 568 567 -567 -561
		mu 0 4 1072 1075 1074 1073
		f 4 566 570 -570 -564
		mu 0 4 1076 1079 1078 1077
		f 4 569 -573 -572 565
		mu 0 4 1080 1083 1082 1081
		f 4 575 -575 -574 556
		mu 0 4 1084 1087 1086 1085
		f 4 577 -577 -576 571
		mu 0 4 1088 1091 1090 1089
		f 4 580 -580 -578 -579
		mu 0 4 1092 1095 1094 1093
		f 4 584 583 -583 -582
		mu 0 4 1096 1099 1098 1097
		f 4 582 587 -587 -586
		mu 0 4 1100 1103 1102 1101
		f 4 586 -591 -590 588
		mu 0 4 1104 1107 1106 1105
		f 4 589 -593 -585 591
		mu 0 4 1108 1111 1110 1109
		f 4 595 594 -594 -588
		mu 0 4 1112 1115 1114 1113
		f 4 593 -598 -597 590
		mu 0 4 1116 1119 1118 1117
		f 4 596 -600 -599 592
		mu 0 4 1120 1123 1122 1121
		f 4 602 -602 -601 -584
		mu 0 4 1124 1127 1126 1125
		f 4 600 -605 -604 -596
		mu 0 4 1128 1131 1130 1129
		f 4 603 -608 -607 605
		mu 0 4 1132 1135 1134 1133
		f 4 610 609 -609 -569
		mu 0 4 1136 1139 1138 1137
		f 4 608 612 -612 -581
		mu 0 4 1140 1143 1142 1141
		f 4 614 -614 -611 573
		mu 0 4 1144 1147 1146 1145
		f 4 616 0 -616 -610
		mu 0 4 1148 1151 1150 1149
		f 4 615 1 -618 -613
		mu 0 4 1152 1155 1154 1153
		f 4 620 613 -620 -619
		mu 0 4 1156 1159 1158 1157
		f 4 2 -617 -621 621
		mu 0 4 1160 1163 1162 1161
		f 4 624 -624 -623 598
		mu 0 4 1164 1167 1166 1165
		f 4 622 626 -626 -603
		mu 0 4 1168 1171 1170 1169
		f 4 628 -628 -625 606
		mu 0 4 1172 1175 1174 1173
		f 4 631 630 -630 627
		mu 0 4 1176 1179 1178 1177
		f 4 629 633 -633 623
		mu 0 4 1180 1183 1182 1181
		f 4 636 -627 -636 634
		mu 0 4 1184 1187 1186 1185
		f 4 635 632 -639 637
		mu 0 4 1188 1191 1190 1189
		f 4 642 641 -641 -640
		mu 0 4 1192 1195 1194 1193
		f 4 640 645 -645 -644
		mu 0 4 1196 1199 1198 1197
		f 4 649 -649 -648 646
		mu 0 4 1200 1203 1202 1201
		f 4 652 -652 -643 650
		mu 0 4 1204 1207 1206 1205
		f 4 656 655 -655 -654
		mu 0 4 1208 1211 1210 1209
		f 4 660 659 -659 -658
		mu 0 4 1212 1215 1214 1213
		f 4 664 -664 -663 661
		mu 0 4 1216 1219 1218 1217
		f 4 662 -667 -657 665
		mu 0 4 1220 1223 1222 1221
		f 4 670 669 -669 -668
		mu 0 4 1224 1227 1226 1225
		f 4 674 -674 -673 671
		mu 0 4 1228 1231 1230 1229
		f 4 678 677 -677 -676
		mu 0 4 1232 1235 1234 1233
		f 4 682 -682 -681 679
		mu 0 4 1236 1239 1238 1237
		f 4 686 685 -685 -684
		mu 0 4 1240 1243 1242 1241
		f 4 690 -690 -689 687
		mu 0 4 1244 1247 1246 1245
		f 4 693 692 -692 -686
		mu 0 4 1248 1251 1250 1249
		f 4 696 -696 -695 689
		mu 0 4 1252 1255 1254 1253
		f 4 699 667 -699 -698
		mu 0 4 1256 1259 1258 1257
		f 4 702 701 -701 -693
		mu 0 4 1260 1263 1262 1261
		f 4 705 -670 -705 703
		mu 0 4 1264 1267 1266 1265
		f 4 708 -708 -707 578
		mu 0 4 1268 1271 1270 1269
		f 4 711 -680 -711 709
		mu 0 4 1272 1275 1274 1273
		f 4 714 713 -713 -606
		mu 0 4 1276 1279 1278 1277
		f 4 717 681 -717 -716
		mu 0 4 1280 1283 1282 1281
		f 4 720 -720 -719 695
		mu 0 4 1284 1287 1286 1285
		f 4 724 -724 -723 721
		mu 0 4 1288 1291 1290 1289
		f 4 722 726 -726 -700
		mu 0 4 1292 1295 1294 1293
		f 4 725 728 -728 -671
		mu 0 4 1296 1299 1298 1297
		f 4 727 -730 -725 704
		mu 0 4 1300 1303 1302 1301
		f 4 733 732 -732 -731
		mu 0 4 1304 1307 1306 1305
		f 4 731 735 -735 -718
		mu 0 4 1308 1311 1310 1309
		f 4 734 -738 -737 680
		mu 0 4 1312 1315 1314 1313
		f 4 736 -739 -734 710
		mu 0 4 1316 1319 1318 1317
		f 4 740 -571 -740 723
		mu 0 4 1320 1323 1322 1321
		f 4 739 742 -742 -727
		mu 0 4 1324 1327 1326 1325
		f 4 741 744 -744 -729
		mu 0 4 1328 1331 1330 1329
		f 4 743 -746 -741 729
		mu 0 4 1332 1335 1334 1333
		f 4 747 597 -747 -733
		mu 0 4 1336 1339 1338 1337
		f 4 746 749 -749 -736
		mu 0 4 1340 1343 1342 1341
		f 4 748 -752 -751 737
		mu 0 4 1344 1347 1346 1345
		f 4 750 -753 -748 738
		mu 0 4 1348 1351 1350 1349
		f 4 -568 706 -754 -743
		mu 0 4 1352 1355 1354 1353
		f 4 753 707 -755 -745
		mu 0 4 1356 1359 1358 1357
		f 4 754 -709 572 745
		mu 0 4 1360 1363 1362 1361
		f 4 -595 712 -756 -750
		mu 0 4 1364 1367 1366 1365
		f 4 755 -714 -757 751
		mu 0 4 1368 1371 1370 1369
		f 4 756 -715 599 752
		mu 0 4 1372 1375 1374 1373
		f 4 759 -647 -759 757
		mu 0 4 1376 1379 1378 1377
		f 4 758 647 -761 -653
		mu 0 4 1380 1383 1382 1381
		f 4 761 -650 -760 644
		mu 0 4 1384 1387 1386 1385
		f 4 760 764 -764 -763
		mu 0 4 1388 1391 1390 1389
		f 4 763 767 -767 -766
		mu 0 4 1392 1395 1394 1393
		f 4 766 684 -770 -769
		mu 0 4 1396 1399 1398 1397
		f 4 771 -687 -762 770
		mu 0 4 1400 1403 1402 1401
		f 4 769 691 -774 -773
		mu 0 4 1404 1407 1406 1405
		f 4 775 -694 -772 774
		mu 0 4 1408 1411 1410 1409
		f 4 773 700 -777 -706
		mu 0 4 1412 1415 1414 1413
		f 4 776 -702 -778 668
		mu 0 4 1416 1419 1418 1417
		f 4 777 -703 -776 698
		mu 0 4 1420 1423 1422 1421
		f 4 780 657 -780 -779
		mu 0 4 1424 1427 1426 1425
		f 4 779 658 -782 -665
		mu 0 4 1428 1431 1430 1429
		f 4 782 -661 -781 654
		mu 0 4 1432 1435 1434 1433
		f 4 786 -786 -785 783
		mu 0 4 1436 1439 1438 1437
		f 4 784 -789 -783 787
		mu 0 4 1440 1443 1442 1441
		f 4 781 688 -791 -790
		mu 0 4 1444 1447 1446 1445
		f 4 792 -691 -787 791
		mu 0 4 1448 1451 1450 1449
		f 4 790 694 -795 -794
		mu 0 4 1452 1455 1454 1453
		f 4 796 -697 -793 795
		mu 0 4 1456 1459 1458 1457
		f 4 794 718 -798 -712
		mu 0 4 1460 1463 1462 1461
		f 4 797 719 -799 -683
		mu 0 4 1464 1467 1466 1465
		f 4 798 -721 -797 716
		mu 0 4 1468 1471 1470 1469
		f 4 800 768 -800 -771
		mu 0 4 1472 1475 1474 1473
		f 4 799 772 -802 -775
		mu 0 4 1476 1479 1478 1477
		f 4 801 -704 -722 697
		mu 0 4 1480 1483 1482 1481
		f 4 803 -796 -803 793
		mu 0 4 1484 1487 1486 1485
		f 4 802 -792 -805 789
		mu 0 4 1488 1491 1490 1489
		f 4 730 715 -804 -710
		mu 0 4 1492 1495 1494 1493
		f 4 -642 651 -806 -646
		mu 0 4 1496 1499 1498 1497
		f 4 805 762 765 -801
		mu 0 4 1500 1503 1502 1501
		f 4 666 663 -807 -656
		mu 0 4 1504 1507 1506 1505
		f 4 806 804 -784 -788
		mu 0 4 1508 1511 1510 1509
		f 4 808 -672 -808 648
		mu 0 4 1512 1515 1514 1513
		f 4 812 811 -811 -810
		mu 0 4 1516 1519 1518 1517
		f 4 814 673 -814 -768
		mu 0 4 1520 1523 1522 1521
		f 4 813 -675 -809 683
		mu 0 4 1524 1527 1526 1525
		f 4 816 675 -816 -660
		mu 0 4 1528 1531 1530 1529
		f 4 815 676 -818 -688
		mu 0 4 1532 1535 1534 1533
		f 4 817 -678 -819 785
		mu 0 4 1536 1539 1538 1537
		f 4 821 820 -820 -765
		mu 0 4 1540 1543 1542 1541
		f 4 819 823 -823 -815
		mu 0 4 1544 1547 1546 1545
		f 4 822 -826 -825 672
		mu 0 4 1548 1551 1550 1549
		f 4 824 -827 -822 807
		mu 0 4 1552 1555 1554 1553
		f 4 829 828 -828 788
		mu 0 4 1556 1559 1558 1557
		f 4 830 -824 -830 818
		mu 0 4 1560 1563 1562 1561
		f 4 831 809 -829 -821
		mu 0 4 1564 1567 1566 1565
		f 4 833 -812 -833 825
		mu 0 4 1568 1571 1570 1569
		f 4 832 -813 -832 826
		mu 0 4 1572 1575 1574 1573
		f 4 -817 827 810 -835
		mu 0 4 1576 1579 1578 1577
		f 4 -679 834 -834 -831
		mu 0 4 1580 1583 1582 1581
		f 4 -839 837 836 -836
		mu 0 4 1584 1587 1586 1585
		f 4 841 840 -840 -838
		mu 0 4 1588 1591 1590 1589
		f 4 844 843 -843 -841
		mu 0 4 1592 1595 1594 1593
		f 4 -847 835 845 -844
		mu 0 4 1596 1599 1598 1597
		f 4 839 849 -849 -848
		mu 0 4 1600 1603 1602 1601
		f 4 842 851 -851 -850
		mu 0 4 1604 1607 1606 1605
		f 4 -846 853 852 -852
		mu 0 4 1608 1611 1610 1609
		f 4 -837 855 574 -855
		mu 0 4 1612 1615 1614 1613
		f 4 -854 854 576 -857
		mu 0 4 1616 1619 1618 1617
		f 4 858 856 579 -858
		mu 0 4 1620 1623 1622 1621
		f 4 862 861 -861 -860
		mu 0 4 1624 1627 1626 1625
		f 4 865 864 -864 -862
		mu 0 4 1628 1631 1630 1629
		f 4 -869 867 866 -865
		mu 0 4 1632 1635 1634 1633
		f 4 -871 859 869 -868
		mu 0 4 1636 1639 1638 1637
		f 4 863 873 -873 -872
		mu 0 4 1640 1643 1642 1641
		f 4 -867 875 874 -874
		mu 0 4 1644 1647 1646 1645
		f 4 -870 877 876 -876
		mu 0 4 1648 1651 1650 1649
		f 4 860 879 601 -879
		mu 0 4 1652 1655 1654 1653
		f 4 871 880 604 -880
		mu 0 4 1656 1659 1658 1657
		f 4 -883 881 607 -881
		mu 0 4 1660 1663 1662 1661
		f 4 847 885 -885 -884
		mu 0 4 1664 1667 1666 1665
		f 4 857 611 -887 -886
		mu 0 4 1668 1671 1670 1669
		f 4 -856 883 887 -615
		mu 0 4 1672 1675 1674 1673
		f 4 884 889 -339 -889
		mu 0 4 1676 1679 1678 1677
		f 4 886 617 -341 -890
		mu 0 4 1680 1683 1682 1681
		f 4 891 619 -888 -891
		mu 0 4 1684 1687 1686 1685
		f 4 -893 890 888 -345
		mu 0 4 1688 1691 1690 1689
		f 4 -878 895 894 -894
		mu 0 4 1692 1695 1694 1693
		f 4 878 625 -897 -896
		mu 0 4 1696 1699 1698 1697
		f 4 -882 893 897 -629
		mu 0 4 1700 1703 1702 1701
		f 4 -898 899 -899 -632
		mu 0 4 1704 1707 1706 1705
		f 4 -895 901 -901 -900
		mu 0 4 1708 1711 1710 1709
		f 4 -904 902 896 -637
		mu 0 4 1712 1715 1714 1713
		f 4 -906 904 -902 -903
		mu 0 4 1716 1719 1718 1717
		f 4 909 908 -908 -907
		mu 0 4 1720 1723 1722 1721
		f 4 912 911 -911 -909
		mu 0 4 1724 1727 1726 1725
		f 4 -917 915 914 -914
		mu 0 4 1728 1731 1730 1729
		f 4 -920 906 918 -918
		mu 0 4 1732 1735 1734 1733
		f 4 923 922 -922 -921
		mu 0 4 1736 1739 1738 1737
		f 4 927 926 -926 -925
		mu 0 4 1740 1743 1742 1741
		f 4 -932 930 929 -929
		mu 0 4 1744 1747 1746 1745
		f 4 -934 920 932 -931
		mu 0 4 1748 1751 1750 1749
		f 4 937 936 -936 -935
		mu 0 4 1752 1755 1754 1753
		f 4 -942 940 939 -939
		mu 0 4 1756 1759 1758 1757
		f 4 945 944 -944 -943
		mu 0 4 1760 1763 1762 1761
		f 4 -950 948 947 -947
		mu 0 4 1764 1767 1766 1765
		f 4 953 952 -952 -951
		mu 0 4 1768 1771 1770 1769
		f 4 -958 956 955 -955
		mu 0 4 1772 1775 1774 1773
		f 4 951 960 -960 -959
		mu 0 4 1776 1779 1778 1777
		f 4 -956 963 962 -962
		mu 0 4 1780 1783 1782 1781
		f 4 966 965 -938 -965
		mu 0 4 1784 1787 1786 1785
		f 4 959 969 -969 -968
		mu 0 4 1788 1791 1790 1789
		f 4 -973 971 935 -971
		mu 0 4 1792 1795 1794 1793
		f 4 -859 975 974 -974
		mu 0 4 1796 1799 1798 1797
		f 4 -979 977 949 -977
		mu 0 4 1800 1803 1802 1801
		f 4 882 981 -981 -980
		mu 0 4 1804 1807 1806 1805
		f 4 984 983 -948 -983
		mu 0 4 1808 1811 1810 1809
		f 4 -963 987 986 -986
		mu 0 4 1812 1815 1814 1813
		f 4 -992 990 989 -989
		mu 0 4 1816 1819 1818 1817
		f 4 964 993 -993 -991
		mu 0 4 1820 1823 1822 1821
		f 4 934 995 -995 -994
		mu 0 4 1824 1827 1826 1825
		f 4 -972 988 996 -996
		mu 0 4 1828 1831 1830 1829
		f 4 1000 999 -999 -998
		mu 0 4 1832 1835 1834 1833
		f 4 982 1002 -1002 -1000
		mu 0 4 1836 1839 1838 1837
		f 4 -949 1004 1003 -1003
		mu 0 4 1840 1843 1842 1841
		f 4 -978 997 1005 -1005
		mu 0 4 1844 1847 1846 1845
		f 4 -990 1007 850 -1007
		mu 0 4 1848 1851 1850 1849
		f 4 992 1009 -1009 -1008
		mu 0 4 1852 1855 1854 1853
		f 4 994 1011 -1011 -1010
		mu 0 4 1856 1859 1858 1857
		f 4 -997 1006 1012 -1012
		mu 0 4 1860 1863 1862 1861
		f 4 998 1014 -875 -1014
		mu 0 4 1864 1867 1866 1865
		f 4 1001 1016 -1016 -1015
		mu 0 4 1868 1871 1870 1869
		f 4 -1004 1018 1017 -1017
		mu 0 4 1872 1875 1874 1873
		f 4 -1006 1013 1019 -1019
		mu 0 4 1876 1879 1878 1877
		f 4 1008 1020 -976 848
		mu 0 4 1880 1883 1882 1881
		f 4 1010 1021 -975 -1021
		mu 0 4 1884 1887 1886 1885
		f 4 -1013 -853 973 -1022
		mu 0 4 1888 1891 1890 1889
		f 4 1015 1022 -982 872
		mu 0 4 1892 1895 1894 1893
		f 4 -1018 1023 980 -1023
		mu 0 4 1896 1899 1898 1897
		f 4 -1020 -877 979 -1024
		mu 0 4 1900 1903 1902 1901
		f 4 -1027 1025 916 -1025
		mu 0 4 1904 1907 1906 1905
		f 4 917 1027 -916 -1026
		mu 0 4 1908 1911 1910 1909
		f 4 -912 1024 913 -1029
		mu 0 4 1912 1915 1914 1913
		f 4 1031 1030 -1030 -1028
		mu 0 4 1916 1919 1918 1917
		f 4 1034 1033 -1033 -1031
		mu 0 4 1920 1923 1922 1921
		f 4 1036 1035 -953 -1034
		mu 0 4 1924 1927 1926 1925
		f 4 -1039 1028 950 -1038
		mu 0 4 1928 1931 1930 1929
		f 4 1040 1039 -961 -1036
		mu 0 4 1932 1935 1934 1933
		f 4 -1043 1037 958 -1042
		mu 0 4 1936 1939 1938 1937
		f 4 970 1043 -970 -1040
		mu 0 4 1940 1943 1942 1941
		f 4 -937 1044 968 -1044
		mu 0 4 1944 1947 1946 1945
		f 4 -966 1041 967 -1045
		mu 0 4 1948 1951 1950 1949
		f 4 1047 1046 -928 -1046
		mu 0 4 1952 1955 1954 1953
		f 4 928 1048 -927 -1047
		mu 0 4 1956 1959 1958 1957
		f 4 -923 1045 924 -1050
		mu 0 4 1960 1963 1962 1961
		f 4 -1054 1052 1051 -1051
		mu 0 4 1964 1967 1966 1965
		f 4 -1056 1049 1054 -1053
		mu 0 4 1968 1971 1970 1969
		f 4 1057 1056 -957 -1049
		mu 0 4 1972 1975 1974 1973
		f 4 -1060 1050 954 -1059
		mu 0 4 1976 1979 1978 1977
		f 4 1061 1060 -964 -1057
		mu 0 4 1980 1983 1982 1981
		f 4 -1064 1058 961 -1063
		mu 0 4 1984 1987 1986 1985
		f 4 976 1064 -988 -1061
		mu 0 4 1988 1991 1990 1989
		f 4 946 1065 -987 -1065
		mu 0 4 1992 1995 1994 1993
		f 4 -984 1062 985 -1066
		mu 0 4 1996 1999 1998 1997;
	setAttr ".fc[500:999]"
		f 4 1038 1067 -1037 -1067
		mu 0 4 2000 2003 2002 2001
		f 4 1042 1068 -1041 -1068
		mu 0 4 2004 2007 2006 2005
		f 4 -967 991 972 -1069
		mu 0 4 2008 2011 2010 2009
		f 4 -1062 1070 1063 -1070
		mu 0 4 2012 2015 2014 2013
		f 4 -1058 1071 1059 -1071
		mu 0 4 2016 2019 2018 2017
		f 4 978 1069 -985 -1001
		mu 0 4 2020 2023 2022 2021
		f 4 910 1072 -919 907
		mu 0 4 2024 2027 2026 2025
		f 4 1066 -1035 -1032 -1073
		mu 0 4 2028 2031 2030 2029
		f 4 921 1073 -930 -933
		mu 0 4 2032 2035 2034 2033
		f 4 1055 1053 -1072 -1074
		mu 0 4 2036 2039 2038 2037
		f 4 -915 1075 941 -1075
		mu 0 4 2040 2043 2042 2041
		f 4 1079 1078 -1078 -1077
		mu 0 4 2044 2047 2046 2045
		f 4 1032 1081 -940 -1081
		mu 0 4 2048 2051 2050 2049
		f 4 -954 1074 938 -1082
		mu 0 4 2052 2055 2054 2053
		f 4 925 1083 -946 -1083
		mu 0 4 2056 2059 2058 2057
		f 4 957 1084 -945 -1084
		mu 0 4 2060 2063 2062 2061
		f 4 -1052 1085 943 -1085
		mu 0 4 2064 2067 2066 2065
		f 4 1029 1088 -1088 -1087
		mu 0 4 2068 2071 2070 2069
		f 4 1080 1090 -1090 -1089
		mu 0 4 2072 2075 2074 2073
		f 4 -941 1092 1091 -1091
		mu 0 4 2076 2079 2078 2077
		f 4 -1076 1086 1093 -1093
		mu 0 4 2080 2083 2082 2081
		f 4 -1055 1096 -1096 -1095
		mu 0 4 2084 2087 2086 2085
		f 4 -1086 1094 1089 -1098
		mu 0 4 2088 2091 2090 2089
		f 4 1087 1095 -1080 -1099
		mu 0 4 2092 2095 2094 2093
		f 4 -1092 1100 1077 -1100
		mu 0 4 2096 2099 2098 2097
		f 4 -1094 1098 1076 -1101
		mu 0 4 2100 2103 2102 2101
		f 4 1101 -1079 -1097 1082
		mu 0 4 2104 2107 2106 2105
		f 4 1097 1099 -1102 942
		mu 0 4 2108 2111 2110 2109
		f 4 1105 -1105 -1104 1102
		mu 0 4 2112 2115 2114 2113
		f 4 1103 1108 -1108 -1107
		mu 0 4 2116 2119 2118 2117
		f 4 1107 1111 -1111 -1110
		mu 0 4 2120 2123 2122 2121
		f 4 1110 -1114 -1106 1112
		mu 0 4 2124 2127 2126 2125
		f 4 1116 1115 -1115 -1109
		mu 0 4 2128 2131 2130 2129
		f 4 1114 1118 -1118 -1112
		mu 0 4 2132 2135 2134 2133
		f 4 1117 -1121 -1120 1113
		mu 0 4 2136 2139 2138 2137
		f 4 1123 -1123 -1122 1104
		mu 0 4 2140 2143 2142 2141
		f 4 1125 -1125 -1124 1119
		mu 0 4 2144 2147 2146 2145
		f 4 1128 -1128 -1126 -1127
		mu 0 4 2148 2151 2150 2149
		f 4 1132 1131 -1131 -1130
		mu 0 4 2152 2155 2154 2153
		f 4 1130 1135 -1135 -1134
		mu 0 4 2156 2159 2158 2157
		f 4 1134 -1139 -1138 1136
		mu 0 4 2160 2163 2162 2161
		f 4 1137 -1141 -1133 1139
		mu 0 4 2164 2167 2166 2165
		f 4 1143 1142 -1142 -1136
		mu 0 4 2168 2171 2170 2169
		f 4 1141 -1146 -1145 1138
		mu 0 4 2172 2175 2174 2173
		f 4 1144 -1148 -1147 1140
		mu 0 4 2176 2179 2178 2177
		f 4 1150 -1150 -1149 -1132
		mu 0 4 2180 2183 2182 2181
		f 4 1148 -1153 -1152 -1144
		mu 0 4 2184 2187 2186 2185
		f 4 1151 -1156 -1155 1153
		mu 0 4 2188 2191 2190 2189
		f 4 1158 1157 -1157 -1117
		mu 0 4 2192 2195 2194 2193
		f 4 1156 1160 -1160 -1129
		mu 0 4 2196 2199 2198 2197
		f 4 1162 -1162 -1159 1121
		mu 0 4 2200 2203 2202 2201
		f 4 1165 1164 -1164 -1158
		mu 0 4 2204 2207 2206 2205
		f 4 1163 1167 -1167 -1161
		mu 0 4 2208 2211 2210 2209
		f 4 1170 1161 -1170 -1169
		mu 0 4 2212 2215 2214 2213
		f 4 1172 -1166 -1171 1171
		mu 0 4 2216 2219 2218 2217
		f 4 1175 -1175 -1174 1146
		mu 0 4 2220 2223 2222 2221
		f 4 1173 1177 -1177 -1151
		mu 0 4 2224 2227 2226 2225
		f 4 1179 -1179 -1176 1154
		mu 0 4 2228 2231 2230 2229
		f 4 1181 3 -1181 1178
		mu 0 4 2232 2235 2234 2233
		f 4 1180 4 -1183 1174
		mu 0 4 2236 2239 2238 2237
		f 4 1185 -1178 -1185 1183
		mu 0 4 2240 2243 2242 2241
		f 4 1184 1182 -6 1186
		mu 0 4 2244 2247 2246 2245
		f 4 1190 1189 -1189 -1188
		mu 0 4 2248 2251 2250 2249
		f 4 1188 1193 -1193 -1192
		mu 0 4 2252 2255 2254 2253
		f 4 1197 -1197 -1196 1194
		mu 0 4 2256 2259 2258 2257
		f 4 1200 -1200 -1191 1198
		mu 0 4 2260 2263 2262 2261
		f 4 1204 1203 -1203 -1202
		mu 0 4 2264 2267 2266 2265
		f 4 1208 1207 -1207 -1206
		mu 0 4 2268 2271 2270 2269
		f 4 1212 -1212 -1211 1209
		mu 0 4 2272 2275 2274 2273
		f 4 1210 -1215 -1205 1213
		mu 0 4 2276 2279 2278 2277
		f 4 1218 1217 -1217 -1216
		mu 0 4 2280 2283 2282 2281
		f 4 1222 -1222 -1221 1219
		mu 0 4 2284 2287 2286 2285
		f 4 1226 1225 -1225 -1224
		mu 0 4 2288 2291 2290 2289
		f 4 1230 -1230 -1229 1227
		mu 0 4 2292 2295 2294 2293
		f 4 1234 1233 -1233 -1232
		mu 0 4 2296 2299 2298 2297
		f 4 1238 -1238 -1237 1235
		mu 0 4 2300 2303 2302 2301
		f 4 1241 1240 -1240 -1234
		mu 0 4 2304 2307 2306 2305
		f 4 1244 -1244 -1243 1237
		mu 0 4 2308 2311 2310 2309
		f 4 1247 1215 -1247 -1246
		mu 0 4 2312 2315 2314 2313
		f 4 1250 1249 -1249 -1241
		mu 0 4 2316 2319 2318 2317
		f 4 1253 -1218 -1253 1251
		mu 0 4 2320 2323 2322 2321
		f 4 1256 -1256 -1255 1126
		mu 0 4 2324 2327 2326 2325
		f 4 1259 -1228 -1259 1257
		mu 0 4 2328 2331 2330 2329
		f 4 1262 1261 -1261 -1154
		mu 0 4 2332 2335 2334 2333
		f 4 1265 1229 -1265 -1264
		mu 0 4 2336 2339 2338 2337
		f 4 1268 -1268 -1267 1243
		mu 0 4 2340 2343 2342 2341
		f 4 1272 -1272 -1271 1269
		mu 0 4 2344 2347 2346 2345
		f 4 1270 1274 -1274 -1248
		mu 0 4 2348 2351 2350 2349
		f 4 1273 1276 -1276 -1219
		mu 0 4 2352 2355 2354 2353
		f 4 1275 -1278 -1273 1252
		mu 0 4 2356 2359 2358 2357
		f 4 1281 1280 -1280 -1279
		mu 0 4 2360 2363 2362 2361
		f 4 1279 1283 -1283 -1266
		mu 0 4 2364 2367 2366 2365
		f 4 1282 -1286 -1285 1228
		mu 0 4 2368 2371 2370 2369
		f 4 1284 -1287 -1282 1258
		mu 0 4 2372 2375 2374 2373
		f 4 1288 -1119 -1288 1271
		mu 0 4 2376 2379 2378 2377
		f 4 1287 1290 -1290 -1275
		mu 0 4 2380 2383 2382 2381
		f 4 1289 1292 -1292 -1277
		mu 0 4 2384 2387 2386 2385
		f 4 1291 -1294 -1289 1277
		mu 0 4 2388 2391 2390 2389
		f 4 1295 1145 -1295 -1281
		mu 0 4 2392 2395 2394 2393
		f 4 1294 1297 -1297 -1284
		mu 0 4 2396 2399 2398 2397
		f 4 1296 -1300 -1299 1285
		mu 0 4 2400 2403 2402 2401
		f 4 1298 -1301 -1296 1286
		mu 0 4 2404 2407 2406 2405
		f 4 -1116 1254 -1302 -1291
		mu 0 4 2408 2411 2410 2409
		f 4 1301 1255 -1303 -1293
		mu 0 4 2412 2415 2414 2413
		f 4 1302 -1257 1120 1293
		mu 0 4 2416 2419 2418 2417
		f 4 -1143 1260 -1304 -1298
		mu 0 4 2420 2423 2422 2421
		f 4 1303 -1262 -1305 1299
		mu 0 4 2424 2427 2426 2425
		f 4 1304 -1263 1147 1300
		mu 0 4 2428 2431 2430 2429
		f 4 1307 -1195 -1307 1305
		mu 0 4 2432 2435 2434 2433
		f 4 1306 1195 -1309 -1201
		mu 0 4 2436 2439 2438 2437
		f 4 1309 -1198 -1308 1192
		mu 0 4 2440 2443 2442 2441
		f 4 1308 1312 -1312 -1311
		mu 0 4 2444 2447 2446 2445
		f 4 1311 1315 -1315 -1314
		mu 0 4 2448 2451 2450 2449
		f 4 1314 1232 -1318 -1317
		mu 0 4 2452 2455 2454 2453
		f 4 1319 -1235 -1310 1318
		mu 0 4 2456 2459 2458 2457
		f 4 1317 1239 -1322 -1321
		mu 0 4 2460 2463 2462 2461
		f 4 1323 -1242 -1320 1322
		mu 0 4 2464 2467 2466 2465
		f 4 1321 1248 -1325 -1254
		mu 0 4 2468 2471 2470 2469
		f 4 1324 -1250 -1326 1216
		mu 0 4 2472 2475 2474 2473
		f 4 1325 -1251 -1324 1246
		mu 0 4 2476 2479 2478 2477
		f 4 1328 1205 -1328 -1327
		mu 0 4 2480 2483 2482 2481
		f 4 1327 1206 -1330 -1213
		mu 0 4 2484 2487 2486 2485
		f 4 1330 -1209 -1329 1202
		mu 0 4 2488 2491 2490 2489
		f 4 1334 -1334 -1333 1331
		mu 0 4 2492 2495 2494 2493
		f 4 1332 -1337 -1331 1335
		mu 0 4 2496 2499 2498 2497
		f 4 1329 1236 -1339 -1338
		mu 0 4 2500 2503 2502 2501
		f 4 1340 -1239 -1335 1339
		mu 0 4 2504 2507 2506 2505
		f 4 1338 1242 -1343 -1342
		mu 0 4 2508 2511 2510 2509
		f 4 1344 -1245 -1341 1343
		mu 0 4 2512 2515 2514 2513
		f 4 1342 1266 -1346 -1260
		mu 0 4 2516 2519 2518 2517
		f 4 1345 1267 -1347 -1231
		mu 0 4 2520 2523 2522 2521
		f 4 1346 -1269 -1345 1264
		mu 0 4 2524 2527 2526 2525
		f 4 1348 1316 -1348 -1319
		mu 0 4 2528 2531 2530 2529
		f 4 1347 1320 -1350 -1323
		mu 0 4 2532 2535 2534 2533
		f 4 1349 -1252 -1270 1245
		mu 0 4 2536 2539 2538 2537
		f 4 1351 -1344 -1351 1341
		mu 0 4 2540 2543 2542 2541
		f 4 1350 -1340 -1353 1337
		mu 0 4 2544 2547 2546 2545
		f 4 1278 1263 -1352 -1258
		mu 0 4 2548 2551 2550 2549
		f 4 -1190 1199 -1354 -1194
		mu 0 4 2552 2555 2554 2553
		f 4 1353 1310 1313 -1349
		mu 0 4 2556 2559 2558 2557
		f 4 1214 1211 -1355 -1204
		mu 0 4 2560 2563 2562 2561
		f 4 1354 1352 -1332 -1336
		mu 0 4 2564 2567 2566 2565
		f 4 1356 -1220 -1356 1196
		mu 0 4 2568 2571 2570 2569
		f 4 1360 1359 -1359 -1358
		mu 0 4 2572 2575 2574 2573
		f 4 1362 1221 -1362 -1316
		mu 0 4 2576 2579 2578 2577
		f 4 1361 -1223 -1357 1231
		mu 0 4 2580 2583 2582 2581
		f 4 1364 1223 -1364 -1208
		mu 0 4 2584 2587 2586 2585
		f 4 1363 1224 -1366 -1236
		mu 0 4 2588 2591 2590 2589
		f 4 1365 -1226 -1367 1333
		mu 0 4 2592 2595 2594 2593
		f 4 1369 1368 -1368 -1313
		mu 0 4 2596 2599 2598 2597
		f 4 1367 1371 -1371 -1363
		mu 0 4 2600 2603 2602 2601
		f 4 1370 -1374 -1373 1220
		mu 0 4 2604 2607 2606 2605
		f 4 1372 -1375 -1370 1355
		mu 0 4 2608 2611 2610 2609
		f 4 1377 1376 -1376 1336
		mu 0 4 2612 2615 2614 2613
		f 4 1378 -1372 -1378 1366
		mu 0 4 2616 2619 2618 2617
		f 4 1379 1357 -1377 -1369
		mu 0 4 2620 2623 2622 2621
		f 4 1381 -1360 -1381 1373
		mu 0 4 2624 2627 2626 2625
		f 4 1380 -1361 -1380 1374
		mu 0 4 2628 2631 2630 2629
		f 4 -1365 1375 1358 -1383
		mu 0 4 2632 2635 2634 2633
		f 4 -1227 1382 -1382 -1379
		mu 0 4 2636 2639 2638 2637
		f 4 -1387 1385 1384 -1384
		mu 0 4 2640 2643 2642 2641
		f 4 1389 1388 -1388 -1386
		mu 0 4 2644 2647 2646 2645
		f 4 1392 1391 -1391 -1389
		mu 0 4 2648 2651 2650 2649
		f 4 -1395 1383 1393 -1392
		mu 0 4 2652 2655 2654 2653
		f 4 1387 1397 -1397 -1396
		mu 0 4 2656 2659 2658 2657
		f 4 1390 1399 -1399 -1398
		mu 0 4 2660 2663 2662 2661
		f 4 -1394 1401 1400 -1400
		mu 0 4 2664 2667 2666 2665
		f 4 -1385 1403 1122 -1403
		mu 0 4 2668 2671 2670 2669
		f 4 -1402 1402 1124 -1405
		mu 0 4 2672 2675 2674 2673
		f 4 1406 1404 1127 -1406
		mu 0 4 2676 2679 2678 2677
		f 4 1410 1409 -1409 -1408
		mu 0 4 2680 2683 2682 2681
		f 4 1413 1412 -1412 -1410
		mu 0 4 2684 2687 2686 2685
		f 4 -1417 1415 1414 -1413
		mu 0 4 2688 2691 2690 2689
		f 4 -1419 1407 1417 -1416
		mu 0 4 2692 2695 2694 2693
		f 4 1411 1421 -1421 -1420
		mu 0 4 2696 2699 2698 2697
		f 4 -1415 1423 1422 -1422
		mu 0 4 2700 2703 2702 2701
		f 4 -1418 1425 1424 -1424
		mu 0 4 2704 2707 2706 2705
		f 4 1408 1427 1149 -1427
		mu 0 4 2708 2711 2710 2709
		f 4 1419 1428 1152 -1428
		mu 0 4 2712 2715 2714 2713
		f 4 -1431 1429 1155 -1429
		mu 0 4 2716 2719 2718 2717
		f 4 1395 1433 -1433 -1432
		mu 0 4 2720 2723 2722 2721
		f 4 1405 1159 -1435 -1434
		mu 0 4 2724 2727 2726 2725
		f 4 -1404 1431 1435 -1163
		mu 0 4 2728 2731 2730 2729
		f 4 1432 1438 -1438 -1437
		mu 0 4 2732 2735 2734 2733
		f 4 1434 1166 -1440 -1439
		mu 0 4 2736 2739 2738 2737
		f 4 1441 1169 -1436 -1441
		mu 0 4 2740 2743 2742 2741
		f 4 -1444 1440 1436 -1443
		mu 0 4 2744 2747 2746 2745
		f 4 -1426 1446 1445 -1445
		mu 0 4 2748 2751 2750 2749
		f 4 1426 1176 -1448 -1447
		mu 0 4 2752 2755 2754 2753
		f 4 -1430 1444 1448 -1180
		mu 0 4 2756 2759 2758 2757
		f 4 -1449 1449 -352 -1182
		mu 0 4 2760 2763 2762 2761
		f 4 -1446 1450 -354 -1450
		mu 0 4 2764 2767 2766 2765
		f 4 -1453 1451 1447 -1186
		mu 0 4 2768 2771 2770 2769
		f 4 -1454 357 -1451 -1452
		mu 0 4 2772 2775 2774 2773
		f 4 1457 1456 -1456 -1455
		mu 0 4 2776 2779 2778 2777
		f 4 1460 1459 -1459 -1457
		mu 0 4 2780 2783 2782 2781
		f 4 -1465 1463 1462 -1462
		mu 0 4 2784 2787 2786 2785
		f 4 -1468 1454 1466 -1466
		mu 0 4 2788 2791 2790 2789
		f 4 1471 1470 -1470 -1469
		mu 0 4 2792 2795 2794 2793
		f 4 1475 1474 -1474 -1473
		mu 0 4 2796 2799 2798 2797
		f 4 -1480 1478 1477 -1477
		mu 0 4 2800 2803 2802 2801
		f 4 -1482 1468 1480 -1479
		mu 0 4 2804 2807 2806 2805
		f 4 1485 1484 -1484 -1483
		mu 0 4 2808 2811 2810 2809
		f 4 -1490 1488 1487 -1487
		mu 0 4 2812 2815 2814 2813
		f 4 1493 1492 -1492 -1491
		mu 0 4 2816 2819 2818 2817
		f 4 -1498 1496 1495 -1495
		mu 0 4 2820 2823 2822 2821
		f 4 1501 1500 -1500 -1499
		mu 0 4 2824 2827 2826 2825
		f 4 -1506 1504 1503 -1503
		mu 0 4 2828 2831 2830 2829
		f 4 1499 1508 -1508 -1507
		mu 0 4 2832 2835 2834 2833
		f 4 -1504 1511 1510 -1510
		mu 0 4 2836 2839 2838 2837
		f 4 1514 1513 -1486 -1513
		mu 0 4 2840 2843 2842 2841
		f 4 1507 1517 -1517 -1516
		mu 0 4 2844 2847 2846 2845
		f 4 -1521 1519 1483 -1519
		mu 0 4 2848 2851 2850 2849
		f 4 -1407 1523 1522 -1522
		mu 0 4 2852 2855 2854 2853
		f 4 -1527 1525 1497 -1525
		mu 0 4 2856 2859 2858 2857
		f 4 1430 1529 -1529 -1528
		mu 0 4 2860 2863 2862 2861
		f 4 1532 1531 -1496 -1531
		mu 0 4 2864 2867 2866 2865
		f 4 -1511 1535 1534 -1534
		mu 0 4 2868 2871 2870 2869
		f 4 -1540 1538 1537 -1537
		mu 0 4 2872 2875 2874 2873
		f 4 1512 1541 -1541 -1539
		mu 0 4 2876 2879 2878 2877
		f 4 1482 1543 -1543 -1542
		mu 0 4 2880 2883 2882 2881
		f 4 -1520 1536 1544 -1544
		mu 0 4 2884 2887 2886 2885
		f 4 1548 1547 -1547 -1546
		mu 0 4 2888 2891 2890 2889
		f 4 1530 1550 -1550 -1548
		mu 0 4 2892 2895 2894 2893
		f 4 -1497 1552 1551 -1551
		mu 0 4 2896 2899 2898 2897
		f 4 -1526 1545 1553 -1553
		mu 0 4 2900 2903 2902 2901
		f 4 -1538 1555 1398 -1555
		mu 0 4 2904 2907 2906 2905
		f 4 1540 1557 -1557 -1556
		mu 0 4 2908 2911 2910 2909
		f 4 1542 1559 -1559 -1558
		mu 0 4 2912 2915 2914 2913
		f 4 -1545 1554 1560 -1560
		mu 0 4 2916 2919 2918 2917
		f 4 1546 1562 -1423 -1562
		mu 0 4 2920 2923 2922 2921
		f 4 1549 1564 -1564 -1563
		mu 0 4 2924 2927 2926 2925
		f 4 -1552 1566 1565 -1565
		mu 0 4 2928 2931 2930 2929
		f 4 -1554 1561 1567 -1567
		mu 0 4 2932 2935 2934 2933
		f 4 1556 1568 -1524 1396
		mu 0 4 2936 2939 2938 2937
		f 4 1558 1569 -1523 -1569
		mu 0 4 2940 2943 2942 2941
		f 4 -1561 -1401 1521 -1570
		mu 0 4 2944 2947 2946 2945
		f 4 1563 1570 -1530 1420
		mu 0 4 2948 2951 2950 2949
		f 4 -1566 1571 1528 -1571
		mu 0 4 2952 2955 2954 2953
		f 4 -1568 -1425 1527 -1572
		mu 0 4 2956 2959 2958 2957
		f 4 -1575 1573 1464 -1573
		mu 0 4 2960 2963 2962 2961
		f 4 1465 1575 -1464 -1574
		mu 0 4 2964 2967 2966 2965
		f 4 -1460 1572 1461 -1577
		mu 0 4 2968 2971 2970 2969
		f 4 1579 1578 -1578 -1576
		mu 0 4 2972 2975 2974 2973
		f 4 1582 1581 -1581 -1579
		mu 0 4 2976 2979 2978 2977
		f 4 1584 1583 -1501 -1582
		mu 0 4 2980 2983 2982 2981
		f 4 -1587 1576 1498 -1586
		mu 0 4 2984 2987 2986 2985
		f 4 1588 1587 -1509 -1584
		mu 0 4 2988 2991 2990 2989
		f 4 -1591 1585 1506 -1590
		mu 0 4 2992 2995 2994 2993
		f 4 1518 1591 -1518 -1588
		mu 0 4 2996 2999 2998 2997
		f 4 -1485 1592 1516 -1592
		mu 0 4 3000 3003 3002 3001
		f 4 -1514 1589 1515 -1593
		mu 0 4 3004 3007 3006 3005
		f 4 1595 1594 -1476 -1594
		mu 0 4 3008 3011 3010 3009
		f 4 1476 1596 -1475 -1595
		mu 0 4 3012 3015 3014 3013
		f 4 -1471 1593 1472 -1598
		mu 0 4 3016 3019 3018 3017
		f 4 -1602 1600 1599 -1599
		mu 0 4 3020 3023 3022 3021
		f 4 -1604 1597 1602 -1601
		mu 0 4 3024 3027 3026 3025
		f 4 1605 1604 -1505 -1597
		mu 0 4 3028 3031 3030 3029
		f 4 -1608 1598 1502 -1607
		mu 0 4 3032 3035 3034 3033
		f 4 1609 1608 -1512 -1605
		mu 0 4 3036 3039 3038 3037
		f 4 -1612 1606 1509 -1611
		mu 0 4 3040 3043 3042 3041
		f 4 1524 1612 -1536 -1609
		mu 0 4 3044 3047 3046 3045
		f 4 1494 1613 -1535 -1613
		mu 0 4 3048 3051 3050 3049
		f 4 -1532 1610 1533 -1614
		mu 0 4 3052 3055 3054 3053
		f 4 1586 1615 -1585 -1615
		mu 0 4 3056 3059 3058 3057
		f 4 1590 1616 -1589 -1616
		mu 0 4 3060 3063 3062 3061
		f 4 -1515 1539 1520 -1617
		mu 0 4 3064 3067 3066 3065
		f 4 -1610 1618 1611 -1618
		mu 0 4 3068 3071 3070 3069
		f 4 -1606 1619 1607 -1619
		mu 0 4 3072 3075 3074 3073
		f 4 1526 1617 -1533 -1549
		mu 0 4 3076 3079 3078 3077
		f 4 1458 1620 -1467 1455
		mu 0 4 3080 3083 3082 3081
		f 4 1614 -1583 -1580 -1621
		mu 0 4 3084 3087 3086 3085
		f 4 1469 1621 -1478 -1481
		mu 0 4 3088 3091 3090 3089
		f 4 1603 1601 -1620 -1622
		mu 0 4 3092 3095 3094 3093
		f 4 -1463 1623 1489 -1623
		mu 0 4 3096 3099 3098 3097
		f 4 1627 1626 -1626 -1625
		mu 0 4 3100 3103 3102 3101
		f 4 1580 1629 -1488 -1629
		mu 0 4 3104 3107 3106 3105
		f 4 -1502 1622 1486 -1630
		mu 0 4 3108 3111 3110 3109
		f 4 1473 1631 -1494 -1631
		mu 0 4 3112 3115 3114 3113
		f 4 1505 1632 -1493 -1632
		mu 0 4 3116 3119 3118 3117
		f 4 -1600 1633 1491 -1633
		mu 0 4 3120 3123 3122 3121
		f 4 1577 1636 -1636 -1635
		mu 0 4 3124 3127 3126 3125
		f 4 1628 1638 -1638 -1637
		mu 0 4 3128 3131 3130 3129
		f 4 -1489 1640 1639 -1639
		mu 0 4 3132 3135 3134 3133
		f 4 -1624 1634 1641 -1641
		mu 0 4 3136 3139 3138 3137
		f 4 -1603 1644 -1644 -1643
		mu 0 4 3140 3143 3142 3141
		f 4 -1634 1642 1637 -1646
		mu 0 4 3144 3147 3146 3145
		f 4 1635 1643 -1628 -1647
		mu 0 4 3148 3151 3150 3149
		f 4 -1640 1648 1625 -1648
		mu 0 4 3152 3155 3154 3153
		f 4 -1642 1646 1624 -1649
		mu 0 4 3156 3159 3158 3157
		f 4 1649 -1627 -1645 1630
		mu 0 4 3160 3163 3162 3161
		f 4 1645 1647 -1650 1490
		mu 0 4 3164 3167 3166 3165
		f 4 -1654 1652 1651 -1651
		mu 0 4 3168 3171 3170 3169
		f 4 1656 1655 -1655 -1653
		mu 0 4 3172 3175 3174 3173
		f 4 1659 1658 -1658 -1656
		mu 0 4 3176 3179 3178 3177
		f 4 -1662 1650 1660 -1659
		mu 0 4 3180 3183 3182 3181
		f 4 1654 1664 -1664 -1663
		mu 0 4 3184 3187 3186 3185
		f 4 1657 1666 -1666 -1665
		mu 0 4 3188 3191 3190 3189
		f 4 -1661 1668 1667 -1667
		mu 0 4 3192 3195 3194 3193
		f 4 -1652 1671 1670 -1670
		mu 0 4 3196 3199 3198 3197
		f 4 -1669 1669 1673 -1673
		mu 0 4 3200 3203 3202 3201
		f 4 1676 1672 1675 -1675
		mu 0 4 3204 3207 3206 3205
		f 4 1680 1679 -1679 -1678
		mu 0 4 3208 3211 3210 3209
		f 4 1683 1682 -1682 -1680
		mu 0 4 3212 3215 3214 3213
		f 4 -1687 1685 1684 -1683
		mu 0 4 3216 3219 3218 3217
		f 4 -1689 1677 1687 -1686
		mu 0 4 3220 3223 3222 3221
		f 4 1681 1691 -1691 -1690
		mu 0 4 3224 3227 3226 3225
		f 4 -1685 1693 1692 -1692
		mu 0 4 3228 3231 3230 3229
		f 4 -1688 1695 1694 -1694
		mu 0 4 3232 3235 3234 3233
		f 4 1678 1698 1697 -1697
		mu 0 4 3236 3239 3238 3237
		f 4 1689 1700 1699 -1699
		mu 0 4 3240 3243 3242 3241
		f 4 -1704 1702 1701 -1701
		mu 0 4 3244 3247 3246 3245
		f 4 1662 1706 -1706 -1705
		mu 0 4 3248 3251 3250 3249
		f 4 1674 1708 -1708 -1707
		mu 0 4 3252 3255 3254 3253
		f 4 -1672 1704 1710 -1710
		mu 0 4 3256 3259 3258 3257
		f 4 1705 1712 -1165 -1712
		mu 0 4 3260 3263 3262 3261
		f 4 1707 1713 -1168 -1713
		mu 0 4 3264 3267 3266 3265
		f 4 1716 1715 -1711 -1715
		mu 0 4 3268 3271 3270 3269
		f 4 -1718 1714 1711 -1173
		mu 0 4 3272 3275 3274 3273
		f 4 -1696 1720 1719 -1719
		mu 0 4 3276 3279 3278 3277
		f 4 1696 1722 -1722 -1721
		mu 0 4 3280 3283 3282 3281
		f 4 -1703 1718 1724 -1724
		mu 0 4 3284 3287 3286 3285
		f 4 -1725 1726 -631 -1726
		mu 0 4 3288 3291 3290 3289
		f 4 -1720 1727 -634 -1727
		mu 0 4 3292 3295 3294 3293
		f 4 -1731 1729 1721 -1729
		mu 0 4 3296 3299 3298 3297
		f 4 -1732 638 -1728 -1730
		mu 0 4 3300 3303 3302 3301
		f 4 1735 1734 -1734 -1733
		mu 0 4 3304 3307 3306 3305
		f 4 1738 1737 -1737 -1735
		mu 0 4 3308 3311 3310 3309
		f 4 -1743 1741 1740 -1740
		mu 0 4 3312 3315 3314 3313
		f 4 -1746 1732 1744 -1744
		mu 0 4 3316 3319 3318 3317
		f 4 1749 1748 -1748 -1747
		mu 0 4 3320 3323 3322 3321
		f 4 1753 1752 -1752 -1751
		mu 0 4 3324 3327 3326 3325
		f 4 -1758 1756 1755 -1755
		mu 0 4 3328 3331 3330 3329
		f 4 -1760 1746 1758 -1757
		mu 0 4 3332 3335 3334 3333
		f 4 1763 1762 -1762 -1761
		mu 0 4 3336 3339 3338 3337
		f 4 -1768 1766 1765 -1765
		mu 0 4 3340 3343 3342 3341
		f 4 1771 1770 -1770 -1769
		mu 0 4 3344 3347 3346 3345
		f 4 -1776 1774 1773 -1773
		mu 0 4 3348 3351 3350 3349
		f 4 1779 1778 -1778 -1777
		mu 0 4 3352 3355 3354 3353
		f 4 -1784 1782 1781 -1781
		mu 0 4 3356 3359 3358 3357
		f 4 1777 1786 -1786 -1785
		mu 0 4 3360 3363 3362 3361
		f 4 -1782 1789 1788 -1788
		mu 0 4 3364 3367 3366 3365
		f 4 1792 1791 -1764 -1791
		mu 0 4 3368 3371 3370 3369
		f 4 1785 1795 -1795 -1794
		mu 0 4 3372 3375 3374 3373
		f 4 -1799 1797 1761 -1797
		mu 0 4 3376 3379 3378 3377
		f 4 -1677 1801 1800 -1800
		mu 0 4 3380 3383 3382 3381
		f 4 -1805 1803 1775 -1803
		mu 0 4 3384 3387 3386 3385
		f 4 1703 1807 -1807 -1806
		mu 0 4 3388 3391 3390 3389
		f 4 1810 1809 -1774 -1809
		mu 0 4 3392 3395 3394 3393
		f 4 -1789 1813 1812 -1812
		mu 0 4 3396 3399 3398 3397
		f 4 -1818 1816 1815 -1815
		mu 0 4 3400 3403 3402 3401
		f 4 1790 1819 -1819 -1817
		mu 0 4 3404 3407 3406 3405
		f 4 1760 1821 -1821 -1820
		mu 0 4 3408 3411 3410 3409
		f 4 -1798 1814 1822 -1822
		mu 0 4 3412 3415 3414 3413
		f 4 1826 1825 -1825 -1824
		mu 0 4 3416 3419 3418 3417
		f 4 1808 1828 -1828 -1826
		mu 0 4 3420 3423 3422 3421
		f 4 -1775 1830 1829 -1829
		mu 0 4 3424 3427 3426 3425
		f 4 -1804 1823 1831 -1831
		mu 0 4 3428 3431 3430 3429
		f 4 -1816 1833 1665 -1833
		mu 0 4 3432 3435 3434 3433
		f 4 1818 1835 -1835 -1834
		mu 0 4 3436 3439 3438 3437
		f 4 1820 1837 -1837 -1836
		mu 0 4 3440 3443 3442 3441
		f 4 -1823 1832 1838 -1838
		mu 0 4 3444 3447 3446 3445
		f 4 1824 1840 -1693 -1840
		mu 0 4 3448 3451 3450 3449
		f 4 1827 1842 -1842 -1841
		mu 0 4 3452 3455 3454 3453
		f 4 -1830 1844 1843 -1843
		mu 0 4 3456 3459 3458 3457
		f 4 -1832 1839 1845 -1845
		mu 0 4 3460 3463 3462 3461
		f 4 1834 1846 -1802 1663
		mu 0 4 3464 3467 3466 3465
		f 4 1836 1847 -1801 -1847
		mu 0 4 3468 3471 3470 3469
		f 4 -1839 -1668 1799 -1848
		mu 0 4 3472 3475 3474 3473
		f 4 1841 1848 -1808 1690
		mu 0 4 3476 3479 3478 3477
		f 4 -1844 1849 1806 -1849
		mu 0 4 3480 3483 3482 3481
		f 4 -1846 -1695 1805 -1850
		mu 0 4 3484 3487 3486 3485
		f 4 -1853 1851 1742 -1851
		mu 0 4 3488 3491 3490 3489
		f 4 1743 1853 -1742 -1852
		mu 0 4 3492 3495 3494 3493
		f 4 -1738 1850 1739 -1855
		mu 0 4 3496 3499 3498 3497
		f 4 1857 1856 -1856 -1854
		mu 0 4 3500 3503 3502 3501
		f 4 1860 1859 -1859 -1857
		mu 0 4 3504 3507 3506 3505
		f 4 1862 1861 -1779 -1860
		mu 0 4 3508 3511 3510 3509
		f 4 -1865 1854 1776 -1864
		mu 0 4 3512 3515 3514 3513
		f 4 1866 1865 -1787 -1862
		mu 0 4 3516 3519 3518 3517
		f 4 -1869 1863 1784 -1868
		mu 0 4 3520 3523 3522 3521
		f 4 1796 1869 -1796 -1866
		mu 0 4 3524 3527 3526 3525
		f 4 -1763 1870 1794 -1870
		mu 0 4 3528 3531 3530 3529
		f 4 -1792 1867 1793 -1871
		mu 0 4 3532 3535 3534 3533
		f 4 1873 1872 -1754 -1872
		mu 0 4 3536 3539 3538 3537
		f 4 1754 1874 -1753 -1873
		mu 0 4 3540 3543 3542 3541
		f 4 -1749 1871 1750 -1876
		mu 0 4 3544 3547 3546 3545
		f 4 -1880 1878 1877 -1877
		mu 0 4 3548 3551 3550 3549
		f 4 -1882 1875 1880 -1879
		mu 0 4 3552 3555 3554 3553
		f 4 1883 1882 -1783 -1875
		mu 0 4 3556 3559 3558 3557
		f 4 -1886 1876 1780 -1885
		mu 0 4 3560 3563 3562 3561
		f 4 1887 1886 -1790 -1883
		mu 0 4 3564 3567 3566 3565
		f 4 -1890 1884 1787 -1889
		mu 0 4 3568 3571 3570 3569
		f 4 1802 1890 -1814 -1887
		mu 0 4 3572 3575 3574 3573
		f 4 1772 1891 -1813 -1891
		mu 0 4 3576 3579 3578 3577
		f 4 -1810 1888 1811 -1892
		mu 0 4 3580 3583 3582 3581
		f 4 1864 1893 -1863 -1893
		mu 0 4 3584 3587 3586 3585
		f 4 1868 1894 -1867 -1894
		mu 0 4 3588 3591 3590 3589
		f 4 -1793 1817 1798 -1895
		mu 0 4 3592 3595 3594 3593
		f 4 -1888 1896 1889 -1896
		mu 0 4 3596 3599 3598 3597
		f 4 -1884 1897 1885 -1897
		mu 0 4 3600 3603 3602 3601
		f 4 1804 1895 -1811 -1827
		mu 0 4 3604 3607 3606 3605
		f 4 1736 1898 -1745 1733
		mu 0 4 3608 3611 3610 3609
		f 4 1892 -1861 -1858 -1899
		mu 0 4 3612 3615 3614 3613
		f 4 1747 1899 -1756 -1759
		mu 0 4 3616 3619 3618 3617
		f 4 1881 1879 -1898 -1900
		mu 0 4 3620 3623 3622 3621
		f 4 -1741 1901 1767 -1901
		mu 0 4 3624 3627 3626 3625
		f 4 1905 1904 -1904 -1903
		mu 0 4 3628 3631 3630 3629
		f 4 1858 1907 -1766 -1907
		mu 0 4 3632 3635 3634 3633
		f 4 -1780 1900 1764 -1908
		mu 0 4 3636 3639 3638 3637
		f 4 1751 1909 -1772 -1909
		mu 0 4 3640 3643 3642 3641
		f 4 1783 1910 -1771 -1910
		mu 0 4 3644 3647 3646 3645
		f 4 -1878 1911 1769 -1911
		mu 0 4 3648 3651 3650 3649
		f 4 1855 1914 -1914 -1913
		mu 0 4 3652 3655 3654 3653
		f 4 1906 1916 -1916 -1915
		mu 0 4 3656 3659 3658 3657
		f 4 -1767 1918 1917 -1917
		mu 0 4 3660 3663 3662 3661
		f 4 -1902 1912 1919 -1919
		mu 0 4 3664 3667 3666 3665
		f 4 -1881 1922 -1922 -1921
		mu 0 4 3668 3671 3670 3669
		f 4 -1912 1920 1915 -1924
		mu 0 4 3672 3675 3674 3673
		f 4 1913 1921 -1906 -1925
		mu 0 4 3676 3679 3678 3677
		f 4 -1918 1926 1903 -1926
		mu 0 4 3680 3683 3682 3681
		f 4 -1920 1924 1902 -1927
		mu 0 4 3684 3687 3686 3685
		f 4 1927 -1905 -1923 1908
		mu 0 4 3688 3691 3690 3689
		f 4 1923 1925 -1928 1768
		mu 0 4 3692 3695 3694 3693
		f 4 1931 -1931 -1930 1928
		mu 0 4 3696 3699 3698 3697
		f 4 1929 1934 -1934 -1933
		mu 0 4 3700 3703 3702 3701
		f 4 1933 1937 -1937 -1936
		mu 0 4 3704 3707 3706 3705
		f 4 1936 -1940 -1932 1938
		mu 0 4 3708 3711 3710 3709
		f 4 1942 1941 -1941 -1935
		mu 0 4 3712 3715 3714 3713
		f 4 1940 1944 -1944 -1938
		mu 0 4 3716 3719 3718 3717
		f 4 1943 -1947 -1946 1939
		mu 0 4 3720 3723 3722 3721
		f 4 1948 -1671 -1948 1930
		mu 0 4 3724 3727 3726 3725
		f 4 1949 -1674 -1949 1945
		mu 0 4 3728 3731 3730 3729
		f 4 1951 -1676 -1950 -1951
		mu 0 4 3732 3735 3734 3733
		f 4 1955 1954 -1954 -1953
		mu 0 4 3736 3739 3738 3737
		f 4 1953 1958 -1958 -1957
		mu 0 4 3740 3743 3742 3741
		f 4 1957 -1962 -1961 1959
		mu 0 4 3744 3747 3746 3745
		f 4 1960 -1964 -1956 1962
		mu 0 4 3748 3751 3750 3749
		f 4 1966 1965 -1965 -1959
		mu 0 4 3752 3755 3754 3753
		f 4 1964 -1969 -1968 1961
		mu 0 4 3756 3759 3758 3757
		f 4 1967 -1971 -1970 1963
		mu 0 4 3760 3763 3762 3761
		f 4 1972 -1698 -1972 -1955
		mu 0 4 3764 3767 3766 3765
		f 4 1971 -1700 -1974 -1967
		mu 0 4 3768 3771 3770 3769
		f 4 1973 -1702 -1976 1974
		mu 0 4 3772 3775 3774 3773
		f 4 1978 1977 -1977 -1943
		mu 0 4 3776 3779 3778 3777
		f 4 1976 1979 -1709 -1952
		mu 0 4 3780 3783 3782 3781
		f 4 1709 -1981 -1979 1947
		mu 0 4 3784 3787 3786 3785
		f 4 1982 1437 -1982 -1978
		mu 0 4 3788 3791 3790 3789
		f 4 1981 1439 -1714 -1980
		mu 0 4 3792 3795 3794 3793
		f 4 1984 1980 -1716 -1984
		mu 0 4 3796 3799 3798 3797
		f 4 1442 -1983 -1985 1985
		mu 0 4 3800 3803 3802 3801
		f 4 1988 -1988 -1987 1969
		mu 0 4 3804 3807 3806 3805
		f 4 1986 1989 -1723 -1973
		mu 0 4 3808 3811 3810 3809
		f 4 1723 -1991 -1989 1975
		mu 0 4 3812 3815 3814 3813
		f 4 1725 898 -1992 1990
		mu 0 4 3816 3819 3818 3817
		f 4 1991 900 -1993 1987
		mu 0 4 3820 3823 3822 3821
		f 4 1728 -1990 -1995 1993
		mu 0 4 3824 3827 3826 3825
		f 4 1994 1992 -905 1995
		mu 0 4 3828 3831 3830 3829
		f 4 1999 1998 -1998 -1997
		mu 0 4 3832 3835 3834 3833
		f 4 1997 2002 -2002 -2001
		mu 0 4 3836 3839 3838 3837
		f 4 2006 -2006 -2005 2003
		mu 0 4 3840 3843 3842 3841
		f 4 2009 -2009 -2000 2007
		mu 0 4 3844 3847 3846 3845
		f 4 2013 2012 -2012 -2011
		mu 0 4 3848 3851 3850 3849
		f 4 2017 2016 -2016 -2015
		mu 0 4 3852 3855 3854 3853
		f 4 2021 -2021 -2020 2018
		mu 0 4 3856 3859 3858 3857
		f 4 2019 -2024 -2014 2022
		mu 0 4 3860 3863 3862 3861
		f 4 2027 2026 -2026 -2025
		mu 0 4 3864 3867 3866 3865
		f 4 2031 -2031 -2030 2028
		mu 0 4 3868 3871 3870 3869
		f 4 2035 2034 -2034 -2033
		mu 0 4 3872 3875 3874 3873
		f 4 2039 -2039 -2038 2036
		mu 0 4 3876 3879 3878 3877
		f 4 2043 2042 -2042 -2041
		mu 0 4 3880 3883 3882 3881
		f 4 2047 -2047 -2046 2044
		mu 0 4 3884 3887 3886 3885
		f 4 2050 2049 -2049 -2043
		mu 0 4 3888 3891 3890 3889
		f 4 2053 -2053 -2052 2046
		mu 0 4 3892 3895 3894 3893
		f 4 2056 2024 -2056 -2055
		mu 0 4 3896 3899 3898 3897
		f 4 2059 2058 -2058 -2050
		mu 0 4 3900 3903 3902 3901
		f 4 2062 -2027 -2062 2060
		mu 0 4 3904 3907 3906 3905
		f 4 2065 -2065 -2064 1950
		mu 0 4 3908 3911 3910 3909
		f 4 2068 -2037 -2068 2066
		mu 0 4 3912 3915 3914 3913
		f 4 2071 2070 -2070 -1975
		mu 0 4 3916 3919 3918 3917
		f 4 2074 2038 -2074 -2073
		mu 0 4 3920 3923 3922 3921
		f 4 2077 -2077 -2076 2052
		mu 0 4 3924 3927 3926 3925
		f 4 2081 -2081 -2080 2078
		mu 0 4 3928 3931 3930 3929
		f 4 2079 2083 -2083 -2057
		mu 0 4 3932 3935 3934 3933
		f 4 2082 2085 -2085 -2028
		mu 0 4 3936 3939 3938 3937
		f 4 2084 -2087 -2082 2061
		mu 0 4 3940 3943 3942 3941
		f 4 2090 2089 -2089 -2088
		mu 0 4 3944 3947 3946 3945
		f 4 2088 2092 -2092 -2075
		mu 0 4 3948 3951 3950 3949
		f 4 2091 -2095 -2094 2037
		mu 0 4 3952 3955 3954 3953
		f 4 2093 -2096 -2091 2067
		mu 0 4 3956 3959 3958 3957
		f 4 2097 -1945 -2097 2080
		mu 0 4 3960 3963 3962 3961
		f 4 2096 2099 -2099 -2084
		mu 0 4 3964 3967 3966 3965
		f 4 2098 2101 -2101 -2086
		mu 0 4 3968 3971 3970 3969
		f 4 2100 -2103 -2098 2086
		mu 0 4 3972 3975 3974 3973
		f 4 2104 1968 -2104 -2090
		mu 0 4 3976 3979 3978 3977
		f 4 2103 2106 -2106 -2093
		mu 0 4 3980 3983 3982 3981
		f 4 2105 -2109 -2108 2094
		mu 0 4 3984 3987 3986 3985
		f 4 2107 -2110 -2105 2095
		mu 0 4 3988 3991 3990 3989
		f 4 -1942 2063 -2111 -2100
		mu 0 4 3992 3995 3994 3993
		f 4 2110 2064 -2112 -2102
		mu 0 4 3996 3999 3998 3997;
	setAttr ".fc[1000:1055]"
		f 4 2111 -2066 1946 2102
		mu 0 4 4000 4003 4002 4001
		f 4 -1966 2069 -2113 -2107
		mu 0 4 4004 4007 4006 4005
		f 4 2112 -2071 -2114 2108
		mu 0 4 4008 4011 4010 4009
		f 4 2113 -2072 1970 2109
		mu 0 4 4012 4015 4014 4013
		f 4 2116 -2004 -2116 2114
		mu 0 4 4016 4019 4018 4017
		f 4 2115 2004 -2118 -2010
		mu 0 4 4020 4023 4022 4021
		f 4 2118 -2007 -2117 2001
		mu 0 4 4024 4027 4026 4025
		f 4 2117 2121 -2121 -2120
		mu 0 4 4028 4031 4030 4029
		f 4 2120 2124 -2124 -2123
		mu 0 4 4032 4035 4034 4033
		f 4 2123 2041 -2127 -2126
		mu 0 4 4036 4039 4038 4037
		f 4 2128 -2044 -2119 2127
		mu 0 4 4040 4043 4042 4041
		f 4 2126 2048 -2131 -2130
		mu 0 4 4044 4047 4046 4045
		f 4 2132 -2051 -2129 2131
		mu 0 4 4048 4051 4050 4049
		f 4 2130 2057 -2134 -2063
		mu 0 4 4052 4055 4054 4053
		f 4 2133 -2059 -2135 2025
		mu 0 4 4056 4059 4058 4057
		f 4 2134 -2060 -2133 2055
		mu 0 4 4060 4063 4062 4061
		f 4 2137 2014 -2137 -2136
		mu 0 4 4064 4067 4066 4065
		f 4 2136 2015 -2139 -2022
		mu 0 4 4068 4071 4070 4069
		f 4 2139 -2018 -2138 2011
		mu 0 4 4072 4075 4074 4073
		f 4 2143 -2143 -2142 2140
		mu 0 4 4076 4079 4078 4077
		f 4 2141 -2146 -2140 2144
		mu 0 4 4080 4083 4082 4081
		f 4 2138 2045 -2148 -2147
		mu 0 4 4084 4087 4086 4085
		f 4 2149 -2048 -2144 2148
		mu 0 4 4088 4091 4090 4089
		f 4 2147 2051 -2152 -2151
		mu 0 4 4092 4095 4094 4093
		f 4 2153 -2054 -2150 2152
		mu 0 4 4096 4099 4098 4097
		f 4 2151 2075 -2155 -2069
		mu 0 4 4100 4103 4102 4101
		f 4 2154 2076 -2156 -2040
		mu 0 4 4104 4107 4106 4105
		f 4 2155 -2078 -2154 2073
		mu 0 4 4108 4111 4110 4109
		f 4 2157 2125 -2157 -2128
		mu 0 4 4112 4115 4114 4113
		f 4 2156 2129 -2159 -2132
		mu 0 4 4116 4119 4118 4117
		f 4 2158 -2061 -2079 2054
		mu 0 4 4120 4123 4122 4121
		f 4 2160 -2153 -2160 2150
		mu 0 4 4124 4127 4126 4125
		f 4 2159 -2149 -2162 2146
		mu 0 4 4128 4131 4130 4129
		f 4 2087 2072 -2161 -2067
		mu 0 4 4132 4135 4134 4133
		f 4 -1999 2008 -2163 -2003
		mu 0 4 4136 4139 4138 4137
		f 4 2162 2119 2122 -2158
		mu 0 4 4140 4143 4142 4141
		f 4 2023 2020 -2164 -2013
		mu 0 4 4144 4147 4146 4145
		f 4 2163 2161 -2141 -2145
		mu 0 4 4148 4151 4150 4149
		f 4 2165 -2029 -2165 2005
		mu 0 4 4152 4155 4154 4153
		f 4 2169 2168 -2168 -2167
		mu 0 4 4156 4159 4158 4157
		f 4 2171 2030 -2171 -2125
		mu 0 4 4160 4163 4162 4161
		f 4 2170 -2032 -2166 2040
		mu 0 4 4164 4167 4166 4165
		f 4 2173 2032 -2173 -2017
		mu 0 4 4168 4171 4170 4169
		f 4 2172 2033 -2175 -2045
		mu 0 4 4172 4175 4174 4173
		f 4 2174 -2035 -2176 2142
		mu 0 4 4176 4179 4178 4177
		f 4 2178 2177 -2177 -2122
		mu 0 4 4180 4183 4182 4181
		f 4 2176 2180 -2180 -2172
		mu 0 4 4184 4187 4186 4185
		f 4 2179 -2183 -2182 2029
		mu 0 4 4188 4191 4190 4189
		f 4 2181 -2184 -2179 2164
		mu 0 4 4192 4195 4194 4193
		f 4 2186 2185 -2185 2145
		mu 0 4 4196 4199 4198 4197
		f 4 2187 -2181 -2187 2175
		mu 0 4 4200 4203 4202 4201
		f 4 2188 2166 -2186 -2178
		mu 0 4 4204 4207 4206 4205
		f 4 2190 -2169 -2190 2182
		mu 0 4 4208 4211 4210 4209
		f 4 2189 -2170 -2189 2183
		mu 0 4 4212 4215 4214 4213
		f 4 -2174 2184 2167 -2192
		mu 0 4 4216 4219 4218 4217
		f 4 -2036 2191 -2191 -2188
		mu 0 4 4220 4223 4222 4221;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "environment_outer";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 341 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0019921251 0.99800807 0.0019921251
		 0.0019921251 0.99800783 0.99800807 0.0019921251 0.99800807 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921253
		 0.0019920066 0.99800807 0.0019920066 0.99800807 0.99800795 0.0019921253 0.99800795
		 0.99800783 0.49999997 0.0019920063 0.49999997 0.0019920063 0.0019920063 0.99800783
		 0.0019920063 0.99800807 0.99800795 0.0019921253 0.99800795 0.0019921253 0.0019920066
		 0.99800807 0.0019920066 0.0019921253 0.0019920066 0.99800807 0.0019920066 0.99800807
		 0.99800795 0.0019921253 0.99800795 0.99800807 0.99800795 0.0019921253 0.99800795
		 0.0019921253 0.0019920319 0.99800807 0.0019920319 0.0019920063 0.0019921251 0.99800771
		 0.0019921251 0.99800771 0.99800807 0.0019920063 0.99800807 0.0019921251 0.0019920063
		 0.99800795 0.0019920063 0.99800795 0.99800795 0.0019921251 0.99800795 0.0019920066
		 0.99800795 0.0019920066 0.0019920066 0.99800795 0.0019920066 0.99800795 0.99800795
		 0.99800783 0.49999997 0.0019920063 0.49999997 0.0019920063 0.0019920063 0.99800783
		 0.0019920063 0.0019920066 0.99800795 0.0019920066 0.0019920319 0.99800795 0.0019920319
		 0.99800795 0.99800795 0.0019921251 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.0019921251 0.99800807 0.0019920063 0.99800795 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.49999997
		 0.0019920319 0.49999997 0.99800783 0.5 0.49999991 0.99800795 0.0019920063 0.99800795
		 0.0019920063 0.5 0.0019918876 0.0019920063 0.9980076 0.0019920063 0.49999979 0.99800795
		 0.0019919469 0.99800795 0.0019921251 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.0019921251 0.99800807 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.99800771 0.99800795 0.0019918878 0.99800795 0.0019918878 0.0019920066 0.99800771
		 0.0019920066 0.0019920063 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063
		 0.49999997 0.0019920659 0.0019921253 0.99800795 0.0019921253 0.5 0.99800801 0.0019920489
		 0.99800801 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019920319 0.49999997 0.0019920063 0.99800795 0.0019920063
		 0.99800795 0.0019920063 0.99800795 0.0019920063 0.99800795 0.49999997 0.99800795
		 0.49999997 0.99800795 0.0019920063 0.5 0.0019921251 0.99800807 0.0019920063 0.99800795
		 0.0019920063 0.5 0.99800783 0.99800807 0.0019920063 0.99800795 0.0019920319 0.99800795
		 0.0019920319 0.99800795 0.0019920319 0.99800795 0.0019920319 0.99800795 0.0019920319
		 0.49999997 0.99800783 0.0019921251 0.0019920319 0.99800795 0.0019920319 0.49999997
		 0.99800783 0.99800807 0.0019920319 0.99800795 0.0019920319 0.49999997 0.50099599
		 0.00099600316 0.00099601597 0.00099600316 0.0019920191 0.49999997 0.25099599 0.24999999
		 0.0019920063 0.99800795 0.0019920191 0.99800795 0.49999997 0.99800795 0.0019920063
		 0.99800795 0.0019920063 0.5 0.0019920319 0.99800795 0.50099599 0.49900398 0.25099599
		 0.24999999 1 1 1 1 0.5 1 0.5 1 0 1 0.5 0.0019920063 0.5 0.0019920063 0.5 0.0019920063
		 0.5 0.00099600316 0.5 1 0.5 0.99800795 0.5 0.99800795 0.5 0.99800795 0.0019920319
		 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.0019920319 0.99800795 0.0019920319
		 0.49999997 0.5 0.49999997 0.5 0.99800795 0.0019920319 0.99800795 0.5 0.99800795 0.0019920319
		 0.99800795 0.0019920319 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.5 0.99800795
		 0.0019920319 0.99800795 0.5 0.99800795 0.5 0.49999997 0.5 0.0019920063 0.5 0.0019920063
		 0.5 0.0019920063 0.0019920315 0.0019921246 0.49999988 0.0019921246 0.49999988 0.99800807
		 0.0019920315 0.99800807 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.5 0.99800783 0.5 0.99800771 0.99800807 0.0019920315 0.99800807 0.0019920315 0.50000012
		 0.99800771 0.50000012 0.0019920319 0.0019920063 0.5 0.0019920063 0.5 0.99800795 0.0019920319
		 0.99800795 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317
		 0.49999997 0.0019920317 0.50000012 0.99800783 0.50000012 0.99800783 0.99800807 0.0019920317
		 0.99800807 0.99800783 0.99800795 0.0019920317 0.99800795 0.0019920317 0.49999997
		 0.99800783 0.49999997 0.0019920319 0.99800795 0.0019920319 0.0019920063 0.5 0.0019920063
		 0.5 0.99800795 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783
		 0.5 0.0019921251 0.5 0.99800795 0.5 0.99800795 0.99800795 0.0019921251 0.99800795
		 0.99800795 0.0019920063 0.99800795 0.49999997 0.0019921251 0.49999997 0.0019921251
		 0.0019920063 0.0019920063 0.0019920063 0.99800783 0.0019920063 0.99800783 0.49999997
		 0.0019920063 0.49999997 0.0019921251 0.5 0.99800807 0.5 0.99800807 0.99800795 0.0019921251
		 0.99800795 0.0019920319 0.49999997 0.0019920319 0.49999997 0.0019920319 0.49999997
		 0.0019920191 0.5 0.0019920063 0.5 0.0019920063 0.5 0.0019920063 0.99800795 0.0019920063
		 0.5 0.99800807 0.0019920063 0.99800807 0.49999997 0.0019921251 0.49999997 0.0019921251
		 0.0019920063 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783
		 0.5 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800783 0.5
		 0.99800795 0.99800795 0.0019920063 0.99800795 0.0019920063 0.5 0.99800795 0.5 0.0019920063
		 0.0019920063 0.99800783 0.0019920063 0.99800783 0.49999997 0.0019920063 0.49999997
		 0.0019919469 0.99800795 0.0019920319 0.49999997;
	setAttr ".uvst[0].uvsp[250:340]" 0.25099602 0.74900395 0.0019920319 0.49999997
		 0.0019920319 0.49999997 0.0019920063 0.0019921251 0.49999997 0.0019921251 0.49999997
		 0.99800807 0.0019920063 0.99800807 0.0019920063 0.49999997 0.99800783 0.49999997
		 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921251 0.49999997 0.99800795
		 0.49999997 0.99800795 0.99800795 0.0019921251 0.99800795 0.0019920063 0.49999997
		 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019920063
		 0.49999997 0.99800783 0.49999997 0.99800783 0.99800795 0.0019920063 0.99800795 0.0019921251
		 0.49999997 0.99800807 0.49999997 0.99800807 0.99800795 0.0019921251 0.99800795 0.49999997
		 0.99800795 0.49999997 0.99800795 0.49999997 0.99800795 0.0019921251 0.0019921251
		 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251 0.0019921251
		 0.0019921251 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251
		 0.99800783 0.99800807 0.99800783 0.0019921251 0.99800783 0.0019921251 0.99800783
		 0.99800807 0.99800783 0.99800807 0.99800783 0.0019921251 0.99800783 0.0019921251
		 0.99800783 0.99800807 0.0019921251 0.99800807 0.99800783 0.99800807 0.99800783 0.99800807
		 0.0019921251 0.99800807 0.0019921251 0.0019921251 0.0019921251 0.99800807 0.99800783
		 0.99800807 0.99800783 0.0019921251 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.99800783 0.0019921251 0.99800783 0.99800807 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.99800783 0.0019921251 0.99800783 0.99800807 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019919469
		 0.99800795 0.0019920063 0.99800795 0.99800783 0.99800807 0.0019921251 0.99800807
		 0.0019919469 0.99800795 0.0019920063 0.99800795 0.99800783 0.99800807 0.0019921251
		 0.99800807 0.0019919765 0.99800795 0.0019920063 0.99800795 0.0019920063 0.99800795
		 0.0019919765 0.99800795 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319
		 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063 0.0019920319 0.0019920063
		 0.0019920319 0.0019920063 0.0019919469 0.99800795 0.0019919469 0.99800795 0.0019919765
		 0.99800795 0.0019919765 0.99800795 0.0019919765 0.99800795 0.0019919469 0.99800795;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 207 ".vt";
	setAttr ".vt[0:165]"  -45 5 -6.5919492e-017 -45 15 -6.5919492e-017 -45 25 -6.5919492e-017
		 -45 35 -6.5919492e-017 -45 45 -6.5919492e-017 -35 45 4.510281e-017 -25 45 4.510281e-017
		 -15 45 -6.5919492e-017 -5 45 -6.5919492e-017 6.5919492e-017 45 -6.5919492e-017 -35 35 -1.110223e-016
		 -25 35 -9.7144515e-017 -15 35 -1.7694179e-016 -5 35 -1.5612511e-016 -5 25 -1.110223e-016
		 -15 25 0 -25 25 0 -25 15 0 -25 5 0 -35 5 -4.510281e-017 -35 15 -1.7694179e-016 -35 25 -2.0816682e-016
		 -15 5 -1.110223e-016 -5 5 0 -5 15 -1.110223e-016 -15 15 -2.220446e-016 -45 5 5 -45 6.5919492e-017 5
		 -5 5 5 -15 5 5 -5 5 25 -5 5 15 -5 15 15 -5 15 25 -15 15 5 -25 5 5 -25 15 5 -5 25 15
		 -5 25 25 -25 25 5 -15 25 5 -15 5 25 -15 5 15 -25 5 15 -5 15 5 -5 25 5 -25 5 25 -5 5 35
		 -5 5 45 -15 5 45 -15 5 35 -5 6.5919492e-017 45 -15 6.5919492e-017 45 -45 5 15 -45 6.5919492e-017 15
		 -35 5 5 -35 5 15 -5 35 5 -5 45 5 -5 45 15 -5 35 15 -5 15 35 -5 15 45 -45 15 5 -35 15 5
		 -15 45 5 -15 35 5 -5 25 35 -5 25 45 -25 5 45 -25 5 35 -25 -4.510281e-017 45 -45 25 5
		 -35 25 5 -45 5 25 -45 -4.510281e-017 25 -35 5 25 -5 45 25 -5 35 25 -25 45 5 -25 35 5
		 -5 35 35 -5 35 45 -35 5 45 -35 5 35 -35 -4.510281e-017 45 -45 35 5 -35 35 5 -45 5 35
		 -45 -4.510281e-017 35 -5 45 35 -35 45 5 -5 45 45 -45 45 5 -45 6.5919492e-017 45 -45 5 45
		 1.3183898e-016 5 45 1.3183898e-016 15 45 1.3183898e-016 25 45 1.3183898e-016 35 45
		 1.3183898e-016 45 45 1.3183898e-016 45 35 1.3183898e-016 45 25 1.3183898e-016 45 15
		 1.3183898e-016 45 5 2.220446e-016 25 5 3.1225023e-016 35 5 3.5388359e-016 35 15 4.1633363e-016 35 25
		 4.4408921e-016 35 35 4.1633363e-016 25 35 3.5388359e-016 15 35 3.1225023e-016 5 35
		 2.220446e-016 5 25 0 15 25 0 25 25 0 25 15 0 5 5 2.220446e-016 15 5 4.4408921e-016 15 15
		 2.220446e-016 5 15 -25 0 15 -25 0 5 -25 0 25 -15 0 25 -5 0 25 -5 4.510281e-017 35
		 -15 -6.5919492e-017 35 -25 -2.4286129e-017 35 -35 1.2143064e-016 35 -35 9.7144515e-017 25
		 -35 1.7694179e-016 15 -35 4.510281e-017 5 -5 1.110223e-016 15 -5 0 5 -15 2.220446e-016 15
		 -15 1.110223e-016 5 -15 15 15 -25 15 15 -25 15 25 -15 15 25 -15 25 15 -25 25 15 -25 25 25
		 -15 25 25 -15 15 35 -25 15 35 -15 25 35 -25 25 35 -15 15 45 -25 15 45 -15 25 45 -25 25 45
		 -35 15 15 -35 15 25 -35 25 25 -35 25 15 -45 15 15 -45 15 25 -45 25 25 -45 25 15 -15 35 15
		 -25 35 15 -25 35 25 -15 35 25 -15 45 15;
	setAttr ".vt[166:206]" -25 45 15 -25 45 25 -15 45 25 -15 5 55 -25 5 55 -15 15 55
		 -25 15 55 -15 5 65 -25 5 65 -15 15 65 -25 15 65 -25 0 55 -25 0 65 -15 0 65 -15 0 55
		 -55 5 15 -55 5 25 -55 15 25 -55 15 15 -65 5 15 -65 5 25 -65 15 25 -65 15 15 -65 0 15
		 -65 0 25 -55 0 25 -55 0 15 -5 5 55 -5 5 65 -5 0 65 -5 0 55 0 5 55 0 5 65 0 0 65 -55 5 5
		 -65 5 5 -55 0 5 -65 0 5 -65 0 0 -65 5 0 -55 5 0;
	setAttr -s 397 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 21 10 0 22 23 0 23 24 0 24 25 0 25 22 0 0 26 0 26 27 0 23 28 0 28 29 0 22 29 0 31 30 0
		 31 32 0 32 33 1 30 33 0 29 34 0 25 34 0 29 35 0 35 36 0 34 36 1 32 37 1 37 38 0 33 38 0
		 36 39 0 40 39 0 34 40 1 30 41 0 42 41 0 31 42 0 29 42 0 42 43 0 35 43 0 32 44 0 44 45 0
		 37 45 0 34 44 0 24 44 0 40 45 0 41 46 1 43 46 1 28 44 0 47 48 0 48 49 0 50 49 0 47 50 0
		 48 51 0 51 52 0 49 52 1 26 53 0 53 54 1 54 27 0 55 26 0 55 56 0 56 53 0 57 58 0 58 59 0
		 60 59 1 57 60 0 47 61 0 61 62 1 48 62 0 26 63 0 64 63 1 55 64 0 1 63 1 8 58 1 58 65 0
		 7 65 1 57 66 0 66 65 0 61 67 0 67 68 1 62 68 0 49 69 0 70 69 0 50 70 1 52 71 0 69 71 1
		 63 72 0 73 72 1 64 73 0 2 72 1 53 74 0 74 75 1 75 54 0 56 76 1 76 74 0 59 77 0 78 77 1
		 60 78 0 65 79 1 6 79 1 66 80 1 80 79 0 67 81 0 81 82 0 68 82 0 69 83 0 84 83 0 70 84 0
		 71 85 0 83 85 0 72 86 0 87 86 1 73 87 0 3 86 1 74 88 0 88 89 1 89 75 0 76 84 0 84 88 1
		 77 90 0 81 90 1 78 81 0 79 91 0 5 91 0 80 87 0 87 91 0 90 92 0 82 92 0 91 93 0 4 93 0
		 86 93 0 85 94 0 95 94 0 83 95 0 88 95 0 94 89 0 48 96 0 96 97 0 62 97 1 97 98 0 68 98 1
		 98 99 0 82 99 0 99 100 0 92 100 0 90 101 1 100 101 0 77 102 1 101 102 0 59 103 1
		 102 103 0 58 104 1 103 104 0 104 9 0 45 105 0;
	setAttr ".ed[166:331]" 45 57 0 57 106 0 105 106 0 106 107 0 60 107 1 107 108 0
		 78 108 1 108 109 0 81 109 0 67 110 1 109 110 0 61 111 1 110 111 0 47 112 0 111 112 0
		 30 113 0 112 113 0 30 47 0 33 114 1 113 114 0 38 115 0 114 115 0 37 116 1 115 116 0
		 116 105 0 28 117 0 44 118 0 117 118 0 118 119 0 32 119 0 31 120 0 119 120 0 28 31 0
		 120 117 0 43 121 1 122 121 0 35 122 0 121 123 0 46 123 0 41 124 1 123 124 0 30 125 0
		 124 125 0 125 126 0 47 126 0 126 127 0 50 127 1 127 128 0 70 128 1 128 129 0 84 129 0
		 76 130 1 129 130 0 56 131 1 130 131 0 55 132 0 131 132 0 132 122 0 35 55 0 31 133 0
		 134 133 0 28 134 0 42 135 0 133 135 0 29 136 0 135 136 0 136 134 0 11 80 1 10 87 0
		 12 66 1 13 57 0 14 45 0 15 40 1 16 39 0 17 36 1 18 35 0 19 55 0 20 64 1 21 73 1 42 137 0
		 43 138 0 137 138 1 46 139 0 138 139 0 41 140 0 140 139 0 137 140 1 137 141 0 138 142 1
		 141 142 1 139 143 0 142 143 0 140 144 1 144 143 0 141 144 1 140 145 0 139 146 0 145 146 0
		 144 147 0 145 147 1 143 148 0 147 148 1 146 148 1 145 149 1 146 150 1 149 150 0 147 151 0
		 149 151 0 148 152 0 151 152 0 150 152 0 138 153 0 139 154 0 153 154 0 143 155 0 154 155 1
		 142 156 0 156 155 1 153 156 1 153 157 1 154 158 1 157 158 0 155 159 0 158 159 0 156 160 0
		 160 159 0 157 160 0 69 150 1 70 146 0 49 149 1 50 145 0 74 158 1 53 157 1 76 154 0
		 56 153 0 141 161 0 142 162 0 161 162 0 143 163 0 162 163 1 144 164 0 164 163 1 161 164 1
		 161 165 0 162 166 1 165 166 1 163 167 0 166 167 0 164 168 0 168 167 0 165 168 0 79 166 0
		 65 165 0 66 161 0 80 162 0 49 169 0 69 170 0 169 170 0 149 171 0 169 171 1 150 172 0
		 171 172 1 170 172 1 169 173 0 170 174 1 173 174 1;
	setAttr ".ed[332:396]" 171 175 0 173 175 0 172 176 0 175 176 0 174 176 0 169 180 1
		 170 177 0 174 178 0 173 179 1 177 178 0 178 179 0 180 177 0 53 181 0 74 182 0 181 182 0
		 158 183 0 182 183 1 157 184 0 184 183 1 181 184 1 181 185 0 182 186 1 185 186 1 183 187 0
		 186 187 0 184 188 0 188 187 0 185 188 0 182 191 0 181 192 1 186 190 0 185 189 1 189 190 0
		 190 191 0 191 192 0 169 193 0 173 194 0 193 194 1 179 195 0 194 195 1 180 196 0 193 196 0
		 193 197 1 194 198 0 195 199 0 197 198 0 198 199 0 51 196 0 48 193 0 96 197 0 181 200 0
		 185 201 0 200 201 1 192 202 0 200 202 0 189 203 0 201 203 1 200 206 1 201 205 0 203 204 0
		 204 205 0 205 206 0 26 200 0 27 202 0 0 206 0;
	setAttr -s 175 -ch 700 ".fc[0:174]" -type "polyFaces" 
		f 4 29 -29 -28 -22
		mu 0 4 4 7 6 5
		f 4 33 -33 -32 30
		mu 0 4 8 11 10 9
		f 4 35 -35 -30 -25
		mu 0 4 12 15 14 13
		f 4 34 38 -38 -37
		mu 0 4 16 19 18 17
		f 4 41 -41 -40 32
		mu 0 4 20 23 22 21
		f 4 44 43 -43 -39
		mu 0 4 24 27 26 25
		f 4 47 46 -46 -31
		mu 0 4 28 31 30 29
		f 4 50 -50 -49 36
		mu 0 4 32 35 34 33
		f 4 53 -53 -52 39
		mu 0 4 36 39 38 37
		f 4 55 -55 -36 -24
		mu 0 4 40 43 42 41
		f 4 54 52 -57 -45
		mu 0 4 44 47 46 45
		f 4 311 313 -316 -317
		mu 0 4 1 0 116 113
		f 4 59 -56 -23 27
		mu 0 4 52 55 54 53
		f 4 63 62 -62 -61
		mu 0 4 56 59 58 57
		f 4 61 66 -66 -65
		mu 0 4 57 58 61 60
		f 4 -70 -69 -68 26
		mu 0 4 62 65 64 63
		f 4 67 -73 -72 70
		mu 0 4 66 69 68 67
		f 4 76 75 -75 -74
		mu 0 4 70 73 72 71
		f 4 79 -79 -78 60
		mu 0 4 57 75 74 56
		f 4 82 81 -81 -71
		mu 0 4 76 79 78 77
		f 4 80 -84 -1 25
		mu 0 4 63 82 81 80
		f 4 -8 86 -86 -85
		mu 0 4 83 86 85 84
		f 4 85 -89 -88 73
		mu 0 4 87 90 89 88
		f 4 91 -91 -90 78
		mu 0 4 75 92 91 74
		f 4 92 96 -96 -67
		mu 0 4 58 93 95 61
		f 4 99 98 -98 -82
		mu 0 4 96 99 98 97
		f 4 97 -101 -2 83
		mu 0 4 97 98 101 100
		f 4 -104 -103 -102 68
		mu 0 4 102 105 104 69
		f 4 108 107 -107 -76
		mu 0 4 108 111 110 109
		f 4 -7 110 -110 -87
		mu 0 4 112 115 114 90
		f 4 115 -115 -114 90
		mu 0 4 92 119 118 91
		f 4 118 117 -117 -94
		mu 0 4 94 121 120 93
		f 4 116 120 -120 -97
		mu 0 4 93 120 122 95
		f 4 123 122 -122 -99
		mu 0 4 99 124 123 98
		f 4 121 -125 -3 100
		mu 0 4 98 123 125 101
		f 4 -128 -127 -126 102
		mu 0 4 105 127 126 104
		f 4 125 -130 -129 105
		mu 0 4 104 126 121 107
		f 4 132 131 -131 -108
		mu 0 4 111 118 128 110
		f 4 -6 134 -134 -111
		mu 0 4 115 130 129 114
		f 4 133 -137 -136 112
		mu 0 4 114 129 124 117
		f 4 114 138 -138 -132
		mu 0 4 118 119 131 128
		f 4 -5 140 -140 -135
		mu 0 4 130 133 132 129
		f 4 141 -141 -4 124
		mu 0 4 123 132 133 125
		f 4 136 139 -142 -123
		mu 0 4 124 129 132 123
		f 4 144 143 -143 -121
		mu 0 4 120 135 134 122
		f 4 145 -145 -118 129
		mu 0 4 126 135 120 121
		f 4 -147 -144 -146 126
		mu 0 4 127 134 135 126
		f 4 -150 -80 147 148
		mu 0 4 137 75 57 136
		f 4 -152 -92 149 150
		mu 0 4 138 92 75 137
		f 4 -154 -116 151 152
		mu 0 4 139 119 92 138
		f 4 -156 -139 153 154
		mu 0 4 140 131 119 139
		f 4 137 155 157 -157
		mu 0 4 128 131 140 141
		f 4 130 156 159 -159
		mu 0 4 110 128 141 142
		f 4 106 158 161 -161
		mu 0 4 109 110 142 143
		f 4 74 160 163 -163
		mu 0 4 144 147 146 145
		f 4 84 162 164 -9
		mu 0 4 148 151 150 149
		f 4 168 -168 -167 165
		mu 0 4 152 155 154 153
		f 4 -171 -77 167 169
		mu 0 4 156 108 158 157
		f 4 -173 -109 170 171
		mu 0 4 159 111 108 156
		f 4 -175 -133 172 173
		mu 0 4 160 118 111 159
		f 4 113 174 176 -176
		mu 0 4 91 118 160 161
		f 4 89 175 178 -178
		mu 0 4 74 91 161 162
		f 4 77 177 180 -180
		mu 0 4 56 74 162 163
		f 4 183 179 182 -182
		mu 0 4 164 167 166 165
		f 4 181 185 -185 -34
		mu 0 4 168 171 170 169
		f 4 184 187 -187 -42
		mu 0 4 172 175 174 173
		f 4 186 189 -189 40
		mu 0 4 176 179 178 177
		f 4 -54 188 190 -166
		mu 0 4 180 183 182 181
		f 4 193 -193 -60 191
		mu 0 4 184 187 186 185
		f 4 -196 51 192 194
		mu 0 4 188 191 190 189
		f 4 195 197 -197 31
		mu 0 4 192 195 194 193
		f 4 196 199 -192 198
		mu 0 4 196 199 198 197
		f 4 202 201 -201 -51
		mu 0 4 200 203 202 201
		f 4 -205 -59 200 203
		mu 0 4 204 207 206 205
		f 4 57 204 206 -206
		mu 0 4 208 211 210 209
		f 4 205 208 -208 45
		mu 0 4 212 215 214 213
		f 4 -211 -184 207 209
		mu 0 4 216 219 218 217
		f 4 -213 -64 210 211
		mu 0 4 220 59 56 221
		f 4 -215 -95 212 213
		mu 0 4 222 94 59 220
		f 4 -217 -119 214 215
		mu 0 4 223 121 94 222
		f 4 128 216 218 -218
		mu 0 4 107 121 223 224
		f 4 104 217 220 -220
		mu 0 4 68 107 224 225
		f 4 71 219 222 -222
		mu 0 4 226 68 225 227
		f 4 224 221 223 -203
		mu 0 4 228 231 230 229
		f 4 227 226 -226 -199
		mu 0 4 232 235 234 233
		f 4 225 229 -229 -48
		mu 0 4 236 239 238 237
		f 4 228 231 -231 48
		mu 0 4 240 243 242 241
		f 4 230 232 -228 28
		mu 0 4 244 247 246 245
		f 4 135 -235 9 233
		mu 0 4 117 124 250 249
		f 4 111 -234 10 235
		mu 0 4 89 117 249 251
		f 4 87 -236 11 236
		mu 0 4 158 89 251 252
		f 4 166 -237 12 237
		mu 0 4 253 256 255 254
		f 4 238 56 -238 13
		mu 0 4 257 260 259 258
		f 4 239 -44 -239 14
		mu 0 4 261 264 263 262
		f 4 240 42 -240 15
		mu 0 4 265 268 267 266
		f 4 241 37 -241 16
		mu 0 4 269 272 271 270
		f 4 242 -225 -242 17
		mu 0 4 273 276 275 274
		f 4 243 -83 -243 18
		mu 0 4 277 96 226 278
		f 4 244 -100 -244 19
		mu 0 4 279 99 96 277
		f 4 234 -124 -245 20
		mu 0 4 250 124 99 279
		f 4 49 246 -248 -246
		mu 0 4 48 51 281 280
		f 4 58 248 -250 -247
		mu 0 4 51 50 282 281
		f 4 -58 250 251 -249
		mu 0 4 50 49 283 282
		f 4 -47 245 252 -251
		mu 0 4 49 48 280 283
		f 4 247 254 -256 -254
		mu 0 4 280 281 285 284
		f 4 287 289 -292 -293
		mu 0 4 3 2 106 103
		f 4 -272 273 275 -277
		mu 0 4 292 293 294 295
		f 4 -253 253 260 -259
		mu 0 4 283 280 284 287
		f 4 -252 261 263 -263
		mu 0 4 282 283 289 288
		f 4 258 264 -266 -262
		mu 0 4 283 287 290 289
		f 4 259 266 -268 -265
		mu 0 4 287 286 291 290
		f 4 -257 262 268 -267
		mu 0 4 286 282 288 291
		f 4 265 272 -274 -270
		mu 0 4 289 290 294 293
		f 4 267 274 -276 -273
		mu 0 4 290 291 295 294
		f 4 -269 270 276 -275
		mu 0 4 291 288 292 295
		f 4 249 278 -280 -278
		mu 0 4 281 282 297 296
		f 4 256 280 -282 -279
		mu 0 4 282 286 298 297
		f 4 -258 282 283 -281
		mu 0 4 286 285 299 298
		f 4 -255 277 284 -283
		mu 0 4 285 281 296 299
		f 4 281 288 -290 -287
		mu 0 4 297 298 106 2
		f 4 -284 290 291 -289
		mu 0 4 298 299 103 106
		f 4 -285 285 292 -291
		mu 0 4 299 296 3 103
		f 4 93 293 -271 -295
		mu 0 4 94 93 292 288
		f 4 -332 333 335 -337
		mu 0 4 308 309 310 311
		f 4 94 294 -264 -297
		mu 0 4 59 94 288 289
		f 4 -63 296 269 -296
		mu 0 4 58 59 289 293
		f 4 354 356 -359 -360
		mu 0 4 320 321 322 323
		f 4 -106 299 286 -298
		mu 0 4 104 107 297 2
		f 4 -105 300 279 -300
		mu 0 4 107 68 296 297
		f 4 72 298 -286 -301
		mu 0 4 68 69 3 296
		f 4 255 302 -304 -302
		mu 0 4 284 285 301 300
		f 4 257 304 -306 -303
		mu 0 4 285 286 302 301
		f 4 -260 306 307 -305
		mu 0 4 286 287 303 302
		f 4 -261 301 308 -307
		mu 0 4 287 284 300 303
		f 4 305 312 -314 -311
		mu 0 4 301 302 116 0
		f 4 -308 314 315 -313
		mu 0 4 302 303 113 116
		f 4 -309 309 316 -315
		mu 0 4 303 300 1 113
		f 4 109 317 -312 -319
		mu 0 4 90 114 0 1
		f 4 -112 319 303 -321
		mu 0 4 117 89 300 301
		f 4 -113 320 310 -318
		mu 0 4 114 117 301 0
		f 4 318 -310 -320 88
		mu 0 4 90 1 300 89
		f 4 -93 321 323 -323
		mu 0 4 93 58 305 304
		f 4 295 324 -326 -322
		mu 0 4 58 293 306 305
		f 4 271 326 -328 -325
		mu 0 4 293 292 307 306
		f 4 -294 322 328 -327
		mu 0 4 292 93 304 307
		f 4 325 332 -334 -330
		mu 0 4 305 306 310 309
		f 4 327 334 -336 -333
		mu 0 4 306 307 311 310
		f 4 -329 330 336 -335
		mu 0 4 307 304 308 311
		f 4 -324 337 343 -339
		mu 0 4 304 305 315 312
		f 4 -331 338 341 -340
		mu 0 4 308 304 312 313
		f 4 331 339 342 -341
		mu 0 4 309 308 313 314
		f 4 101 345 -347 -345
		mu 0 4 69 104 317 316
		f 4 297 347 -349 -346
		mu 0 4 104 2 318 317
		f 4 -288 349 350 -348
		mu 0 4 2 3 319 318
		f 4 -299 344 351 -350
		mu 0 4 3 69 316 319
		f 4 348 355 -357 -354
		mu 0 4 317 318 322 321
		f 4 -351 357 358 -356
		mu 0 4 318 319 323 322
		f 4 -352 352 359 -358
		mu 0 4 319 316 320 323
		f 4 346 360 366 -362
		mu 0 4 316 317 326 327
		f 4 353 362 365 -361
		mu 0 4 317 321 325 326
		f 4 -355 363 364 -363
		mu 0 4 321 320 324 325
		f 4 329 368 -370 -368
		mu 0 4 305 309 329 328
		f 4 340 370 -372 -369
		mu 0 4 309 314 330 329
		f 4 -338 367 373 -373
		mu 0 4 315 305 328 331
		f 4 369 375 -378 -375
		mu 0 4 328 329 333 332
		f 4 371 376 -379 -376
		mu 0 4 329 330 334 333
		f 4 64 379 -374 -381
		mu 0 4 57 60 331 328
		f 4 -148 380 374 -382
		mu 0 4 136 57 328 332
		f 4 -353 382 384 -384
		mu 0 4 320 316 336 335
		f 4 361 385 -387 -383
		mu 0 4 316 327 337 336
		f 4 -364 383 388 -388
		mu 0 4 324 320 335 338
		f 4 -389 390 -393 -392
		mu 0 4 338 335 340 339
		f 4 -385 389 -394 -391
		mu 0 4 335 336 248 340
		f 4 -27 394 386 -396
		mu 0 4 62 63 336 337
		f 4 -26 396 -390 -395
		mu 0 4 63 80 248 336;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 9;
	setAttr -s 10 ".dli[1:9]"  1 2 3 4 5 6 7 8 
		9;
	setAttr -s 6 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "gridpath:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 20 -size 200 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "gridpath:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode shadingEngine -n "gridpath:lightFogSE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "gridpath:materialInfo1";
createNode shadingEngine -n "gridpath:lightFogSE1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "gridpath:materialInfo2";
createNode shadingEngine -n "gridpath:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "gridpath:materialInfo3";
createNode noise -n "gridpath:noise1";
	setAttr ".a" 0.14596273005008698;
	setAttr ".ra" 0.80124223232269287;
	setAttr ".dm" 8;
	setAttr ".fq" 441.4078369140625;
	setAttr ".fr" 10;
	setAttr ".nty" 3;
createNode place2dTexture -n "gridpath:place2dTexture1";
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode noise -n "noise1";
	setAttr ".a" 0.14596273005008698;
	setAttr ".ra" 0.80124223232269287;
	setAttr ".dm" 8;
	setAttr ".fq" 441.4078369140625;
	setAttr ".fr" 10;
	setAttr ".nty" 3;
createNode place2dTexture -n "place2dTexture1";
createNode displayLayer -n "pointsLayer";
	setAttr ".do" 1;
createNode objectSet -n "horizontal";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr -s 3 ".gn";
createNode objectSet -n "vertical";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr -s 3 ".gn";
createNode objectSet -n "frontback";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr -s 3 ".gn";
createNode objectSet -n "sides";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
	setAttr -s 3 ".gn";
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -444.04761904761915 -350 ;
	setAttr ".vh" -type "double2" 641.66666666666663 278.57142857142861 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".anf" yes;
createNode ramp -n "ramp1";
	setAttr ".t" 2;
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 1 0 0 ;
	setAttr ".cel[1].ep" 0.5;
	setAttr ".cel[1].ec" -type "float3" 0 1 0 ;
	setAttr ".cel[2].ep" 1;
	setAttr ".cel[2].ec" -type "float3" 0 0 1 ;
createNode place2dTexture -n "place2dTexture2";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture3";
	setAttr ".re" -type "float2" 4 4 ;
createNode layeredTexture -n "layeredTexture1";
	setAttr -s 2 ".cs";
	setAttr ".cs[0].a" 1;
	setAttr ".cs[0].bm" 7;
	setAttr ".cs[0].iv" yes;
	setAttr ".cs[1].a" 0.1617647111415863;
	setAttr ".cs[1].bm" 1;
	setAttr ".cs[1].iv" yes;
createNode surfaceShader -n "surfaceShader1";
createNode shadingEngine -n "surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode displayLayer -n "envMidLayer";
	setAttr ".do" 3;
createNode displayLayer -n "envOuterLayer";
	setAttr ".do" 2;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode displayLayer -n "envInnerLayer";
	setAttr ".do" 4;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode polyMirror -n "polyMirror2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 7.3205330686221259e-016 22.5 -22.5 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 21 "f[0:1]" "f[4]" "f[9]" "f[17]" "f[19]" "f[24]" "f[26]" "f[28]" "f[31]" "f[37:41]" "f[43:45]" "f[49]" "f[58:60]" "f[62]" "f[74]" "f[76]" "f[79]" "f[81]" "f[83]" "f[86]" "f[101:102]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 21 "f[2:3]" "f[5:8]" "f[10:16]" "f[18]" "f[20:23]" "f[25]" "f[27]" "f[29:30]" "f[32:36]" "f[42]" "f[46:48]" "f[50:57]" "f[61]" "f[63:73]" "f[75]" "f[77:78]" "f[80]" "f[82]" "f[84:85]" "f[87:100]" "f[103:104]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 22 "f[2]" "f[7]" "f[10]" "f[12:13]" "f[20:21]" "f[27]" "f[30]" "f[33:36]" "f[42]" "f[46:48]" "f[57]" "f[66]" "f[68]" "f[70]" "f[72]" "f[82]" "f[84:85]" "f[87]" "f[91]" "f[93:94]" "f[96]" "f[99]";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 28 "f[3]" "f[5:6]" "f[8]" "f[11]" "f[14:16]" "f[18]" "f[22:23]" "f[25]" "f[29]" "f[32]" "f[50]" "f[54:56]" "f[61]" "f[63:65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77:78]" "f[80]" "f[88]" "f[90]" "f[92]" "f[95]" "f[97:98]" "f[100]" "f[103:104]";
createNode polyMirror -n "polyMirror3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 -1.7520707107365752e-015 -22.5 ;
	setAttr ".d" 3;
	setAttr ".mm" 1;
createNode polyMirror -n "polyMirror4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 0 1.1969591984239969e-015 ;
	setAttr ".d" 4;
	setAttr ".mm" 1;
createNode displayLayer -n "connectionsLayer";
	setAttr ".do" 5;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pointsLayer.di" "pointsInnerGRP.do";
connectAttr "connectionsLayer.di" "connectorsInnerGRP.do";
connectAttr "envInnerLayer.di" "environment_inner.do";
connectAttr "groupId33.id" "environment_innerShape.iog.og[0].gid";
connectAttr "horizontal.mwc" "environment_innerShape.iog.og[0].gco";
connectAttr "groupId34.id" "environment_innerShape.iog.og[1].gid";
connectAttr "vertical.mwc" "environment_innerShape.iog.og[1].gco";
connectAttr "groupId35.id" "environment_innerShape.iog.og[2].gid";
connectAttr "frontback.mwc" "environment_innerShape.iog.og[2].gco";
connectAttr "groupId36.id" "environment_innerShape.iog.og[3].gid";
connectAttr "sides.mwc" "environment_innerShape.iog.og[3].gco";
connectAttr "envMidLayer.di" "environment_mid.do";
connectAttr "groupId37.id" "environment_midShape.iog.og[0].gid";
connectAttr "horizontal.mwc" "environment_midShape.iog.og[0].gco";
connectAttr "groupId38.id" "environment_midShape.iog.og[1].gid";
connectAttr "vertical.mwc" "environment_midShape.iog.og[1].gco";
connectAttr "groupId39.id" "environment_midShape.iog.og[2].gid";
connectAttr "frontback.mwc" "environment_midShape.iog.og[2].gco";
connectAttr "groupId40.id" "environment_midShape.iog.og[3].gid";
connectAttr "sides.mwc" "environment_midShape.iog.og[3].gco";
connectAttr "polyMirror4.out" "environment_midShape.i";
connectAttr "envOuterLayer.di" "environment_outer.do";
connectAttr "groupId25.id" "environment_outerShape.iog.og[0].gid";
connectAttr "horizontal.mwc" "environment_outerShape.iog.og[0].gco";
connectAttr "groupId26.id" "environment_outerShape.iog.og[1].gid";
connectAttr "vertical.mwc" "environment_outerShape.iog.og[1].gco";
connectAttr "groupId27.id" "environment_outerShape.iog.og[2].gid";
connectAttr "frontback.mwc" "environment_outerShape.iog.og[2].gco";
connectAttr "groupId28.id" "environment_outerShape.iog.og[3].gid";
connectAttr "sides.mwc" "environment_outerShape.iog.og[3].gco";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "gridpath:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gridpath:lightFogSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gridpath:lightFogSE1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gridpath:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "gridpath:lightFogSE.msg" "gridpath:materialInfo1.sg";
connectAttr "gridpath:lightFogSE1.msg" "gridpath:materialInfo2.sg";
connectAttr "gridpath:phong1SG.msg" "gridpath:materialInfo3.sg";
connectAttr "gridpath:place2dTexture1.o" "gridpath:noise1.uv";
connectAttr "gridpath:place2dTexture1.ofs" "gridpath:noise1.fs";
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "place2dTexture1.o" "noise1.uv";
connectAttr "place2dTexture1.ofs" "noise1.fs";
connectAttr "layerManager.dli[4]" "pointsLayer.id";
connectAttr "groupId25.msg" "horizontal.gn" -na;
connectAttr "groupId33.msg" "horizontal.gn" -na;
connectAttr "groupId37.msg" "horizontal.gn" -na;
connectAttr "environment_outerShape.iog.og[0]" "horizontal.dsm" -na;
connectAttr "environment_innerShape.iog.og[0]" "horizontal.dsm" -na;
connectAttr "environment_midShape.iog.og[0]" "horizontal.dsm" -na;
connectAttr "groupId26.msg" "vertical.gn" -na;
connectAttr "groupId34.msg" "vertical.gn" -na;
connectAttr "groupId38.msg" "vertical.gn" -na;
connectAttr "environment_outerShape.iog.og[1]" "vertical.dsm" -na;
connectAttr "environment_innerShape.iog.og[1]" "vertical.dsm" -na;
connectAttr "environment_midShape.iog.og[1]" "vertical.dsm" -na;
connectAttr "groupId27.msg" "frontback.gn" -na;
connectAttr "groupId35.msg" "frontback.gn" -na;
connectAttr "groupId39.msg" "frontback.gn" -na;
connectAttr "environment_outerShape.iog.og[2]" "frontback.dsm" -na;
connectAttr "environment_innerShape.iog.og[2]" "frontback.dsm" -na;
connectAttr "environment_midShape.iog.og[2]" "frontback.dsm" -na;
connectAttr "groupId28.msg" "sides.gn" -na;
connectAttr "groupId36.msg" "sides.gn" -na;
connectAttr "groupId40.msg" "sides.gn" -na;
connectAttr "environment_outerShape.iog.og[3]" "sides.dsm" -na;
connectAttr "environment_innerShape.iog.og[3]" "sides.dsm" -na;
connectAttr "environment_midShape.iog.og[3]" "sides.dsm" -na;
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "place2dTexture2.o" "ramp1.uv";
connectAttr "place2dTexture2.ofs" "ramp1.fs";
connectAttr "place2dTexture3.o" "checker1.uv";
connectAttr "place2dTexture3.ofs" "checker1.fs";
connectAttr "ramp1.oc" "layeredTexture1.cs[0].c";
connectAttr "checker1.oc" "layeredTexture1.cs[1].c";
connectAttr "layeredTexture1.oc" "surfaceShader1.oc";
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "surfaceShader1SG.msg" "materialInfo4.sg";
connectAttr "surfaceShader1.msg" "materialInfo4.m";
connectAttr "surfaceShader1.msg" "materialInfo4.t" -na;
connectAttr "layerManager.dli[6]" "envMidLayer.id";
connectAttr "layerManager.dli[7]" "envOuterLayer.id";
connectAttr "layerManager.dli[8]" "envInnerLayer.id";
connectAttr "groupParts4.og" "polyMirror2.ip";
connectAttr "environment_midShape.wm" "polyMirror2.mp";
connectAttr "polySurfaceShape3.o" "groupParts1.ig";
connectAttr "groupId37.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId38.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId39.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId40.id" "groupParts4.gi";
connectAttr "polyMirror2.out" "polyMirror3.ip";
connectAttr "environment_midShape.wm" "polyMirror3.mp";
connectAttr "polyMirror3.out" "polyMirror4.ip";
connectAttr "environment_midShape.wm" "polyMirror4.mp";
connectAttr "layerManager.dli[9]" "connectionsLayer.id";
connectAttr "gridpath:lightFogSE.pa" ":renderPartition.st" -na;
connectAttr "gridpath:lightFogSE1.pa" ":renderPartition.st" -na;
connectAttr "gridpath:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "environment_midShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "environment_outerShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "environment_innerShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "gridpath:noise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "noise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "layeredTexture1.msg" ":defaultTextureList1.tx" -na;
connectAttr "gridpath:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of pathenvironment.ma
