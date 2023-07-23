local fileroot = ".\\content\\SleeveBadge"

function make_key(ctx, filename)
	tid = ctx.tournament_id

    if tid == 2 or tid == 4 or tid == 1026 or tid == 2050 or tid == 3074 or tid == 4098 or tid == 5122 or tid == 6146 or tid == 7170 or tid == 8194 or tid == 3 or tid == 1027  or tid == 2051 or tid == 3075 or tid == 4099 or tid == 5123 or tid == 6147 or tid == 7171 or tid == 8195 then
		   SleeveBadge = "UEFA\\UCL"
    elseif tid == 5 or tid == 1029 or tid == 2053 or tid == 3077 or tid == 4101 or tid == 5125 or tid == 6149 or tid == 7173 or tid == 8197 or tid == 9221 or tid == 10245  or tid == 11269 or tid == 12293 or tid == 6 then
		   SleeveBadge = "UEFA\\UEL"
    elseif tid == 7 then
		   SleeveBadge = "UEFA\\USC"
    elseif tid == 1 then
		   SleeveBadge = "FIFA CWC"
    elseif tid == 8 or tid == 1032 or tid == 2056 or tid == 3080 or tid == 4104 or tid == 9 or tid == 1033 or tid == 2057 or tid == 3081 or tid == 4105 or tid == 5129 or tid == 6153 or tid == 7177 or tid == 8201 or tid == 10 then
		   SleeveBadge = "LIBERTADORES"
	elseif tid == 23 then
	       SleeveBadge = "ENGLAND\\FA Cup"
	elseif tid == 86 then
	       SleeveBadge = "ENGLAND\\Community Shield"
	elseif tid == 17 then
		   SleeveBadge = "ENGLAND\\Premier League"
	elseif tid == 79 then
		   SleeveBadge = "ENGLAND\\SkyBet Championship"
	elseif tid == 83 then
		   SleeveBadge = "ENGLAND\\SkyBet Championship Playoffs"
    elseif tid == 19 or tid == 80 then
		   SleeveBadge = "SPAIN\\La Liga"
    elseif tid == 25 then
		   SleeveBadge = "SPAIN\\Copa del Rey"
    elseif tid == 87 then
		   SleeveBadge = "SPAIN\\Supercopa de Espana"
	elseif tid == 20 then
	       SleeveBadge = "FRANCE\\Ligue 1"
	elseif tid == 81 then
	       SleeveBadge = "FRANCE\\Ligue 2"
    elseif tid == 26 then
		   SleeveBadge = "FRANCE\\Coupe de France"
    elseif tid == 88 then
		   SleeveBadge = "FRANCE\\Trophee des Champion"
	elseif tid == 50 then
	       SleeveBadge = "GERMANY\\Bundesliga"
	elseif tid == 53 then
	       SleeveBadge = "GERMANY\\DFB Pokal"
	elseif tid == 95 then
		   SleeveBadge = "GERMANY\\DFB Super Cup"
	elseif tid == 18 then
	       SleeveBadge = "ITALY\\Serie A"
	elseif tid == 82 then
	       SleeveBadge = "ITALY\\Serie B"
    elseif tid == 24 then
		   SleeveBadge = "ITALY\\Coppa Italia"
    elseif tid == 89 then
		   SleeveBadge = "ITALY\\SuperCoppa Italia"
    elseif tid == 137 then
		   SleeveBadge = "SCOTLAND\\Scottish Cup"
    elseif tid == 123 then
		   SleeveBadge = "RUSSIA\\Russian Cup"
    elseif tid == 129 then
		   SleeveBadge = "RUSSIA\\Russian Super Cup"
	elseif tid == 21 then
	       SleeveBadge = "NETHERLANDS\\Eredivisie"
	elseif tid == 90 then
	       SleeveBadge = "NETHERLANDS\\Johan Cruyff Shield"
	elseif tid == 27 then
		   SleeveBadge = "NETHERLANDS\\KNVB Cup"
    elseif tid == 22 then
	       	   SleeveBadge = "PORTUGAL\\Liga NOS"
    elseif tid == 28 then
	           SleeveBadge = "PORTUGAL\\Taça de Portugal"
    elseif tid == 91 then
		   SleeveBadge = "PORTUGAL\\Supertaça Cândido de Oliveira"
    elseif tid == 105 or tid == 106 or tid == 107 then
		   SleeveBadge = "ICC"
	else
		   SleeveBadge = nil
    end
    if tid then
       return string.format("%s:%s", SleeveBadge, filename)
    end
end

local function get_filepath(ctx, filename, key)
    if key then
        return string.format("%s\\%s\\%s", fileroot, SleeveBadge, filename)
    end
end

function make_log(ctx)
    if SleeveBadge ~= nil then
       logResult = SleeveBadge
       log("-------- " .. logResult)
    end
end

local function init(ctx)
    if fileroot:sub(1,1)=='.' then
        fileroot = ctx.sider_dir .. fileroot
    end
    ctx.register("livecpk_make_key", make_key)
    ctx.register("livecpk_get_filepath", get_filepath)
	ctx.register("livecpk_make_log", make_log)
end

return { init = init }