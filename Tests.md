# KARATSUBA
```
iverilog -o karatsuba modules/rom.v modules/A_factor.v modules/B_factor.v modules/D_factor.v modules/E_factor.v modules/karatsuba.v tests/test_karatsuba.v
vvp karatsuba

```
# FSM_EXC
```
iverilog -o fsm_exc modules/FSM_EXC.v tests/test_FSM_EXC.v
vvp fsm_exc
```

# ROM
```
iverilog -o rom modules/rom.v tests/test_rom.v
vvp rom
```

# A
```
iverilog -o A modules/A_factor.v modules/rom.v tests/test_A.v
vvp A
```

# B
```
iverilog -o B modules/B_factor.v modules/rom.v tests/test_B.v
vvp B
```

# D
```
iverilog -o D modules/D_factor.v modules/rom.v tests/test_D.v
vvp D
```

# E
```
iverilog -o E modules/E_factor.v modules/rom.v tests/test_E.v
vvp E
```

# CLOCK
```
iverilog -o clk modules/clock_gen.v tests/test_clk.v
vvp clk
```