select name, cast(extract(day from payday) as integer)
from loan