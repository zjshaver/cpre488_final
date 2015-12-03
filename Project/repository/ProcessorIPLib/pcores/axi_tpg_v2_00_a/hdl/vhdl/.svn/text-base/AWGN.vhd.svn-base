Generation_WGN:process
variable seed11:integer:=2000;
variable seed12:integer:=10000;
variable x,y::real;

begin
   uniform(seed11, seed12, x1);
   uniform(seed11, seed12, x2);
   noise  <=sqrt(-2.0*log(x1))*cos(2.0*math_pi*x2);

   wait for 1 ns;
   level <= (ve_db –SNR);
   noise_generator_out <= 10.0 **(level/20.0)*noise;
end process Generation_WGN;
break on noise_generator_out;
vo==ve’ DELAYED (T1) + noise_generator_out;
//vo = receiver input et ve=transmitter_output
end architecture arch;