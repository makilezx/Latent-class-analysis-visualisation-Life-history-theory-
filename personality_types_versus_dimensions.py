dimenzije_LHT      = ["Insight, Planning, and Control", "General Altruism", "Religiosity", "Romantic Partner Attachment", "Parental Relationship Quality", "Family Contact and Support", "Friends Contact and Support"]
dimenzija_R2_adj = [0.177,  0.159, 0.077, 0.086,   0.067,   0.072,  0.098,   ]
tip_R2_adj       = [0.094,  0.135, 0.034, 0.039,   0.049,   0.065,  0.031,   ]



df = pd.DataFrame({
    'dimenzije_LHT': dimenzije_LHT,
    'dimenzija_R2_adj': dimenzija_R2_adj,
    'tip_R2_adj': tip_R2_adj, 
})

plt.figure(figsize=(20,5))
ax = plt.gca()
plt.style.use('seaborn-darkgrid')
df.plot(kind='line',x='dimenzije_LHT',y='dimenzija_R2_adj', label="Personality dimensions", ax=ax)
df.plot(kind='line',x='dimenzije_LHT',y='tip_R2_adj', color='red', label="Personality types",ax=ax)
plt.ylabel("R2 adj")
plt.xlabel("LHT dimensions")

plt.show()

#bar
plt.figure(figsize=(20,5))
plt.style.use('seaborn-darkgrid')
plt.ylabel("R2 adj")
plt.xlabel("LHT dimensions")
plt.bar(dimenzije_LHT, dimenzija_R2_adj, label="Personality dimensions", color="#2ca25f")
plt.bar(dimenzije_LHT, tip_R2_adj, label="Personality types", color="#99d8c9")
plt.legend()

plt.show()

