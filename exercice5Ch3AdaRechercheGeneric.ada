WITH Ada.Text_IO ; USE Ada.Text_IO ;
WITH Ada.Integer_Text_IO ; USE Ada.Integer_Text_IO ;

procedure Exercice5 is
generic

     type Element is private; -- type pour lequel "=" et ":=" sont definis
     type Tab is array (Positive range <>) of Element;

     --with function "<" (E1, E2 : in Element) return Boolean;

 function Recherche (T : Tab; x: Element) return integer;

 function Recherche (T : Tab; x: Element) return integer is
    i : integer := t'first;
 begin
    
     while (i <= t'Last) and not (t(i) = x) loop
             i:= i+1;
      end loop;
      if i<=t'Last then
        return i;
      else 
        return -1;
      end if;
 end Recherche;

type Tab_Entiers is array (Positive range <>) of Integer;

function Recherche_Entiers is new Recherche (Element => Integer,Tab => Tab_Entiers);

t1: Tab_Entiers(1..5);
a,b, Res: Integer;
x: Integer ;
begin 

 a:=t1'First ; 
 b:= t1'Last;
   for i in a .. b loop
      put ("donner un element"); 
      get(t1(i)); 
      skip_line;
   end loop;
   put ("donner l'element a rechercher");
      get(x); 
      skip_line;
   Res:=Recherche_Entiers(t1, x);
   if res =-1 then
    put (x);
    put("n'existe pas");
   else
      put(x);
      put("se présente à la position");
      put(Res);
   end if;

end exercice5;
