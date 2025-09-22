## Description 
- This project implements a single-port RAM in Verilog with three configurable modes:
1. Read First → Output old data, then write new data.
2. Write First → Write new data, output new data immediately.
3. No Change → Write only, output is unaffected during write.
- A testbench is provided to verify the functionality of each mode.
---
## Simulation Output for the each modes are below 
---
### 1. No change mode<br>
```v
Time=0  wr_en=1  addr=0  data_in=0  data_out=x
Time=5  wr_en=1  addr=1  data_in=1  data_out=x
Time=15  wr_en=1  addr=2  data_in=2  data_out=x
Time=25  wr_en=1  addr=3  data_in=3  data_out=x
Time=35  wr_en=1  addr=4  data_in=4  data_out=x
Time=45  wr_en=1  addr=5  data_in=5  data_out=x
...
Time=555  wr_en=1  addr=56  data_in=56  data_out=x
Time=565  wr_en=1  addr=57  data_in=57  data_out=x
Time=575  wr_en=1  addr=58  data_in=58  data_out=x
Time=585  wr_en=1  addr=59  data_in=59  data_out=x
Time=595  wr_en=1  addr=60  data_in=60  data_out=x
Time=605  wr_en=1  addr=61  data_in=61  data_out=x
Time=615  wr_en=1  addr=62  data_in=62  data_out=x
Time=625  wr_en=1  addr=63  data_in=63  data_out=x
Time=635  wr_en=0  addr=63  data_in=63  data_out=63
Time=645  wr_en=1  addr=36  data_in=63  data_out=63
Time=655  wr_en=1  addr=9  data_in=129  data_out=63
Time=665  wr_en=1  addr=13  data_in=99  data_out=63
Time=675  wr_en=1  addr=37  data_in=141  data_out=63
Time=685  wr_en=0  addr=37  data_in=141  data_out=141
Time=695  wr_en=0  addr=18  data_in=141  data_out=18
Time=705  wr_en=0  addr=1  data_in=141  data_out=1
Time=715  wr_en=0  addr=13  data_in=141  data_out=99
```
---
### 2. Read first<br>
```v
Time=0  wr_en=1  addr=0  data_in=0  data_out=x
Time=5  wr_en=1  addr=1  data_in=1  data_out=x
Time=15  wr_en=1  addr=2  data_in=2  data_out=x
Time=25  wr_en=1  addr=3  data_in=3  data_out=x
Time=35  wr_en=1  addr=4  data_in=4  data_out=x
Time=45  wr_en=1  addr=5  data_in=5  data_out=x
...
Time=565  wr_en=1  addr=57  data_in=57  data_out=x
Time=575  wr_en=1  addr=58  data_in=58  data_out=x
Time=585  wr_en=1  addr=59  data_in=59  data_out=x
Time=595  wr_en=1  addr=60  data_in=60  data_out=x
Time=605  wr_en=1  addr=61  data_in=61  data_out=x
Time=615  wr_en=1  addr=62  data_in=62  data_out=x
Time=625  wr_en=1  addr=63  data_in=63  data_out=x
Time=635  wr_en=0  addr=63  data_in=63  data_out=63
Time=645  wr_en=1  addr=36  data_in=63  data_out=36
Time=655  wr_en=1  addr=9  data_in=129  data_out=9
Time=665  wr_en=1  addr=13  data_in=99  data_out=13
Time=675  wr_en=1  addr=37  data_in=141  data_out=37
Time=685  wr_en=0  addr=37  data_in=141  data_out=141
Time=695  wr_en=0  addr=18  data_in=141  data_out=18
Time=705  wr_en=0  addr=1  data_in=141  data_out=1
Time=715  wr_en=0  addr=13  data_in=141  data_out=99
```
---
### 3. Wrte first<br>
```v
Time=0  wr_en=1  addr=0  data_in=0  data_out=x
Time=5  wr_en=1  addr=1  data_in=1  data_out=1
Time=15  wr_en=1  addr=2  data_in=2  data_out=2
Time=25  wr_en=1  addr=3  data_in=3  data_out=3
...
Time=575  wr_en=1  addr=58  data_in=58  data_out=58
Time=585  wr_en=1  addr=59  data_in=59  data_out=59
Time=595  wr_en=1  addr=60  data_in=60  data_out=60
Time=605  wr_en=1  addr=61  data_in=61  data_out=61
Time=615  wr_en=1  addr=62  data_in=62  data_out=62
Time=625  wr_en=1  addr=63  data_in=63  data_out=63
Time=635  wr_en=0  addr=63  data_in=63  data_out=63
Time=645  wr_en=1  addr=36  data_in=63  data_out=63
Time=655  wr_en=1  addr=9  data_in=129  data_out=129
Time=665  wr_en=1  addr=13  data_in=99  data_out=99
Time=675  wr_en=1  addr=37  data_in=141  data_out=141
Time=685  wr_en=0  addr=37  data_in=141  data_out=141
Time=695  wr_en=0  addr=18  data_in=141  data_out=18
Time=705  wr_en=0  addr=1  data_in=141  data_out=1
Time=715  wr_en=0  addr=13  data_in=141  data_out=99
```
---
