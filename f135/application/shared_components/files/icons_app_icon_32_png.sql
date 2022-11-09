prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 135
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.6'
,p_default_workspace_id=>7231611737995830
,p_default_application_id=>135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CURSO'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001E1494441545847ED95DB4A025118859769396A0E231A245A191DA148C1A0A090BA895EA0DB7A889EA007E825BAEE01A26E4A0A';
wwv_flow_imp.g_varchar2_table(2) := 'EA42D028080BD4D20C521C1CC7C64307F6C4840DE9CCD08404B32F873DFFFAFEF5EFBDB669E768EB1D5D5C2603C070C070E0DF39D0A83521541AA02906F6BE7E3141F83A074E6061A729987B7B34A58AA61CE059015EE708C6FC533F8AA4F249E4D8341C';
wwv_flow_imp.g_varchar2_table(3) := '0CA51A4235C02BD783E9A139F4DBE88EC52B2F65DC3C5CC2EC7C5305A10A80741E0A2C2A8A4B8A04229E3E57E584220099B9DBE26B6BBB249A2F6441591C68A286016610A9FC2D8A8D9CE2995004E08A554466D73BDA49C4C38115844722D83BDB858B71';
wwv_flow_imp.g_varchar2_table(4) := '89FBA3570770BAED1DFF550430F15684C617DA1669158F65A248644F4507C88ADF5DE0DD51FB1D80A3E1C6E4F08C58E4997D820556084D1E5E8F1F72F158FA58FC2EADE4FD35F8DEA27E0025B684CDA56DC43227384CEC632DB821DA4E3A978B13555D00';
wwv_flow_imp.g_varchar2_table(5) := '5A47401C08FA974551F6A500C6E6692BAEDB08E487F0B1F080F9C06AC7CE25CF753984E41A0E588730EA9DF89A2581A0FB3CE0EAC56F336F1DB66ED750CCFA6E0691D45557A35882204EF898D16FE390DB9E6353AA2258FA4F3188E497F8F339AE83A65C';
wwv_flow_imp.g_varchar2_table(6) := '5FCF71B55E415928FDFD73ACEA79D3B849B3031AEB2B6E37000C070C073E00C7B524708A4D3AB50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(19148029815117781)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
