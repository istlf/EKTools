# https://www.maplesoft.com/support/help/maple/view.aspx?path=ProgrammingGuide/Chapter06
EKTools := module()
description "EKTools";
option package;
export para;
    para := proc(x::algebraic, y::algebraic, $)
    description "sparallel resistors";
        return (x*y)/(x+y);
    end proc;

export voltDiv;
	voltDiv := proc(x::algebraic, y::list, vTotal, $)
	description "voltage division";
		return (x/(add(y)))*vTotal;
	end proc;

export currentDiv;
	currentDiv := proc(Res::algebraic, Resistors::list, iTotal::algebraic, $)
	description "voltage division";
		return (Res/(add(Resistors)))*iTotal;
	end proc;

export res;
	res := proc(vars::list, $)
	description "provides you with resistance, provided two of these: current, ";
		return vars;
	end proc;
end module;