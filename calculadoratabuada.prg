Clear

do while .t.
   nTabuada       := 0
   nMultiplicando := 0
   nLinha         := 7
   nResultado     := 0

   @ 02,02 say "Calculadora de Tabuada"
   @ 03,01 say Replicate("-", 80)
   @ 05,01 say Replicate("-", 80)

   do while .t.
      @ 04,01 say "Digite qual tabuada voce deseja e tecle ENTER: "

      @ 04,48 get nTabuada   picture "999"
      read

      if LastKey() == 27
         nAlertRetornar := Alert("Digitar outro numero?", {"Sim", "Nao"})
         if nAlertRetornar == 1
            Loop
         endif
      endif
      Exit
   enddo

   do while nMultiplicando <= 10

      @ 06,06 to 18,06
      @ 06,11 to 18,11
      @ 06,01 to 18,17

      @ nLinha,03 say nTabuada
      @ nLinha,08 say nMultiplicando   picture "99"

      nResultado := nTabuada * nMultiplicando

      @ nLinha,13 say nResultado       picture "999"

      nMultiplicando := nMultiplicando + 1
      nLinha         := nLinha + 1
   enddo

   nAlertNovaTabuada := Alert("Deseja exibir nova tabuada?", {"Sim", "Nao"})
   if nAlertNovaTabuada == 1
      Loop
   elseif nAlertNovaTabuada == 2
      Exit
   endif
enddo
