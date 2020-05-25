SELECT

o_process.process_id as "输出过程的编号",
o_process.process_name as "输出过程的名称"  ,
CONCAT(o_output.output_operate, "-", o_f_c.file_category_name, "-",  o_output.output_name, "-") as "输出过程的输出",

i_process.process_id as "被用作输入的过程编号",
i_process.process_name as "被用作输入的过程名称",
CONCAT(i_input.input_operate, "-", i_f_c.file_category_name, "-", i_input.input_name) as "被用作输入的过程输入"



FROM

t_porcess_itto as i_itto, t_porcess_inputs as i_input, t_porcess_outputs as i_output, t_49_proceeses as i_process, t_file_category as i_f_c,

t_porcess_itto as o_itto, t_porcess_inputs as o_input, t_porcess_outputs as o_output, t_49_proceeses as o_process, t_file_category as o_f_c

where

i_itto.input_id = i_input.input_id and i_itto.output_id = i_output.output_id and i_itto.process_id = i_process.process_id and i_itto.input_id != 0


and

o_itto.input_id = o_input.input_id and o_itto.output_id = o_output.output_id and o_itto.process_id = o_process.process_id and o_itto.output_id != 0

and

i_input.file_category_id = i_f_c.file_category_id

and
o_output.file_category_id = o_f_c.file_category_id

and

i_itto.process_id != o_itto.process_id


and

i_input.input_name = o_output.output_name

ORDER BY o_process.process_id asc, o_output.output_name asc, o_output.output_operate desc, i_process.process_id asc, i_input.input_name asc, i_input.input_operate desc
