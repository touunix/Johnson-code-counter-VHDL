# ENG Johnson code counter VHDL
###### Description
The circuit serves as a four-bit counter that counts in Johnson's code. Counting takes place when the rising edge of the clock appears. The clock pulses are realized using the BTN0 button pressed by the user. The system has an asynchronous reset, which is performed using the BTN3 button. Pressing this button resets the counter.

In the simulation and verification on the board, the counter reset was performed twice - at the beginning of the simulation and verification and during it. The second reset was performed in such a way that its operation can be seen at the meter output. Simulation and verification show all possible meter readings.

The results of the verification on the board are presented on the outputs of the system, i.e. LED0, LED1, LED2 and LED3.

###### Simulation results
<img src="https://user-images.githubusercontent.com/79804729/159361489-d0b41d88-84ed-4255-94c3-0777f408f562.png" width="100%"></img>

###### Verification results
<img src="https://user-images.githubusercontent.com/79804729/159362472-79b2d789-797f-4bc9-88fb-3e5cfe4b3185.gif" width="100%"></img> 

###### Files description
- top.vhd - main VHDL design file with the operation algorithm
- tb.vhd - testbench file
- iup4.xdc - file with constraints for the **Nexys-A7 board (FPGA xc7a100tcsg324-1)**


# PL Licznik w kodzie Johnsona VHDL
###### Opis
Układ po zaprogramowaniu, służy jako czterobitowy licznik, który liczy w kodzie Johnsona. Zliczanie odbywa się, gdy pojawia się narastające zbocze zegara. Impulsy zegara realizowane są za pomocą przycisku BTN0 wciskanego przez użytkownika. Układ posiada reset asynchroniczny, który jest realizowany za pomocą przycisku BTN3. Wciśnięcie tego przycisku skutkuje wyzerowaniem licznika.

W przeprowadzonej symulacji oraz weryfikacji na płytce, reset licznika został wykonany dwa razy – na początku symulacji oraz weryfikacji i w jej trakcie. Drugi reset został wykonany w taki sposób, aby było widać jego działanie na wyjściu licznika. Symulacja oraz weryfikacja przedstawia wszystkie możliwe stany licznika.

Wyniki weryfikacji na płytce są przedstawione na wyjściach układu, czyli diodach świecących LED0, LED1, LED2 oraz LED3.

###### Wyniki symulacji
<img src="https://user-images.githubusercontent.com/79804729/159361489-d0b41d88-84ed-4255-94c3-0777f408f562.png" width="100%"></img>

###### Wyniki weryfikacji
<img src="https://user-images.githubusercontent.com/79804729/159362472-79b2d789-797f-4bc9-88fb-3e5cfe4b3185.gif" width="100%"></img> 

###### Opis plików

- top.vhd - główny plik projektu VHDL z algorytmem działania
- tb.vhd - plik testbench
- iup4.xdc - plik z ograniczeniami projektowymi dla **płytki Nexys-A7 (układ FPGA xc7a100tcsg324-1)**
