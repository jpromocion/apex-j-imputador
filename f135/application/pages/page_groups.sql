prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 135
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.6'
,p_default_workspace_id=>7231611737995830
,p_default_application_id=>135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CURSO'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(19151810272117790)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
