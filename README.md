Challenge:

The candidates should perform the two following tasks using whatever programming language or tools they prefer, ideally by creating a small GitHub repo that can be shared with us.
Also, they should not use any LLMs like ChatGPT to assist with their solution.

1. In the attached file (w_data.dat), you’ll find daily weather data. download this text file, then write a program to:
   Output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, and the minimum is the third column).

2. The attached soccer.dat file contains the results from the English Premier League. The columns labeled 'F' and 'A' contain the total number of goals scored for and against each team in that season (so Arsenal scored 79 goals against opponents, and had 36 goals scored against them). Write a program to:
   Print the name of the team with the smallest difference in 'for' and 'against' goals.

How to run the solutions:

**Soccer**: `make soccer`

You must see the response as:

```
The team with better goals ratio is: Arsenal.
With a goal ratio of: 43 goals.
```

**Weather**: `make weather`

You must see the response as:

```
The day with minimum temperature variation is: 14.
With a temperature variation of: 2 degrees.
```
