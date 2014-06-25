//Maya ASCII 2014 scene
//Name: pathenvironment.ma
//Last modified: Wed, Jun 25, 2014 05:25:24 PM
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
	setAttr ".t" -type "double3" -141.62383939358801 183.10120212163645 81.045943075530502 ;
	setAttr ".r" -type "double3" -48.921846630948785 298.20000000001431 -1.3461219060108303e-014 ;
	setAttr ".rp" -type "double3" -2.7935383076216873e-015 9.5077376487345194e-015 0 ;
	setAttr ".rpt" -type "double3" -2.1555583202435408e-013 -9.4923410950144217e-015 
		-3.4864284424428676e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 235.98329243296914;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.7053025658242404e-013 -6.2527760746888816e-013 1.1368683772161603e-013 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.151199275114262 200.10000000000002 33.558629601292523 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 200.10000000000002;
	setAttr ".ow" 495.52800656587175;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 200.10000000000002 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 200.10000000000002;
	setAttr ".ow" 222.23038486568529;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 200.10000000000002 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 200.10000000000002;
	setAttr ".ow" 250.27059171401262;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "environmentGRP";
createNode transform -n "environment" -p "environmentGRP";
createNode mesh -n "environmentShape" -p "environment";
	setAttr -k off ".v";
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
createNode transform -n "pointsGRP" -p "environmentGRP";
createNode transform -n "pt_2" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 0 -20 ;
createNode locator -n "pt_2Shape" -p "pt_2";
	setAttr -k off ".v";
createNode transform -n "pt_3" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 20 0 ;
createNode locator -n "pt_Shape3" -p "pt_3";
	setAttr -k off ".v";
createNode transform -n "pt_4" -p "pointsGRP";
	setAttr ".t" -type "double3" 20 20 0 ;
createNode locator -n "pt_Shape4" -p "pt_4";
	setAttr -k off ".v";
createNode transform -n "pt_5" -p "pointsGRP";
	setAttr ".t" -type "double3" 20 0 0 ;
createNode locator -n "pt_Shape5" -p "pt_5";
	setAttr -k off ".v";
createNode transform -n "pt_6" -p "pointsGRP";
	setAttr ".t" -type "double3" 20 -20 0 ;
createNode locator -n "pt_Shape6" -p "pt_6";
	setAttr -k off ".v";
createNode transform -n "pt_7" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 -20 0 ;
createNode locator -n "pt_Shape7" -p "pt_7";
	setAttr -k off ".v";
createNode transform -n "pt_8" -p "pointsGRP";
	setAttr ".t" -type "double3" -20 -20 0 ;
createNode locator -n "pt_Shape8" -p "pt_8";
	setAttr -k off ".v";
createNode transform -n "pt_9" -p "pointsGRP";
	setAttr ".t" -type "double3" -20 0 0 ;
createNode locator -n "pt_Shape9" -p "pt_9";
	setAttr -k off ".v";
createNode transform -n "pt_10" -p "pointsGRP";
	setAttr ".t" -type "double3" -20 20 0 ;
createNode locator -n "pt_Shape10" -p "pt_10";
	setAttr -k off ".v";
createNode transform -n "pt_11" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 -20 -20 ;
createNode locator -n "pt_Shape11" -p "pt_11";
	setAttr -k off ".v";
createNode transform -n "pt_12" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 -20 20 ;
createNode locator -n "pt_Shape12" -p "pt_12";
	setAttr -k off ".v";
createNode transform -n "pt_13" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 0 20 ;
createNode locator -n "pt_Shape13" -p "pt_13";
	setAttr -k off ".v";
createNode transform -n "pt_14" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 20 20 ;
createNode locator -n "pt_Shape14" -p "pt_14";
	setAttr -k off ".v";
createNode transform -n "pt_15" -p "pointsGRP";
	setAttr ".t" -type "double3" 0 20 -20 ;
createNode locator -n "pt_Shape15" -p "pt_15";
	setAttr -k off ".v";
createNode transform -n "pt_16" -p "pointsGRP";
	setAttr ".t" -type "double3" -20 0 -20 ;
createNode locator -n "pt_Shape16" -p "pt_16";
	setAttr -k off ".v";
createNode transform -n "pt_17" -p "pointsGRP";
	setAttr ".t" -type "double3" -20 0 20 ;
createNode locator -n "pt_Shape17" -p "pt_17";
	setAttr -k off ".v";
createNode transform -n "pt_18" -p "pointsGRP";
	setAttr ".t" -type "double3" 20 0 20 ;
createNode locator -n "pt_Shape18" -p "pt_18";
	setAttr -k off ".v";
createNode transform -n "pt_19" -p "pointsGRP";
	setAttr ".t" -type "double3" 20 0 -20 ;
createNode locator -n "pt_Shape19" -p "pt_19";
	setAttr -k off ".v";
