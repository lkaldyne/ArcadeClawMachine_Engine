VHDL engine and simulations for an arcade claw machine on an FPGA board (Quartus Prime)

# How it works
This source code is based on 3 finite-state machines:

Mealy SM for coordination and planar/horizontal movement.
  This SM controls logic for moving the x and y positions of the grabber. Using coordinate and goal-based movement logic, claw machine
  coordinates are shifted gradually using clock cycle division. Various signal arrays are sent from this state machine to the other.
  Signals that activate only when destination coordinates have been reached are vital to ensure grabber only grabs when appropriate.
  
Moore state machine for claw arm ascent/descent.
  This SM takes in an array of arguments from the mealy machine and executes its processes when permitted. Its main functionality is to
  handle gradual claw arm descent and to send a signal to the claw hand to inform it of whether it is permitted to open/close
  
Moore state machine for claw arm grabbing.
  This SM serves the purpose of toggling claw hand opening/closing when permitted by the other SM's
  
All components used to attain this project were developed from scratch, including MUXes, Comparators, Bidirectional Shift Registers, etc.
