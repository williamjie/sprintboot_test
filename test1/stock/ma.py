from futuquant import *
import pandas as pd
#import TA-Lib
import talib
import sys


if __name__ == '__main__':
        quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
        ret,price_list =quote_ctx.get_history_kline('HK.00700', start='2010-06-20', end='2018-06-09')

        print("type:",type(price_list))

        #for index in price_list:
        #       print("index:",index)

        #print("close:",type(price_list["close"]) )


        ma250=talib.SMA(price_list["close"],timeperiod=250)
        #print("ma250:",ma250)

        ma1000=talib.SMA(price_list["close"],timeperiod=1000)

        for index in price_list["close"].index:
                        close = price_list["close"][index]
                        ma1000_cur = ma1000[index]
                        rate = (close-ma1000_cur)*100/ma1000_cur
                        print("rate:",rate)
                        if rate> 10 or rate < -10 :
                                print("close:",close," ma1000_cur",ma1000_cur)

        #quote_ctx.close()
        sys.exit()