createNode transform -n "connectionsGRP_0" -p "environmentGRP";
	setAttr ".v" no;
createNode transform -n "pCube30" -p "connectionsGRP_0";
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
createNode transform -n "pCube31" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" -20 0 0 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" -20 0 -20 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34" -p "connectionsGRP_0";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube35" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" -20 0 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape35" -p "pCube35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube36" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" -20 20 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube37" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" 0 20 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape37" -p "pCube37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube38" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" 0 20 0 ;
	setAttr ".r" -type "double3" 90.000000000000554 -90 9.73367261275552e-014 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape38" -p "pCube38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube39" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" 0 20 -20 ;
	setAttr ".r" -type "double3" 90.000000000000554 -90 9.73367261275552e-014 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape39" -p "pCube39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube40" -p "connectionsGRP_0";
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr ".r" -type "double3" 90.000000000000554 -90 9.73367261275552e-014 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape40" -p "pCube40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube41" -p "connectionsGRP_0";
	setAttr ".r" -type "double3" 90.000000000000554 -90 9.73367261275552e-014 ;
	setAttr ".s" -type "double3" 11.177426804705616 11.177426804705616 11.177426804705616 ;
createNode mesh -n "pCubeShape41" -p "pCube41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.49999997 -0.5 1.2893206 
		1.2893206 -0.49999997 1.2893206 0.49999994 -0.49999997 0.5 1.2893206 -0.49999997 
		0.49999997;
	setAttr -s 4 ".vt[0:3]"  -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "connectionsGRP_1" -p "environmentGRP";
	setAttr ".v" no;
createNode transform -n "pCube1" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -10 0 1.8829382497642655e-013 ;
	setAttr ".rpt" -type "double3" 19.999999999999805 0 -20.000000000000188 ;
	setAttr ".sp" -type "double3" -10 0 1.8829382497642655e-013 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -9.9999999999998046 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -10 0 1.8829382497642655e-013 ;
	setAttr ".rpt" -type "double3" 19.999999999999805 0 -20.000000000000188 ;
	setAttr ".sp" -type "double3" -10 0 1.8829382497642655e-013 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -9.9999999999998046 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 10.000000000000002 0 7.1054273576010019e-015 ;
	setAttr ".rpt" -type "double3" -20.000000000000199 0 -19.999999999999826 ;
	setAttr ".sp" -type "double3" 10.000000000000002 0 7.1054273576010019e-015 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -9.9999999999998046 0 40 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -10 0 1.8829382497642655e-013 ;
	setAttr ".rpt" -type "double3" 19.999999999999805 0 -20.000000000000188 ;
	setAttr ".sp" -type "double3" -10 0 1.8829382497642655e-013 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10.000000000000195 0 40 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -10 0 1.8829382497642655e-013 ;
	setAttr ".rpt" -type "double3" 19.999999999999805 0 -20.000000000000188 ;
	setAttr ".sp" -type "double3" -10 0 1.8829382497642655e-013 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 20 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 0 20 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 20 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 20 20 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 20 0 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 20 0 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 -20 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 -20 20 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 10 0 0 ;
	setAttr ".sp" -type "double3" 10 0 0 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10 -20 0 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 -20 0 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 -20 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 20 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 -20 20 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 0 -19.999999999999812 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 10 -20 -19.999999999999812 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10.000000000000014 -20 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" -10.000000000000014 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 30 -20 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29" -p "connectionsGRP_1";
	setAttr ".t" -type "double3" 30 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -10 0 0 ;
	setAttr ".sp" -type "double3" -10 0 0 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.25 0 0.375 0.875
		 0.625 0.875 0.75 0 0.25 0.125 0.75 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -10 -0.5 0 10 -0.5 0 -10 0 0 10 0 0;
	setAttr -s 4 ".ed[0:3]"  0 2 1 1 0 1 2 3 1 3 1 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 2 0 4 5
		f 4 -3 -1 -2 -4
		mu 0 4 5 4 1 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "connectionsGRP" -p "environmentGRP";
	setAttr ".v" no;
createNode transform -n "pCube42" -p "connectionsGRP";
	setAttr ".t" -type "double3" 0 10 -10 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
