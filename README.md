## Dual Traffic Light Control in Verilog with Icarus Verilog Simulation

### This project is a simple traffic light controller made with Verilog. It controls two traffic lights, A and B, through a cycle that repeats. Here’s how it works:

### Block diagram
```  

           |     |
           |     |
           |     |
__ __ __ __|     |__ __ __ __
                  Traffic A   
__ __ __ __       __ __ __ __
           |     |
           |     |
           |     |
           |     | 
          Traffic B   
```



### State 1:

- **Traffic Light A**: Green (so cars can go)
- **Traffic Light B**: Red (so cars must stop)
- **Duration**: 5 seconds

### State 2:

- **Traffic Light A**: Yellow (Warning for cars to slow down)
- **Traffic Light B**: Red (Cars must remain stopped)
- **Duration**: 1 second

### State 3:

- **Traffic Light A**: Red (Cars must stop)
- **Traffic Light B**: Green (Cars can go)
- **Duration**: 5 seconds

### State 4:

- **Traffic Light A**: Red (Cars must remain stopped)
- **Traffic Light B**: Yellow (Warning for cars to slow down)
- **Duration**: 1 second

### After these steps, the cycle starts again from the first step. This project helps manage traffic at a two-way intersection.

### Simulation result in Icarus Verilog :
![Capture](https://github.com/Yusufabdulsttar/Verilog/assets/134774623/5667eac1-58ea-4fc1-b4dc-c4adb235da72)

