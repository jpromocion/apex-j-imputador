prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.6'
,p_default_workspace_id=>7231611737995830
,p_default_application_id=>135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CURSO'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_imp.id(19146927018117774)
,p_name=>'Imputador'
,p_alias=>'IMPUTADOR'
,p_step_title=>'Imputador'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'JORTRI'
,p_last_upd_yyyymmddhh24miss=>'20221109174355'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18800188581040549)
,p_plug_name=>'Criterios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(19024343986117695)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19217234479275446)
,p_plug_name=>'Rango fechas'
,p_parent_plug_id=>wwv_flow_imp.id(18800188581040549)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(19024343986117695)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19312050649121606)
,p_plug_name=>'Dias modelo'
,p_region_name=>'SI_4_DIAS_MODELO'
,p_parent_plug_id=>wwv_flow_imp.id(19217234479275446)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(19022240087117694)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    1 as id,',
'    ''Lunes'' as dia,',
'    trunc(sysdate) as inicio,',
'    trunc(sysdate) as fin,',
'    trunc(sysdate) as tiempo',
'from dual',
'union all',
'select ',
'    2 as id,',
'    ''Martes'' as dia,',
'    trunc(sysdate) as inicio,',
'    trunc(sysdate) as fin,',
'    trunc(sysdate) as tiempo',
'from dual',
'union all',
'select ',
'    3 as id,',
'    ''Miercoles'' as dia,',
'    trunc(sysdate) as inicio,',
'    trunc(sysdate) as fin,',
'    trunc(sysdate) as tiempo',
'from dual',
'union all',
'select ',
'    4 as id,',
'    ''Jueves'' as dia,',
'    trunc(sysdate) as inicio,',
'    trunc(sysdate) as fin,',
'    trunc(sysdate) as tiempo',
'from dual',
'union all',
'select ',
'    5 as id,',
'    ''Viernes'' as dia,',
'    trunc(sysdate) as inicio,',
'    trunc(sysdate) as fin,',
'    trunc(sysdate) as tiempo',
'from dual'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P4_TIPO_IMPUTACION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312271554121608)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312380602121609)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312559585121611)
,p_name=>'INICIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INICIO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Inicio'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312651760121612)
,p_name=>'FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIN'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fin'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312783024121613)
,p_name=>'TIEMPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIEMPO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Tiempo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312839534121614)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19312946303121615)
,p_name=>'DIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19312101041121607)
,p_internal_uid=>19312101041121607
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No hay valores'
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19322032507153661)
,p_interactive_grid_id=>wwv_flow_imp.id(19312101041121607)
,p_static_id=>'193221'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19322249010153661)
,p_report_id=>wwv_flow_imp.id(19322032507153661)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19323169316153675)
,p_view_id=>wwv_flow_imp.id(19322249010153661)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(19312380602121609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19323964594153677)
,p_view_id=>wwv_flow_imp.id(19322249010153661)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19312559585121611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19324880881153679)
,p_view_id=>wwv_flow_imp.id(19322249010153661)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19312651760121612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19325772786153681)
,p_view_id=>wwv_flow_imp.id(19322249010153661)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19312783024121613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19326661345153683)
,p_view_id=>wwv_flow_imp.id(19322249010153661)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19312839534121614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19328256136165375)
,p_view_id=>wwv_flow_imp.id(19322249010153661)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19312946303121615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19313094168121616)
,p_plug_name=>'Fechas a cargar'
,p_parent_plug_id=>wwv_flow_imp.id(18800188581040549)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(19024343986117695)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19213400408275408)
,p_plug_name=>'Fechas'
,p_parent_plug_id=>wwv_flow_imp.id(19313094168121616)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(19022240087117694)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    sysdate as fecha,',
'    sysdate as inicio,',
'    sysdate as fin,',
'    sysdate as tiempo',
'from dual',
'where 1=2'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P4_TIPO_IMPUTACION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Fechas a cargar'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19214151657275415)
,p_name=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19214282904275416)
,p_name=>'INICIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INICIO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Inicio'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19214381779275417)
,p_name=>'FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIN'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fin'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19214415756275418)
,p_name=>'TIEMPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIEMPO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Tiempo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19214560970275419)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19214614918275420)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19214052798275414)
,p_internal_uid=>19214052798275414
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No hay valores'
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_add_button_label=>'Agregar'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19223343214339490)
,p_interactive_grid_id=>wwv_flow_imp.id(19214052798275414)
,p_static_id=>'192234'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19223570665339491)
,p_report_id=>wwv_flow_imp.id(19223343214339490)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19224029737339496)
,p_view_id=>wwv_flow_imp.id(19223570665339491)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19214151657275415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19224912217339501)
,p_view_id=>wwv_flow_imp.id(19223570665339491)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19214282904275416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19225808372339504)
,p_view_id=>wwv_flow_imp.id(19223570665339491)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19214381779275417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19226713427339506)
,p_view_id=>wwv_flow_imp.id(19223570665339491)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19214415756275418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19231365688347944)
,p_view_id=>wwv_flow_imp.id(19223570665339491)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(19214560970275419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38039505267488949)
,p_name=>'Prueba mostrado coleccion'
,p_template=>wwv_flow_imp.id(19024343986117695)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   TO_CHAR(d001, ''DD/MM/YYYY'') as fecha,',
'   TO_CHAR(d005, ''DD/MM/YYYY'') as fecha_fin,',
'   TO_CHAR(d002, ''HH24:MI'') as inicio,',
'   TO_CHAR(d003, ''HH24:MI'') as fin,',
'   TO_CHAR(d004, ''HH24:MI'') as tiempoefectivo',
'from ',
'  apex_collections a',
'where collection_name = ''FECHAS_REGISTRAR''',
'order by d001 desc;'))
,p_display_when_condition=>'1=2'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_read_only_when_type=>'ALWAYS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(19087056922117726)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19241044185448418)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19313424216121620)
,p_query_column_id=>2
,p_column_alias=>'FECHA_FIN'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha Fin'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19241485618448419)
,p_query_column_id=>3
,p_column_alias=>'INICIO'
,p_column_display_sequence=>20
,p_column_heading=>'Inicio'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19241863250448419)
,p_query_column_id=>4
,p_column_alias=>'FIN'
,p_column_display_sequence=>30
,p_column_heading=>'Fin'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19242298026448419)
,p_query_column_id=>5
,p_column_alias=>'TIEMPOEFECTIVO'
,p_column_display_sequence=>40
,p_column_heading=>'Tiempoefectivo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19214841132275422)
,p_button_sequence=>20
,p_button_name=>'RegistrarF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(19122049227117748)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar fechas concretas'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19311767037121603)
,p_button_sequence=>30
,p_button_name=>'RegistrarR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(19122049227117748)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar rango fechas'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18800296250040550)
,p_name=>'P4_TIPO_IMPUTACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18800188581040549)
,p_prompt=>unistr('Tipo Imputaci\00F3n')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Fechas concretas;F,Rango fechas;R'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(19119365170117745)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Para realizar una imputaci\00F3n existen dos mecanismos:'),
'<ul>',
'    <li>Especificar un conjunto de dias con sus imputaciones concretas.</li>',
unistr('    <li>Especificar un rango de fechas, y un conjunto de d\00EDas modelo para los 5 dias laborales, imputandose en todo el periodo indicado, haciendo uso de la imputaci\00F3n del d\00EDa modelo de semana.</li>'),
'</ul>'))
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19215143081275425)
,p_name=>'P4_LOG_PROCESO'
,p_item_sequence=>40
,p_prompt=>'Log Proceso'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(19119583088117745)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ejemplo de salida con 1 dia imputado:<br/>',
unistr('<code>D\00EDa 20/11/2019 -> success - 200 - Saved</code>'),
'<br/>',
'<br/>',
unistr('Ejemplo de rechazo de una imputaci\00F3n (por ejemplo, si el d\00EDa ya est\00E1 imputado):<br/>'),
'<code>[ERROR]: Received non-OK response: 400 Bad Request</code>'))
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19311842270121604)
,p_name=>'P4_RANGO_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19217234479275446)
,p_prompt=>'Fecha inicial'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(19119583088117745)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19311969125121605)
,p_name=>'P4_RANGO_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19217234479275446)
,p_prompt=>'Fecha final'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(19119583088117745)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19313891322121624)
,p_name=>'P4_RANDOM_ENTRADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18800188581040549)
,p_prompt=>'Random Entrada/salida'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(19119583088117745)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('Sobre la hora de entrada y salida, a\00F1ade/decrementa aleatoriamente un valor de entre 1 a 5 minutos (aportar realismo). NOTA: En caso de provocarse un incremento del tiempo real sobre el efectivo rellenado, se corrige autom\00E1ticamente el efectivo para ')
||'evitar descuadrar.'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19313970436121625)
,p_name=>'P4_RANDOM_TIEMPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18800188581040549)
,p_prompt=>'Random tiempo'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(19119583088117745)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Adicionalmente, sobre el tiempo efectivo a imputar, decrementa un valor aleatorio de entre 1-15 minutos (aportar realismo). '
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(19216826914275442)
,p_computation_sequence=>10
,p_computation_item=>'P4_TIPO_IMPUTACION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'F'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19313586860121621)
,p_validation_name=>'Fechas rango rellenas'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    res BOOLEAN := TRUE;',
'BEGIN',
'    IF :P4_TIPO_IMPUTACION = ''R'' THEN',
'      IF :P4_RANGO_FECHA_INI IS NULL OR :P4_RANGO_FECHA_FIN IS NULL THEN',
'        res := FALSE; ',
'      END IF;',
'    END IF;',
'    return res;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Para el tipo de rango, se debe rellenar las dos fechas de inicio y fin'
,p_when_button_pressed=>wwv_flow_imp.id(19311767037121603)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19216505450275439)
,p_name=>'Mostrar tipo F'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_TIPO_IMPUTACION'
,p_condition_element=>'P4_TIPO_IMPUTACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'F'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19216677874275440)
,p_event_id=>wwv_flow_imp.id(19216505450275439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19313094168121616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19216758646275441)
,p_event_id=>wwv_flow_imp.id(19216505450275439)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19313094168121616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19217089378275444)
,p_event_id=>wwv_flow_imp.id(19216505450275439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19214841132275422)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19217103892275445)
,p_event_id=>wwv_flow_imp.id(19216505450275439)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19214841132275422)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19217413387275448)
,p_name=>'Mostrar tipo R'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_TIPO_IMPUTACION'
,p_condition_element=>'P4_TIPO_IMPUTACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'R'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19217502769275449)
,p_event_id=>wwv_flow_imp.id(19217413387275448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19217234479275446)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19217669236275450)
,p_event_id=>wwv_flow_imp.id(19217413387275448)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19217234479275446)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19311590642121601)
,p_event_id=>wwv_flow_imp.id(19217413387275448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19311767037121603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19311629136121602)
,p_event_id=>wwv_flow_imp.id(19217413387275448)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(19311767037121603)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19215060174275424)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Limpia coleccion'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''FECHAS_REGISTRAR'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19238436677384775)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19213400408275408)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga filas coleccion F'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.add_member(',
'        p_collection_name  => ''FECHAS_REGISTRAR'',',
'        p_d001 => :FECHA,',
'        p_d002 => to_Date(:FECHA ||'' '' || :INICIO,''dd/mm/yyyy hh24:MI:ss''),',
'        p_d003 => to_Date(:FECHA ||'' '' || :FIN,''dd/mm/yyyy hh24:MI:ss''),',
'        p_d004 => to_Date(:FECHA ||'' '' || :TIEMPO,''dd/mm/yyyy hh24:MI:ss'')',
'    );   ',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19214841132275422)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19313337735121619)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19312050649121606)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Carga filas coleccion R'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    APEX_COLLECTION.add_member(',
'        p_collection_name  => ''FECHAS_REGISTRAR'',',
'        p_d001 => :P4_RANGO_FECHA_INI,',
'        p_d005 => :P4_RANGO_FECHA_FIN,',
'        p_d002 => to_Date(:P4_RANGO_FECHA_INI ||'' '' || :INICIO,''dd/mm/yyyy hh24:MI:ss''),',
'        p_d003 => to_Date(:P4_RANGO_FECHA_INI ||'' '' || :FIN,''dd/mm/yyyy hh24:MI:ss''),',
'        p_d004 => to_Date(:P4_RANGO_FECHA_INI ||'' '' || :TIEMPO,''dd/mm/yyyy hh24:MI:ss'')',
'    );   ',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19311767037121603)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.6'
,p_default_workspace_id=>7231611737995830
,p_default_application_id=>135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CURSO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19215212521275426)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Ejemplo carga temporal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    cursor ccarga is',
'        select ',
'           TO_CHAR(d001, ''DD/MM/YYYY'') as fecha,',
'           TO_CHAR(d005, ''DD/MM/YYYY'') as fecha_fin,',
'           TO_CHAR(d002, ''HH24:MI'') as inicio,',
'           TO_CHAR(d003, ''HH24:MI'') as fin,',
'           TO_CHAR(d004, ''HH24:MI'') as tiempoefectivo',
'        from ',
'          apex_collections a',
'        where collection_name = ''FECHAS_REGISTRAR''',
'        order by d001 desc;    ',
'',
'begin',
'    :P4_LOG_PROCESO := '''';',
'    for rcarga in ccarga loop',
'        :P4_LOG_PROCESO := :P4_LOG_PROCESO ||rcarga.fecha || '' - ''||rcarga.fecha_fin || '' - '' || ',
'            rcarga.inicio|| '' - '' || rcarga.fin|| '' - '' || rcarga.tiempoefectivo || '' - '' || ',
'            :P4_RANDOM_ENTRADA || '' - '' || :P4_RANDOM_TIEMPO || chr(10);',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('La invocaci\00F3n de la carga AUXILIAR de prueba fallo. Mirar "Log proceso"')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'1=2'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>unistr('Invocaci\00F3n de la carga AUXILIAR de prueba finaliza correctamente')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19216453141275438)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Procesa final imputaciones F'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tDiasImputar Imputador.T_DAYIMPUTATIONS  := Imputador.T_DAYIMPUTATIONS();',
'    tStatusImpusResult Imputador.T_STATUSIMPUS;',
'',
'    randomTime BOOLEAN := FALSE; ',
'    randomEfective BOOLEAN := FALSE;',
'',
'    --los datos en nuestra coleccion cargados',
'    cursor ccarga is',
'        select ',
'           TO_CHAR(d001, ''DD/MM/YYYY'') as fecha,',
'           TO_CHAR(d002, ''HH24:MI'') as inicio,',
'           TO_CHAR(d003, ''HH24:MI'') as fin,',
'           TO_CHAR(d004, ''HH24:MI'') as tiempoefectivo',
'        from ',
'          apex_collections a',
'        where collection_name = ''FECHAS_REGISTRAR''',
'        order by d001 desc;    ',
'    ',
'begin    ',
'    --vamos cargando cada dia en la tabla registro',
'    for rcarga in ccarga loop',
'        tDiasImputar.EXTEND(1);',
'',
'        tDiasImputar(1).DATEIM := TO_DATE(rcarga.fecha,''DD/MM/YYYY'');',
'        tDiasImputar(1).STARTTIME := TO_DATE(rcarga.fecha || '' '' || rcarga.inicio,''DD/MM/YYYY HH24:MI'');',
'        tDiasImputar(1).ENDTIME := TO_DATE(rcarga.fecha || '' '' || rcarga.fin,''DD/MM/YYYY HH24:MI'');',
'        tDiasImputar(1).TIMEEFECTIVE := TO_DATE(rcarga.fecha || '' '' || rcarga.tiempoefectivo,''DD/MM/YYYY HH24:MI'');',
'',
'    end loop;',
'',
'    --Comprobamos si debemos activbar los random time',
'    IF :P4_RANDOM_ENTRADA = ''Y'' THEN',
'        randomTime := TRUE; ',
'    END IF;',
'    IF :P4_RANDOM_TIEMPO = ''Y'' THEN',
'        randomEfective := TRUE; ',
'    END IF;    ',
'',
'    --invocamos al procedimiento de imputacion',
'    tStatusImpusResult := imputador.setImputations(',
'            tDayImputations => tDiasImputar,',
'            randomTime => randomTime, ',
'            randomEfective => randomEfective);',
'    :P4_LOG_PROCESO := '''';',
'    <<loopResulSet>>',
'    FOR i IN NVL(tStatusImpusResult.FIRST, 0)..NVL(tStatusImpusResult.LAST, -1) LOOP',
'     :P4_LOG_PROCESO := :P4_LOG_PROCESO || ',
'                ''Dia '' || TO_CHAR(tStatusImpusResult(i).DATEIM,''DD/MM/YYYY'') || '' -> '' ||',
'                tStatusImpusResult(i).STATUS || '' - '' ||',
'                tStatusImpusResult(i).STATUSCODE || '' - ''||',
'                tStatusImpusResult(i).MESSAGE || CHR(10);',
'    END LOOP loopResulSet;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('La invocaci\00F3n de la API de carga fallo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19214841132275422)
,p_process_success_message=>unistr('Invocaci\00F3n de la API carga finaliza correctamente. Mirar "Log proceso"')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19313775290121623)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Procesa final imputaciones R'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tDiasModelo Imputador.T_MODELDAYS  := Imputador.T_MODELDAYS();',
'    diaInicial_ DATE;',
'    diaFinal_ DATE;',
'    randomTime BOOLEAN := FALSE; ',
'    randomEfective BOOLEAN := FALSE;    ',
'',
'    tStatusImpusResult Imputador.T_STATUSIMPUS;',
'    --los datos en nuestra coleccion cargados',
'    cursor ccarga is',
'        select ',
'           TO_CHAR(d001, ''DD/MM/YYYY'') as fecha_ini,',
'           TO_CHAR(d005, ''DD/MM/YYYY'') as fecha_fin,',
'           TO_CHAR(d002, ''HH24:MI'') as inicio,',
'           TO_CHAR(d003, ''HH24:MI'') as fin,',
'           TO_CHAR(d004, ''HH24:MI'') as tiempoefectivo',
'        from ',
'          apex_collections a',
'        where collection_name = ''FECHAS_REGISTRAR''',
'        order by d001 desc;    ',
'',
'begin    ',
'    --reocrremoos dias modelo',
'    for rcarga in ccarga loop',
'        --todos las filas llevan el mismo dia inicial/final cargado',
'        diaInicial_ := TO_DATE(rcarga.fecha_ini,''DD/MM/YYYY'');',
'        diaFinal_ := TO_DATE(rcarga.fecha_fin,''DD/MM/YYYY'');',
'',
'        tDiasModelo.EXTEND(1);',
'',
'        tDiasModelo(1).STARTTIME := TO_DATE(rcarga.fecha_ini || '' '' || rcarga.inicio,''DD/MM/YYYY HH24:MI'');',
'        tDiasModelo(1).ENDTIME := TO_DATE(rcarga.fecha_ini || '' '' || rcarga.fin,''DD/MM/YYYY HH24:MI'');',
'        tDiasModelo(1).TIMEEFECTIVE := TO_DATE(rcarga.fecha_ini || '' '' || rcarga.tiempoefectivo,''DD/MM/YYYY HH24:MI'');',
'',
'    end loop;',
'',
'    --Comprobamos si debemos activbar los random time',
'    IF :P4_RANDOM_ENTRADA = ''Y'' THEN',
'        randomTime := TRUE; ',
'    END IF;',
'    IF :P4_RANDOM_TIEMPO = ''Y'' THEN',
'        randomEfective := TRUE; ',
'    END IF;  ',
'',
'    --invocamos al procedimiento de imputacion',
'    tStatusImpusResult := imputador.setImputations(',
'        startDate => diaInicial_,',
'        endDate => diaFinal_,',
'        tModelDays => tDiasModelo,',
'        randomTime => randomTime, ',
'        randomEfective => randomEfective',
'    );',
'    :P4_LOG_PROCESO := '''';',
'    <<loopResulSet>>',
'    FOR i IN NVL(tStatusImpusResult.FIRST, 0)..NVL(tStatusImpusResult.LAST, -1) LOOP',
'     :P4_LOG_PROCESO := :P4_LOG_PROCESO || ',
'                ''Dia '' || TO_CHAR(tStatusImpusResult(i).DATEIM,''DD/MM/YYYY'') || '' -> '' ||',
'                tStatusImpusResult(i).STATUS || '' - '' ||',
'                tStatusImpusResult(i).STATUSCODE || '' - ''||',
'                tStatusImpusResult(i).MESSAGE || CHR(10);',
'    END LOOP loopResulSet;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('La invocaci\00F3n de la API de carga fallo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19311767037121603)
,p_process_success_message=>unistr('Invocaci\00F3n de la API carga finaliza correctamente. Mirar "Log proceso"')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19213512273275409)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19213400408275408)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Imputador'
);
wwv_flow_imp.component_end;
end;
/