createNode mesh -n "pCubeShape42" -p "pCube42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube43" -p "connectionsGRP";
	setAttr ".t" -type "double3" 0 10 10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape43" -p "pCube43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube44" -p "connectionsGRP";
	setAttr ".t" -type "double3" 0 -10 10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape44" -p "pCube44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube45" -p "connectionsGRP";
	setAttr ".t" -type "double3" 0 -10 -10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape45" -p "pCube45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube46" -p "connectionsGRP";
	setAttr ".t" -type "double3" 10 10 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape46" -p "pCube46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube47" -p "connectionsGRP";
	setAttr ".t" -type "double3" -10 10 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape47" -p "pCube47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube48" -p "connectionsGRP";
	setAttr ".t" -type "double3" -10 -10 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape48" -p "pCube48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube49" -p "connectionsGRP";
	setAttr ".t" -type "double3" 10 -10 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape49" -p "pCube49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube50" -p "connectionsGRP";
	setAttr ".t" -type "double3" -10 0 10 ;
	setAttr ".r" -type "double3" 89.999999999999687 180 89.999999999999631 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape50" -p "pCube50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube51" -p "connectionsGRP";
	setAttr ".t" -type "double3" 10 0 10 ;
	setAttr ".r" -type "double3" 89.999999999999687 180 89.999999999999631 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape51" -p "pCube51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube52" -p "connectionsGRP";
	setAttr ".t" -type "double3" 10 0 -10 ;
	setAttr ".r" -type "double3" 89.999999999999687 180 89.999999999999631 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape52" -p "pCube52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube53" -p "connectionsGRP";
	setAttr ".t" -type "double3" -10 0 -10 ;
	setAttr ".r" -type "double3" 89.999999999999687 180 89.999999999999631 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode mesh -n "pCubeShape53" -p "pCube53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.5625 0
		 0.375 0.25 0.5625 0.25 0.375 0.5 0.5625 0.5 0.375 0.75 0.5625 0.75 0.375 1 0.5625
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.019471645 -0.5 0.5 0 -0.5 0.5 -0.019471645 0.5 0.5
		 0 0.5 0.5 -0.019471645 0.5 -0.5 0 0.5 -0.5 -0.019471645 -0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "connectionsGRP_2" -p "environmentGRP";
	setAttr ".v" no;
createNode transform -n "nurbsSquare12" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" -10 -10 0 ;
	setAttr ".r" -type "double3" 90 -9.5416640443905503e-015 89.999999999999957 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare12";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare12|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare12";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare12|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare12";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare12|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare12";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare12|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare11" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 10 -10 0 ;
	setAttr ".r" -type "double3" 90 -9.5416640443905503e-015 89.999999999999957 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare11";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare11|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare11";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare11|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare11";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare11|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare11";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare11|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare10" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 10 10 0 ;
	setAttr ".r" -type "double3" 90 -9.5416640443905503e-015 89.999999999999957 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare10";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare10|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare10";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare10|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare10";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare10|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare10";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare10|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare9" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" -10 10 0 ;
	setAttr ".r" -type "double3" 90 -9.5416640443905503e-015 89.999999999999957 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare9";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare9|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare9";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare9|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare9";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare9|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare9";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare9|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare8" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 0 -10 -10 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare8";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare8|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare8";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare8|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare8";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare8|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare8";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare8|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare7" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 0 -10 10 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare7";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare7|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare7";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare7|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare7";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare7|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare7";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare7|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare6" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 0 10 10 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare6";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare6|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare6";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare6|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare6";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare6|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare6";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare6|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare5" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 0 10 -10 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare5";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare5|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare5";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare5|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare5";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare5|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare5";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare5|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare4" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 10 0 -10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare4";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare4|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare4";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare4|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare4";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare4|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare4";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare4|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare3" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" -10 0 -10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare3";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare3|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare3";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare3|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare3";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare3|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare3";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare3|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare2" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" 10 0 10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare2";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare2|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 0.5
		0.1666666666666668 0 0.5
		-0.16666666666666652 0 0.5
		-0.49999999999999983 0 0.5
		;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare2";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare2|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 0.5
		-0.49999999999999989 0 0.16666666666666669
		-0.49999999999999989 0 -0.16666666666666663
		-0.49999999999999989 0 -0.49999999999999994
		;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare2";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare2|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-0.49999999999999989 0 -0.5
		-0.16666666666666657 0 -0.5
		0.16666666666666674 0 -0.5
		0.5 0 -0.5
		;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare2";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare2|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.50000000000000011 0 -0.5
		0.50000000000000011 0 -0.16666666666666669
		0.50000000000000011 0 0.16666666666666663
		0.50000000000000011 0 0.49999999999999994
		;
createNode transform -n "nurbsSquare1" -p "connectionsGRP_2";
	setAttr ".t" -type "double3" -10 0 10 ;
	setAttr ".s" -type "double3" 20 20 20 ;
