# ENG Johnson code counter VHDL
###### Description:




# PL Licznik w kodzie Johnsona VHDL
###### Opis:
Układ po zaprogramowaniu, służy jako czterobitowy licznik, który liczy w kodzie Johnsona. Zliczanie odbywa się, gdy pojawia się narastające zbocze zegara. Impulsy zegara realizowane są za pomocą przycisku BTN0 wciskanego przez użytkownika. Układ posiada reset asynchroniczny, który jest realizowany za pomocą przycisku BTN3. Wciśnięcie tego przycisku skutkuje wyzerowaniem licznika.

W przeprowadzonej symulacji oraz weryfikacji na płytce. Reset licznika został wykonany dwa razy – na początku symulacji oraz weryfikacji i w jej trakcie. Drugi reset został wykonany w taki sposób, aby było widać jego działanie na wyjściu licznika. Symulacja oraz weryfikacja przedstawia wszystkie możliwe stany licznika.

Wyniki weryfikacji na płytce są przedstawione na wyjściach układu, czyli diodach świecących LED0, LED1, LED2 oraz LED3.

###### Wyniki symulacji:
