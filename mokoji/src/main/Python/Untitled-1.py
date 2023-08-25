# %%
import matplotlib.pyplot as plt
import cx_Oracle
from matplotlib import font_manager, rc

# 폰트 설정
font_path = 'C:\\Windows\\Fonts\\NGULIM.TTF'
font = font_manager.FontProperties(fname=font_path).get_name()
rc('font', family=font)

dsn = cx_Oracle.makedsn("192.168.0.85", 1521, service_name="ORCL")
connection = cx_Oracle.connect(user="momo", password="pass", dsn=dsn, encoding="UTF-8")

cur = connection.cursor()

# 승, 패 데이터 가져오기
cur.execute("SELECT COUNT(MATINFO_RES) FROM MATCHINGINFO WHERE MATINFO_RES = '승' AND CLUB_CODE = '2'")
win_count = cur.fetchone()[0]

cur.execute("SELECT COUNT(MATINFO_RES) FROM MATCHINGINFO WHERE MATINFO_RES = '패' AND CLUB_CODE = '2'")
lost_count = cur.fetchone()[0]

# 도넛 차트 생성
labels = ['승', '패']
values = [win_count, lost_count]

plt.figure(figsize=(10, 5))
plt.pie(values, labels=labels, autopct='%.1f%%', shadow=True, startangle=90)
plt.title('승률')
plt.show()

# 연결 종료
cur.close()
connection.close()

# %%
