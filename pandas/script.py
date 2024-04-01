
# Loading Data into Pandas

import pandas as pd
df=pd.read_csv('pokemon_data.csv', delimiter=',')	# for csv files, no need to specify delimiter but for other, ex. tab separated, we require delimiter
print("\n")
print("----------------Load Data---------------------")
print("----------------------------------------------")
print(df.head(2))			# Printing starting 2 rows of the data
print(df.tail(2)) 			# Printing ending 2 rows of the data



# Reading Data in Pandas

# 1. Printing Headers (Name of Columns)
print("\n")
print("----------------Reading Data: 1---------------")
print("----------------------------------------------")
print(df.columns)

# 2.a. Printing one column
print("\n")
print("----------------Reading Data: 2a--------------")
print("----------------------------------------------")
print(df['Name'])			# It prints few and not all the 800 rows.

# 2.b. Printing several coulmns of choice
print("\n")
print("----------------Reading Data: 2b--------------")
print("----------------------------------------------")
print(df[['Name','Type 1','HP']])



