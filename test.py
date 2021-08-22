import pendulum
import time
from datetime import datetime as dt
with open("test.txt", "a+") as f:
    timestr = dt.now().strftime("%H:%M:%S")
    f.write(timestr + " Hi here!\n")
    time.sleep(1)
