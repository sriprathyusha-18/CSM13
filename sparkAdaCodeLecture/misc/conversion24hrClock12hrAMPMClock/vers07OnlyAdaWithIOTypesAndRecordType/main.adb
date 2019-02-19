pragma SPARK_Mode (On);

with AS_IO_Wrapper;  use AS_IO_Wrapper; 
with Clock;  use Clock; 
with Print_Package; use Print_Package;  

procedure Main is
   T  : Integer;
   U  : Hours_Ampm;
   User_Input : String(1 .. 20);
   Last : Integer;

begin
   -- First we initialise standard_input and standard output
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;   
   loop
     loop
	AS_Put("Enter a number in hour from 0 .. 23: ");   
	AS_Get(T,"Please type in an integer; please try again");
	exit when T in 0 .. 23;
	AS_Put_Line("Please Enter a number between 0 and 23");
     end loop;
     AS_Put("The result of the function  is ");
     U := To12(Hour(T));
     AS_Put(Integer(U.Hours));
     Print_Ampm(U.Mode);
     AS_Put_Line;
     To12Proc(Hour(T),U);
     AS_Put("The result of the procedure is ");
     AS_Put(Integer(U.Hours));
     Print_Ampm(U.Mode);
     AS_Put_Line;
     AS_Put_Line("Note that this program is not the correct conversion from 24hrs to am/pm"); 
     AS_Put_Line("See ../README.txt for details");
     As_Put("Do you want to try again (y/n)? ");
     As_Get_Line(User_Input, Last);
     exit when User_Input(1 .. 1) = "n";
   end loop;        
end Main;
   

