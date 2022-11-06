WITH Ada.Text_IO ; USE Ada.Text_IO ;
WITH Ada.Integer_Text_IO ; USE Ada.Integer_Text_IO ;

procedure ExerciceMin is
generic

     type Element is private; -- type pour lequel "=" et ":=" sont definis
     type Tab is array (Positive range <>) of Element;
	 with function "<" (E1, E2 : in Element) return Boolean;

 function RechercheMin (T : Tab) return Positive;

 function RechercheMin (T : Tab) return Positive is
    i : Positive := t'first;
	min: Positive:=i;
 begin
    
    while (i < t'Last)  loop
        i:= i+1;
        if T(i)<T(min) then
			min:=i;
        end if;
	end loop;
	return min;
 end RechercheMin;

type Tab_Entiers is array (Positive range <>) of Integer;

function RechercheMin_Entiers is new RechercheMin (Integer,Tab_Entiers,"<");

t1: Tab_Entiers(1..5);
a,b: Integer;
M: Positive ;
begin 

 a:=t1'First ; 
 b:= t1'Last;
   for i in a .. b loop  --for i in t1'range loop
      put ("donner un element "); 
      get(t1(i)); 
      skip_line;
   end loop;
 
   M:=RechercheMin_Entiers(t1);
    put(" le min est "); put( t1(M) ) ; new_Line;
    put(" il se présente à la position");
    put(M);
   

end ExerciceMin;
