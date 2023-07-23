-- Entrance module for PES 2021: assign entrance + trophy + animations for the home team/competitions
-- Custom content is used, not LiveCPK/game: content\entrance is the root
-- Author: FuNZoTiK, 2020, Balkan PES BOX, 2023
-- version: 1.0
-- originally posted on evo-web

local fileroot = ".\\content\\entrance"
local entry
local tid

local function set_random(ctx)
	rdm = math.random (1,4)
	tid = ctx.tournament_id
	home = ctx.home_team
	away = ctx.away_team
end

function make_key(ctx, filename)
	if tid == 2 or tid == 1026 or tid == 2050 or tid == 3074 or tid == 4098 or tid == 5122 or tid == 6146 or tid == 7170 or tid == 8194 or tid == 3 or tid == 1027  or tid == 2051 or tid == 3075 or tid == 4099 or tid == 5123 or tid == 6147 or tid == 7171 or tid == 8195 then
         entry = 16
	     entrance = "UEFA Champions League"
	elseif tid == 4 then
         entry = 16
	   if ctx.match_info == 53 then
	     entrance = "UEFA Champions League Final"
	   else
	     entrance = "UEFA Champions League Road"
	   end

	elseif tid == 5 or tid == 1029 or tid == 2053 or tid == 3077 or tid == 4101 or tid == 5125 or tid == 6149 or tid == 7173 or tid == 8197 or tid == 9221 or tid == 10245 or tid == 11269 or tid == 12293 then
         entry = 16
	     entrance = "UEFA Europa League"
	elseif tid == 6 then
         entry = 16
	   if ctx.match_info == 53 then
	     entrance = "UEFA Europa League Final"
	   else
	     entrance = "UEFA Europa League Road"
	   end

	elseif tid == 8 or tid == 1032 or tid == 2056 or tid == 3080 or tid == 4104 or tid == 9 or tid == 1033 or tid == 2057 or tid == 3081 or tid == 4105 or tid == 5129  or tid == 6153 or tid == 7177 or tid == 8201 or tid == 10 then
         entry = 16
	   if ctx.match_info == 53 then
	     entrance = "Copa Libertadores Final"
	   else
	     entrance = "Copa Libertadores"
	   end

	elseif tid == 7 then
         entry = 16
	     entrance = "UEFA Super Cup"

	elseif tid == 15 or tid == 1039 or tid == 2063 or tid == 3087 or tid == 4111 or tid == 5135 or tid == 6159 or tid == 7183 or tid == 8207 or tid == 16 then
         entry = 16
	     entrance = "AFC Champions League"

	elseif tid == 34 or tid == 1058 or tid == 2082 or tid == 3106 or tid == 4130 or tid == 5154 or tid == 6178 or tid == 7202 or tid == 8226 or tid == 35 then
         entry = 42
	     entrance = "FIFA World Cup"

	elseif tid == 17 then
         entry = 16
	     entrance = "Premier League"

	elseif tid == 18 then
         entry = 16
	     entrance = "Serie A"
	elseif tid == 24 then
         entry = 16
	   if ctx.match_info == 53 then
	     entrance = "Coppa Italia Final"
	   else
	     entrance = "Coppa Italia"
	   end
	elseif tid == 89 then
         entry = 16
	     entrance = "Supercoppa Italiana"

	elseif tid == 25 then
         entry = 16
	   if ctx.match_info == 53 then
	      entrance = "Copa del Rey Final"
	   else
	      entrance = "Copa del Rey"
	   end

	elseif tid == 20 then
         entry = 16
	     entrance = "Ligue 1"
	elseif tid == 81 then
         entry = 16
	     entrance = "Ligue 2"
	elseif tid == 88 then
         entry = 16
	     entrance = "Trophee des Champions"

	elseif tid == 22 then
         entry = 16
	     entrance = "Liga Portugal"
	elseif tid == 28 then
         entry = 16
	     entrance = "Taca de Portugal"

	elseif tid == 29 then
         entry = 16
	     entrance = "Brasileirao Assai"
	elseif tid == 31 then
         entry = 16
	     entrance = "Copa do Brasil"

	elseif tid == 67 then
         entry = 16
	     entrance = "Campeonato Betsson"

	elseif tid == 119 or tid == 160 or tid == 161 or tid == 168 or tid == 169 then
         entry = 16
	      entrance = "Liga BetPlay Dimayor"
	elseif tid == 126 then
         entry = 16
	      entrance = "Copa BetPlay Dimayor"

	elseif tid == 50 then
         entry = 16
	     entrance = "Bundesliga"
	elseif tid == 53 then
         entry = 16
	   if ctx.match_info == 53 then
	     entrance = "DFB-Pokal Final"
	   else
	     entrance = "DFB-Pokal"
	   end

	elseif tid == 51 or tid == 166 or tid == 167 then
         entry = 16
	      entrance = "Liga MX"
	elseif tid == 54 then
         entry = 16
	     entrance = "Copa MX"

	elseif tid == 65535 then
		 --Exhibition
		if (home == 4071 or home == 101 or home == 107 or home == 4180 or home == 377 or home == 102 or home == 382 or home == 177 or home == 178 or home == 104 or home == 204 or home == 103 or home == 173 or home == 100 or home == 106 or home == 389 or home == 207 or home == 179 or home == 105 or home == 208) and (away == 4071 or away == 101 or away == 107 or away == 4180 or away == 377 or away == 102 or away == 382 or away == 177 or away == 178 or away == 104 or away == 204 or away == 103 or away == 173 or away == 100 or away == 106 or away == 389 or away == 207 or away == 179 or away == 105 or away == 208) then
		 	 entry = 16
			 entrance = "Premier League"
		elseif (home == 234 or home == 186 or home == 4220 or home == 235 or home == 124 or home == 336 or home == 119 or home == 120 or home == 122 or home == 4237 or home == 121 or home == 4914 or home == 327 or home == 125 or home == 4244 or home == 240 or home == 1919 or home == 1600 or home == 333 or home == 190) and (away == 234 or away == 186 or away == 4220 or away == 235 or away == 124 or away == 336 or away == 119 or away == 120 or away == 122 or away == 4237 or away == 121 or away == 4914 or away == 327 or away == 125 or away == 4244 or away == 240 or away == 1919 or away == 1600 or away == 333 or away == 190) then
		 	 entry = 16
			 entrance = "Serie A"
		elseif (home == 209 or home == 180 or home == 403 or home == 112 or home == 407 or home == 420 or home == 414 or home == 216 or home == 213 or home == 215 or home == 217 or home == 113 or home == 181 or home == 114 or home == 182 or home == 4213 or home == 1329 or home == 1330 or home == 218 or home == 221) and (away == 209 or away == 180 or away == 403 or away == 112 or away == 407 or away == 420 or away == 414 or away == 216 or away == 213 or away == 215 or away == 217 or away == 113 or away == 181 or away == 114 or away == 182 or away == 4213 or away == 1329 or away == 1330 or away == 218 or away == 221) then
		 	 entry = 16
			 entrance = "Ligue 1"
		elseif (home == 4200 or home == 418 or home == 416 or home == 1328 or home == 211 or home == 5685 or home == 115 or home == 4123 or home == 219 or home == 4370 or home == 413 or home == 1910 or home == 4211 or home == 5099 or home == 5100 or home == 4372 or home == 210 or home == 412 or home == 405 or home == 1528) and (away == 4200 or away == 418 or away == 416 or away == 1328 or away == 211 or away == 5685 or away == 115 or away == 4123 or away == 219 or away == 4370 or away == 413 or away == 1910 or away == 4211 or away == 5099 or away == 5100 or away == 4372 or away == 210 or away == 412 or away == 405 or away == 1528) then
		 	 entry = 16
			 entrance = "Ligue 2"
		elseif (home == 4323 or home == 5633 or home == 2383 or home == 2380 or home == 5028 or home == 1978 or home == 192 or home == 5115 or home == 4085 or home == 2387 or home == 1976 or home == 2369 or home == 1979 or home == 2391 or home == 1974 or home == 191 or home == 193 or home == 1804) and (away == 4323 or away == 5633 or away == 2383 or away == 2380 or away == 5028 or away == 1978 or away == 192 or away == 5115 or away == 4085 or away == 2387 or away == 1976 or away == 2369 or away == 1979 or away == 2391 or away == 1974 or away == 191 or away == 193 or away == 1804) then
		 	 entry = 16
			 entrance = "Liga Portugal"
		elseif (home == 4124 or home == 128 or home == 127 or home == 4128 or home == 126 or home == 225 or home == 226 or home == 227 or home == 4125 or home == 4126 or home == 4137 or home == 5010 or home == 436 or home == 184 or home == 231 or home == 4140 or home == 185 or home == 232) and (away == 4124 or away == 128 or away == 127 or away == 4128 or away == 126 or away == 225 or away == 226 or away == 227 or away == 4125 or away == 4126 or away == 4137 or away == 5010 or away == 436 or away == 184 or away == 231 or away == 4140 or away == 185 or away == 232) then
			entry = 16
			entrance = "Bundesliga"
		elseif (home == 2450 or home == 1930 or home == 2451 or home == 1245 or home == 2452 or home == 1246 or home == 2454 or home == 1247 or home == 1931 or home == 5142 or home == 1248 or home == 1249 or home == 5143 or home == 1933 or home == 1252 or home == 5137 or home == 137 or home == 2459 or home == 1254 or home == 1255) and (away == 2450 or away == 1930 or away == 2451 or away == 1245 or away == 2452 or away == 1246 or away == 2454 or away == 1247 or away == 1931 or away == 5142 or away == 1248 or away == 1249 or away == 5143 or away == 1933 or away == 1252 or away == 5137 or away == 137 or away == 2459 or away == 1254 or away == 1255) then
			entry = 16
			entrance = "Brasileirao Assai"
		elseif (home == 2192 or home == 2553 or home == 1256 or home == 2707 or home == 2708 or home == 2547 or home == 2544 or home == 2208 or home == 2545 or home == 2699 or home == 2541 or home == 2548 or home == 2360 or home == 2546 or home == 2191 or home == 2209) and (away == 2192 or away == 2553 or away == 1256 or away == 2707 or away == 2708 or away == 2547 or away == 2544 or away == 2208 or away == 2545 or away == 2699 or away == 2541 or away == 2548 or away == 2360 or away == 2546 or away == 2191 or away == 2209) then
			entry = 16
			entrance = "Campeonato Betsson"
		elseif (home == 2653 or home == 5207 or home == 1257 or home == 5208 or home == 2193 or home == 5209 or home == 2361 or home == 2650 or home == 2651 or home == 5370 or home == 2652 or home == 2210 or home == 5210 or home == 2285 or home == 2654 or home == 1258 or home == 2284 or home == 2655 or home == 2657 or home == 5376) and (away == 2653 or away == 5207 or away == 1257 or away == 5208 or away == 2193 or away == 5209 or away == 2361 or away == 2650 or away == 2651 or away == 5370 or away == 2652 or away == 2210 or away == 5210 or away == 2285 or away == 2654 or away == 1258 or away == 2284 or away == 2655 or away == 2657 or away == 5376) then
			entry = 16
			entrance = "Liga BetPlay Dimayor"
		elseif (home == 1777 or home == 1264 or home == 1785 or home == 1265 or home == 1700 or home == 5153 or home == 1789 or home == 5730 or home == 1778 or home == 5130 or home == 1699 or home == 1772 or home == 1775 or home == 1792 or home == 5379 or home == 1779 or home == 1782 or home == 1773) and (away == 1777 or away == 1264 or away == 1785 or away == 1265 or away == 1700 or away == 5153 or away == 1789 or away == 5730 or away == 1778 or away == 5130 or away == 1699 or away == 1772 or away == 1775 or away == 1792 or away == 5379 or away == 1779 or away == 1782 or away == 1773) then
			entry = 16
			entrance = "Liga MX"
		else
			entry = nil
			entrance = nil
		end
	else
         entry = nil
	      entrance = nil
	end
    if entry ~= nil then
       return string.format("%s:%s", entrance, filename)
    end
end

function trophy_rewrite(ctx, tournament_id)
   if entry ~= nil then
      local tid = entry
      if tid then
	     entrance = string.gsub(entrance, "\\Final", "")
	     entrance = string.gsub(entrance, "\\Group_Knockout", "")
	     log("---- " .. entrance)
    	 return tid
      end
   else
	  log("---- Default")
   end
end

local function get_filepath(ctx, filename, key)
    if key and entrance ~= nil then
        return string.format("%s\\%s\\%s", fileroot, entrance, filename)
    end
end

function init(ctx)
    if fileroot:sub(1,1)=='.' then
        fileroot = ctx.sider_dir .. fileroot
    end
	math.randomseed(os.time())
    ctx.register("set_teams", set_random)
    ctx.register("trophy_rewrite", trophy_rewrite)
    ctx.register("livecpk_make_key", make_key)
    ctx.register("livecpk_get_filepath", get_filepath)
end

return { init = init }
