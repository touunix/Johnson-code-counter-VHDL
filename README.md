# ENG Johnson code counter VHDL
###### Description:




# PL Licznik w kodzie Johnsona VHDL
###### Opis:
Układ po zaprogramowaniu, służy jako czterobitowy licznik, który liczy w kodzie Johnsona. Zliczanie odbywa się, gdy pojawia się narastające zbocze zegara. Impulsy zegara realizowane są za pomocą przycisku BTN0 wciskanego przez użytkownika. Układ posiada reset asynchroniczny, który jest realizowany za pomocą przycisku BTN3. Wciśnięcie tego przycisku skutkuje wyzerowaniem licznika.

W przeprowadzonej symulacji oraz weryfikacji na płytce. Reset licznika został wykonany dwa razy – na początku symulacji oraz weryfikacji i w jej trakcie. Drugi reset został wykonany w taki sposób, aby było widać jego działanie na wyjściu licznika. Symulacja oraz weryfikacja przedstawia wszystkie możliwe stany licznika.

Wyniki weryfikacji na płytce są przedstawione na wyjściach układu, czyli diodach świecących LED0, LED1, LED2 oraz LED3.

###### Wyniki symulacji:
<img src="https://user-images.githubusercontent.com/79804729/159361489-d0b41d88-84ed-4255-94c3-0777f408f562.png" width="90%"></img>

###### Wyniki weryfikacji:
<img src="https://user-images.githubusercontent.com/79804729/159362472-79b2d789-797f-4bc9-88fb-3e5cfe4b3185.gif" width="90%"></img> 

###### Opis plików:

- top.vhd - główny plik projektu VHDL z algorytmem działania
- tb.vhd - plik testbench
- iup4.xdc - plik z ograniczeniami projektowymi dla **płytki Nexys-A7 (układ FPGA xc7a100tcsg324-1)**

