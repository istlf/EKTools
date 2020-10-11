# https://www.maplesoft.com/support/help/maple/view.aspx?path=ProgrammingGuide/Chapter06
EKTools := module()
description "EKTools";
option package;

export para;
    para := proc( x::seq(algebraic))
    description "sparallel resistors";
		
		# Converts x to a list, and adds them according to the formula
		# R_p = 1/R_1 + 1/R_2 + 1/R_3 ... 1/R_n

		local a := 0, i;
		for i in [x] do
			a := a + 1/i
		end do;

        return evalf(1/a);
    end proc;

export voltDiv;
	voltDiv := proc(x::algebraic, y::list, vTotal, $)
	description "voltage division";
		return (x/(add(y)))*vTotal;
	end proc;

export currentDiv;
	currentDiv := proc(Res::algebraic, Resistors::list, iTotal::algebraic, $)
	description "current division";
		return (Res/(add(Resistors)))*iTotal;
	end proc;

# obv not done... 
export res;
	res := proc(vars::list, $)
	description "provides you with resistance, provided two of these: current, ";
		return vars;
	end proc;
end module;
