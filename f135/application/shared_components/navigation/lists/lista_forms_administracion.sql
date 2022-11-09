prompt --application/shared_components/navigation/lists/lista_forms_administracion
begin
--   Manifest
--     LIST: Lista forms Administracion
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.6'
,p_default_workspace_id=>7231611737995830
,p_default_application_id=>135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CURSO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(19288993890932724)
,p_name=>'Lista forms Administracion'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19289150973932725)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Configuraci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ellipsis-v'
,p_list_text_01=>unistr('Configuraci\00F3n de los datos para conectar a la API y los datos del usuario')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
