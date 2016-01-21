
# coding: utf-8

# In[32]:

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
# get_ipython().magic('matplotlib inline')


# In[38]:

# 把全部数据读取进一个矩阵
full_data = pd.read_csv("../wichern_data/T1-6.dat", sep='\s+', header=None, skiprows=0).rename(columns={0: 'x1', 1: 'x2', 2: 'x3', 3: 'x4', 4: 'x5', 5: 'x6'})


# In[47]:

full_data.head(5)


# In[49]:

# 根据Table 1.6 把Non-Multiple-Sclerosis Group Data 放进nm_group
nm_group = full_data[:69]
# 然后，把Multiple-Sclerosis Group Data 放进m_group
m_group = full_data[69:]


# In[50]:

# 此处开始 1) 的作业
x2 = m_group.get('x2')
x4 = m_group.get('x4')
# 这是 1) 的scatter diagram图表
plt.scatter(x2,x4, alpha=0.5)
plt.xlabel('S1L + S1R')
plt.ylabel('S1L - S1R')
plt.show()


# In[51]:

# 开始 2) 的作业
m_group.mean()


# In[52]:

nm_group.mean()


# In[53]:

# 未完待续……
m_group.corr()


# In[54]:

nm_group.corr()


# In[ ]:



