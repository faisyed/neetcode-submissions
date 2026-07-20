-- Write your query below
select
    left_operand,
    operator,
    right_operand,
    (
        case when operator = '>' 
            then (select value from variables where name=left_operand) > (select value from variables where name=right_operand)
        when operator = '<' 
            then (select value from variables where name=left_operand) < (select value from variables where name=right_operand)
        else (select value from variables where name=left_operand) = (select value from variables where name=right_operand)
        end
    )::boolean as value
from
    expressions;