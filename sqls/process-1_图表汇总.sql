SELECT
chart_id as "图标索引",

CONCAT(chart_idx," ",chart_name ) as "图标编号",
pmbok_page_num as "PMBOK所在页码",
chart_info as "图标描述",
chart_extra_info as "补充信息",
chart_url as "图表下载地址1",
chart_url_github as "图表下载地址2"

FROM `t_charts_info`;
