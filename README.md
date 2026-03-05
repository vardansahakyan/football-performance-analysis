# ⚽ Football Player Performance Analysis 2024/25

An end-to-end data analysis project exploring player performance across the **Top 5 European Football Leagues** (Premier League, La Liga, Serie A, Bundesliga, Ligue 1) using real 2024/25 season data.

---

## 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Data cleaning, calculated columns, Pivot Tables & charts |
| **MySQL** | Database design, querying and extracting insights |
| **Tableau Public** | Interactive dashboard and data visualization |

---

## 📁 Project Structure

```
football-performance-analysis/
│
├── football_players_CLEAN.xlsx   # Cleaned dataset with calculated columns
├── football_queries.sql          # 5 SQL queries with comments
└── README.md                     # Project documentation
```

---

## 📊 Live Dashboard

🔗 [View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/vardan.sahakyan6183/viz/FootballPlayerPerformanceAnalysis2024-25/FootballAnalysis)

The dashboard includes:
- **Top 10 Goalscorers** across all leagues with league filter
- **Goals vs Expected Goals (xG)** scatter plot by player
- **Average Performance by Position** — Goals, Assists and xG compared

---

## 🔍 Dataset

- **Source:** FBref — Top 5 European Leagues 2024/25
- **Rows:** 2,854 player records
- **Columns:** 37 original + 5 calculated columns added during cleaning

### Calculated Columns Added
| Column | Formula | Description |
|---|---|---|
| `Nation_Clean` | Last 3 chars of Nation | Clean country code e.g. ENG |
| `League_Clean` | Text after first space in Comp | Clean league name |
| `xG_Over` | Goals − xG | xG overperformance |
| `Perf_Score` | Goals + Assists + (xG × 0.5) | Custom performance metric |
| `Multi_League` | COUNTIF on Player | Flags players who played in 2 leagues |

---

## 🗄️ SQL Queries

Five queries were written to extract insights from the dataset:

1. **Top 10 Goalscorers** — Basic SELECT & ORDER BY
2. **Goals per 90 by Position** — GROUP BY & AVERAGE with minute filter
3. **xG Overperformers** — Calculated columns & filtering
4. **Best Player by League** — Subquery to find max goals per league
5. **Most Disciplined Players** — Multiple WHERE conditions

---

## 💡 Key Findings

### 1. Kylian Mbappé dominates La Liga
Mbappé finished as the top scorer across all 5 leagues with **31 goals** in La Liga. The Premier League contributed the most players to the overall top 10 scorers list — showing its depth of attacking talent.

### 2. Patrik Schick is the most clinical finisher
Among players with over 900 minutes played, **Patrik Schick (Bayer Leverkusen)** overperformed his xG by **+8.3 goals** — the highest in all 5 leagues. This means he scored 8 more goals than his chances statistically suggested. On the flip side, **Hugo Ekitike (Eintracht Frankfurt)** underperformed by **−6.6 goals** — creating great chances but failing to convert them.

### 3. Forwards score 67% more than Midfielders on average
The position analysis revealed a clear gap in attacking output — Forwards averaged **8.76 goals** per season compared to **5.25 for Midfielders** among players with 900+ minutes. This confirms the importance of specialized attacking roles in modern football.

---

## 🚀 How to Run

1. Open `football_players_CLEAN.xlsx` in Excel to explore the cleaned data
2. Import `football_players.csv` into MySQL and run `football_queries.sql`
3. View the live Tableau dashboard via the link above

---

## 👤 Author

**Vardan Sahakyan**  
[Tableau Public Profile](https://public.tableau.com/app/profile/vardan.sahakyan6183)
