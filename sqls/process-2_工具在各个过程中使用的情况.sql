SELECT
g.tool_category_name as "类型",
d.tool_name as "工具与技术",


k.big_process_name  as "所属过程组",
CONCAT(j.areas_id, ". ",  j.areas_name)  as "所属知识领域",
CONCAT(b.process_id, ". ", b.process_name) as "所属过程",

CONCAT(d.tool_info,"【补充】（", d.tool_extra_info, "）。") as "工具解释及其补充"
FROM

t_porcess_itto    as a,
t_49_proceeses    as b,
t_porcess_inputs  as c,
t_porcess_tools   as d,
t_porcess_outputs as e,
t_file_category   as f,
t_tool_category   as g,
t_file_category   as h,
t_10_areas        as j,
t_5_big_processes as k

where

a.process_id = b.process_id and a.input_id = c.input_id and a.tool_id = d.tool_id and a.output_id = e.output_id and a.tool_id != 0

and b.big_process_id = k.big_process_id and b.areas_id = j.areas_id

and c.file_category_id = f.file_category_id
and d.tool_category_id = g.tool_category_id
and e.file_category_id = h.file_category_id

order by g.tool_category_name desc, d.tool_name asc, k.big_process_id asc,  j.areas_id asc, b.process_id asc;
