# How to join (merge) data frames (inner, outer, left, right)?

Given two data frames:

`df1 = data.frame(CustomerId = c(1:6), Product = c(rep("Toaster", 3), rep("Radio", 3)))`
`df2 = data.frame(CustomerId = c(2, 4, 6), State = c(rep("Alabama", 2), rep("Ohio", 1)))`

        df1
        #  CustomerId Product
        #           1 Toaster
        #           2 Toaster
        #           3 Toaster
        #           4   Radio
        #           5   Radio
        #           6   Radio

        df2
        #  CustomerId   State
        #           2 Alabama
        #           4 Alabama
        #           6    Ohio

How can I do database style, i.e., sql style, joins? That is, how do I get:

- An `inner join` of df1 and df2:

Return only the rows in which the left table have matching keys in the right table.

- An `outer join` of df1 and df2:

Returns all rows from both tables, join records from the left which have matching keys in the right table.

- A `left outer join` (or simply left join) of df1 and df2

Return all rows from the left table, and any rows with matching keys from the right table.

A `right outer join` of df1 and df2

Return all rows from the right table, and any rows with matching keys from the left table.

Extra credit:

How can I do a `SQL style select statement`?

# Solution

- ## By using the `dplyr` library



#### Reference

This question was originally asked on [Stack Overflow](https://stackoverflow.com/questions/1299871/how-to-join-merge-data-frames-inner-outer-left-right?rq=1). I'm reprducing it here for my reference.
