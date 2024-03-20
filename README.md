# TESD_ELE0625
Códigos de exemplos e o projeto para a matéria ELE0625 (Tópicos Especiais em Sistemas Digitais) UFRN

### Compilação

Para compilar os arquivos, basta seguir a ordem:

1. ghdl -s *circuito.vhd*
   
2. ghdl -a *circuito.vhd*
   
3. ghdl -a *Test_bench.vhd*
   
4. ghdl -e *Arquitetura_Testbench*
   
5. ghdl -r *Arquitetura_Testbench* --vcd=*Nome_da_simulacao*

Caso utilize comandos mais complexos da biblioteca **ieee**, colocar
o argumento **--ieee=synopsys** ou **--ieee=mentor**.

* gtkwave *Nome_da_simulacao*


# AVISO

caso queira criar um circuito com algum *clock* infinito, deve utilizar do argumento **--stop-time=XX[fs, ns, ms, sec, ...]**, pois o GHDL não suporta *clock* infinito no TESTBENCH.