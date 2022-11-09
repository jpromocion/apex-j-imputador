prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(19146927018117774)
,p_name=>'Consultar Registro Horario'
,p_alias=>'CONSULTAR-REGISTRO-HORARIO'
,p_step_title=>'Consultar Registro Horario'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JORTRI'
,p_last_upd_yyyymmddhh24miss=>'20221108125544'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18798738353040535)
,p_name=>'Registros horarios'
,p_template=>wwv_flow_imp.id(19024343986117695)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   TO_CHAR(d001, ''DD/MM/YYYY'') as fecha,',
'   TO_CHAR(d002, ''HH24:MI'') as inicio,',
'   TO_CHAR(d003, ''HH24:MI'') as fin,',
'   TO_CHAR(d004, ''HH24:MI'') as tiempoefectivo',
'from ',
'  apex_collections a',
'where collection_name = ''CONSULTA_IMPUTACIONES''',
'order by d001 desc;'))
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
 p_id=>wwv_flow_imp.id(18799634073040544)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18799705122040545)
,p_query_column_id=>2
,p_column_alias=>'INICIO'
,p_column_display_sequence=>20
,p_column_heading=>'Inicio'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18799834732040546)
,p_query_column_id=>3
,p_column_alias=>'FIN'
,p_column_display_sequence=>30
,p_column_heading=>'Fin'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18799920414040547)
,p_query_column_id=>4
,p_column_alias=>'TIEMPOEFECTIVO'
,p_column_display_sequence=>40
,p_column_heading=>'Tiempoefectivo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18798574388040533)
,p_button_sequence=>20
,p_button_name=>'Consultar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(19122049227117748)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18800080957040548)
,p_name=>'P3_NUM_ULTIMOS_DIAS'
,p_item_sequence=>10
,p_item_default=>'15'
,p_prompt=>'Num Ultimos Dias'
,p_format_mask=>'FM990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>3
,p_cMaxlength=>3
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(19119583088117745)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18798600636040534)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Consultar Registro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  tListaDates imputador.T_LISTDATES;',
'BEGIN',
'  APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''CONSULTA_IMPUTACIONES'');',
'  tListaDates := imputador.getImputations(:P3_NUM_ULTIMOS_DIAS);',
'',
'  <<loopResulDates>>',
'  FOR i IN NVL(tListaDates.FIRST, 0)..NVL(tListaDates.LAST, -1) LOOP',
'    APEX_COLLECTION.add_member(',
'        p_collection_name  => ''CONSULTA_IMPUTACIONES'',',
'        p_d001 => tListaDates(i).DATEIM,',
'        p_d002 => tListaDates(i).STARTTIME,',
'        p_d003 => tListaDates(i).ENDTIME,',
'        p_d004 => tListaDates(i).TIMEEFECTIVE',
'    );',
'  END LOOP loopResulDates;  ',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18798574388040533)
);
wwv_flow_imp.component_end;
end;
/
