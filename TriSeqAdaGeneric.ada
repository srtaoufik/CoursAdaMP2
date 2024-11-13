WITH Ada.Text_IO ; USE Ada.Text_IO ;
WITH Ada.Integer_Text_IO ; USE Ada.Integer_Text_IO ;

procedure ExerciceTriG is
generic

    type Element is private; -- type pour lequel "=" et ":=" sont definis
    type Tab is array (Positive range <>) of Element;
    with function "<" (E1, E2 : in Element) return Boolean;

	procedure Tri (T : in out Tab) ;
	procedure Tri (T : in out Tab)  is
		m : Positive ;
		tmp: Element ;
	begin
		for i in T'first .. T'last loop --for i in T1'range loop
			m:= i;
			for j in (1+i) .. T'last loop
				if (T(j) < T(m)) then
					m:=j;
				end if;
			end loop;
			--échange entre T[i] et T[m]
			tmp:=T(i) ;
			T(i):=T(m) ;
			T(m):= tmp ;
		end loop;
	end Tri;

	type Tab_Entiers is array (Positive range <>) of Integer;

	procedure Tri_Entiers is new Tri (Integer,Tab_Entiers, "<");

	t1: Tab_Entiers(1..5);
	a,b: Integer;
begin 
	a:=t1'First ; 
	b:= t1'Last;
	for i in a .. b loop
		put ("donner un element  "); 
		get(t1(i)); 
		skip_line;
	end loop;
	Tri_Entiers(t1);
	for i in a .. b loop
		put(t1(i)); put ("  ");
	end loop;
end exerciceTriG;
