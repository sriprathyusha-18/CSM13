package body Example  is
   -- with SPARK_MODE is
   
   
   procedure A1 (X : in Integer) 
     -- with Global => (In_out => Glob);     
   is
   begin
      Glob := Glob + X;
   end A1;
   
   procedure A2 (X : out Integer) 
     -- with Global => (Input =>  Glob);        
   is
   begin
      X := Glob;
      return;
   end A2;
   
   procedure A3 (X : in Integer) 
     -- with Global => (Output =>  Glob);        
   is
   begin
      Glob := X;
   end A3;
   
end Example;
  
