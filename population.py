import pandas as pd
from collections import defaultdict

path = "https://raw.githubusercontent.com/dssg/411-on-311/master/data/chicago-community-areas.csv"
df = pd.read_csv(path)


feature = list(df.iloc[:,0])
dict = defaultdict(list)

for i in range(len(df)):
    dict[feature[i]] = list(df.iloc[i,1:])

transformed_df = pd.DataFrame(dict)

# Add column ['Community Area Number']
transformed_df['Community Area Number'] = list(range(1,78))

# Move column ['Community Area Number'] to the first column
cols = transformed_df.columns.tolist()
cols = cols[-1:] + cols[:-1]
transformed_df = transformed_df[cols]

transformed_df.to_csv('./assets/data/Cleaned/Cencus/population.csv',index=False)