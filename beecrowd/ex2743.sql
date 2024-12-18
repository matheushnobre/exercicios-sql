select name, char_length(name) as l
from people
order by l desc