createNode transform -n "topnurbsSquare1" -p "nurbsSquare1";
createNode nurbsCurve -n "topnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare1|topnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "leftnurbsSquare1" -p "nurbsSquare1";
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare1|leftnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "bottomnurbsSquare1" -p "nurbsSquare1";
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare1|bottomnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "rightnurbsSquare1" -p "nurbsSquare1";
createNode nurbsCurve -n "rightnurbsSquareShape1" -p "|environmentGRP|connectionsGRP_2|nurbsSquare1|rightnurbsSquare1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
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
	setAttr -s 4 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 4;
	setAttr -s 6 ".dli[1:5]"  1 2 3 4 5;
	setAttr -s 3 ".dli";
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
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -20.000000000000011 0 -9.999999999999817 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -20.000000000000011 -0.25 1.829647544582258e-013 ;
	setAttr ".d" 4;
createNode animCurveTL -n "pCube42_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10;
createNode animCurveTL -n "pCube42_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -10;
createNode animCurveTL -n "pCube42_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pCube42_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 20;
createNode animCurveTU -n "pCube42_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 20;
createNode animCurveTU -n "pCube42_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 20;
createNode animCurveTU -n "pCube42_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pCube42_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube42_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube42_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[7:9]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1]" -type "float3" -0.019471645 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.019471645 0 0 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 3 "vtx[3]" "vtx[5]" "vtx[8:9]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3]" -type "float3" -0.019471645 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.019471645 0 0 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 20 0 0 0 0 20 0 0 0 0 20 0 0 0 0 1;
	setAttr ".wt" 0.50514328479766846;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.48052835 0 0 -0.48052835
		 0 0 0.48052835 0 0 -0.48052835 0 0 0.48052835 0 0 -0.48052835 0 0 0.48052835 0 0
		 -0.48052835 0 0;
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode makeNurbsSquare -n "makeNurbsSquare1";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode displayLayer -n "pointsLayer";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode displayLayer -n "environmentLayer";
	setAttr ".do" 2;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :initialShadingGroup;
	setAttr -s 54 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
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
connectAttr "environmentLayer.di" "environment.do";
connectAttr "pointsLayer.di" "pointsGRP.do";
connectAttr "deleteComponent5.og" "pCubeShape30.i";
connectAttr "polyMirror1.out" "pCubeShape5.i";
connectAttr "pCube42_translateY.o" "pCube42.ty";
connectAttr "pCube42_translateZ.o" "pCube42.tz";
connectAttr "pCube42_translateX.o" "pCube42.tx";
connectAttr "pCube42_scaleX.o" "pCube42.sx";
connectAttr "pCube42_scaleY.o" "pCube42.sy";
connectAttr "pCube42_scaleZ.o" "pCube42.sz";
connectAttr "pCube42_visibility.o" "pCube42.v";
connectAttr "pCube42_rotateX.o" "pCube42.rx";
connectAttr "pCube42_rotateY.o" "pCube42.ry";
connectAttr "pCube42_rotateZ.o" "pCube42.rz";
connectAttr "polyMergeVert2.out" "pCubeShape42.i";
connectAttr "makeNurbsSquare1.oc1" "|environmentGRP|connectionsGRP_2|nurbsSquare1|topnurbsSquare1|topnurbsSquareShape1.cr"
		;
connectAttr "makeNurbsSquare1.oc2" "|environmentGRP|connectionsGRP_2|nurbsSquare1|leftnurbsSquare1|leftnurbsSquareShape1.cr"
		;
connectAttr "makeNurbsSquare1.oc3" "|environmentGRP|connectionsGRP_2|nurbsSquare1|bottomnurbsSquare1|bottomnurbsSquareShape1.cr"
		;
connectAttr "makeNurbsSquare1.oc4" "|environmentGRP|connectionsGRP_2|nurbsSquare1|rightnurbsSquare1|rightnurbsSquareShape1.cr"
		;
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "gridpath:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gridpath:lightFogSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gridpath:lightFogSE1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gridpath:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
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
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyCube1.out" "deleteComponent1.ig";
connectAttr "polySurfaceShape1.o" "polyMirror1.ip";
connectAttr "pCubeShape5.wm" "polyMirror1.mp";
connectAttr "polyTweak3.out" "polyMergeVert2.ip";
connectAttr "pCubeShape42.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak3.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pCubeShape42.wm" "polyMergeVert1.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape42.wm" "polySplitRing1.mp";
connectAttr "polyCube2.out" "polyTweak1.ip";
connectAttr "layerManager.dli[4]" "pointsLayer.id";
connectAttr "layerManager.dli[5]" "environmentLayer.id";
connectAttr "gridpath:lightFogSE.pa" ":renderPartition.st" -na;
connectAttr "gridpath:lightFogSE1.pa" ":renderPartition.st" -na;
connectAttr "gridpath:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape37.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape39.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape40.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape41.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape42.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape44.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape45.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape46.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape48.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape49.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape50.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape51.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape52.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape53.iog" ":initialShadingGroup.dsm" -na;
connectAttr "environmentShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "gridpath:noise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "noise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "gridpath:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of pathenvironment.ma
