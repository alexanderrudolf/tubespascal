unit f13;

	interface;
	procedure showDetailProduct(baju : TBaju;namabaju : string);
	
	implementation;
	procedure showDetailProduct(baju : TBaju;namabaju : string);
			var
				found : boolean;
			begin
				i      := low(baju)-1;
				found  := false;
				while (i<=high(baju)) and (found=false) do
					begin
						i  :=i+1;
						if (namabaju = baju[i].NamaBaju) then
							begin
								found  :=true;
							end;
					end;
			end;
