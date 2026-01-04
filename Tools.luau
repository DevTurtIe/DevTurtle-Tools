--[[
---------------Credits----------------

>>     DevTurtles Tools made by.    <<
>>            DevTurtle             <<

---------------Credits----------------
]]

-->> Modules
local NumberFullNames = {
	[0] = "",
	[3] = "Thousand",
	[6] = "Million",
	[9] = "Billion",
	[12] = "Trillion",
	[15] = "Quadrillion",
	[18] = "Quintillion",
	[21] = "Sextillion",
	[24] = "Septillion",
	[27] = "Octillion",
	[30] = "Nonillion",
	[33] = "Decillion",
	[36] = "Undecillion",
	[39] = "Duodecillion",
	[42] = "Tredecillion",
	[45] = "Quattuordecillion",
	[48] = "Quindecillion",
	[51] = "Sexdecillion",
	[54] = "Septendecillion",
	[57] = "Octodecillion",
	[60] = "Novemdecillion",
	[63] = "Vigintillion",
	[66] = "Unvigintillion",
	[69] = "Duovigintillion",
	[72] = "Tresvigintillion",
	[75] = "Quattuorvigintillion",
	[78] = "Quinvigintillion",
	[81] = "Sexvigintillion",
	[84] = "Septenvigintillion",
	[87] = "Octovigintillion",
	[90] = "Novemvigintillion",
	[93] = "Trigintillion",
	[96] = "Untrigintillion",
	[99] = "Duotrigintillion",
	[102] = "Trestrigintillion",
	[105] = "Quattuortrigintillion",
	[108] = "Quintrigintillion",
	[111] = "Sextrigintillion",
	[114] = "Septentrigintillion",
	[117] = "Octotrigintillion",
	[120] = "Novemtrigintillion",
	[123] = "Quadragintillion",
	[126] = "Unquadragintillion",
	[129] = "Duoquadragintillion",
	[132] = "Tresquadragintillion",
	[135] = "Quattuorquadragintillion",
	[138] = "Quinquadragintillion",
	[141] = "Sexquadragintillion",
	[144] = "Septenquadragintillion",
	[147] = "Octoquadragintillion",
	[150] = "Novemquadragintillion",
	[153] = "Quinquagintillion",
	[156] = "Unquinquagintillion",
	[159] = "Duoquinquagintillion",
	[162] = "Tresquinquagintillion",
	[165] = "Quattuorquinquagintillion",
	[168] = "Quinquinquagintillion",
	[171] = "Sexquinquagintillion",
	[174] = "Septenquinquagintillion",
	[177] = "Octoquinquagintillion",
	[180] = "Novemquinquagintillion",
	[183] = "Sexagintillion",
	[186] = "Unsexagintillion",
	[189] = "Duosexagintillion",
	[192] = "Tresexagintillion",
	[195] = "Quattuorsexagintillion",
	[198] = "Quinsexagintillion",
	[201] = "Sexsexagintillion",
	[204] = "Septensexagintillion",
	[207] = "Octosexagintillion",
	[210] = "Novemsexagintillion",
	[213] = "Septuagintillion",
	[216] = "Unseptuagintillion",
	[219] = "Duoseptuagintillion",
	[222] = "Treseptuagintillion",
	[225] = "Quattuorseptuagintillion",
	[228] = "Quinseptuagintillion",
	[231] = "Sexseptuagintillion",
	[234] = "Septenseptuagintillion",
	[237] = "Octoseptuagintillion",
	[240] = "Novemseptuagintillion",
	[243] = "Octogintillion",
	[246] = "Unoctogintillion",
	[249] = "Duooctogintillion",
	[252] = "Tresoctogintillion",
	[255] = "Quattuoroctogintillion",
	[258] = "Quinoctogintillion",
	[261] = "Sexoctogintillion",
	[264] = "Septemoctogintillion",
	[267] = "Octooctogintillion",
	[270] = "Novemoctogintillion",
	[273] = "Nonagintillion",
	[276] = "Unnonagintillion",
	[279] = "Duononagintillion",
	[282] = "Trenonagintillion",
	[285] = "Quattuornonagintillion",
	[288] = "Quinnonagintillion",
	[291] = "Sexnonagintillion",
	[294] = "Septennonagintillion",
	[297] = "Octononagintillion",
	[300] = "Novemnonagintillion",
	[303] = "Centillion"
}

local NumberSuffixes = {
	[0] = "",
	[3] = "K",
	[6] = "M",
	[9] = "B",
	[12] = "T",
	[15] = "Qa",
	[18] = "Qi",
	[21] = "Sx",
	[24] = "Sp",
	[27] = "Oc",
	[30] = "No",
	[33] = "Dc",
	[36] = "Ud",
	[39] = "Dd",
	[42] = "Td",
	[45] = "Qad",
	[48] = "Qid",
	[51] = "Sxd",
	[54] = "Spd",
	[57] = "Ocd",
	[60] = "Nod",
	[63] = "Vg",
	[66] = "Uvg",
	[69] = "Dvg",
	[72] = "Tvg",
	[75] = "Qavg",
	[78] = "Qivg",
	[81] = "Sxvg",
	[84] = "Spvg",
	[87] = "Ocvg",
	[90] = "Novg",
	[93] = "Tg",
	[96] = "Utg",
	[99] = "Dtg",
	[102] = "Ttg",
	[105] = "Qatg",
	[108] = "Qitg",
	[111] = "Sxtg",
	[114] = "Sptg",
	[117] = "Octg",
	[120] = "Notg",
	[123] = "Qag",
	[126] = "Uqag",
	[129] = "Dqag",
	[132] = "Tqag",
	[135] = "Qaqag",
	[138] = "Qiqag",
	[141] = "Sxqag",
	[144] = "Spqag",
	[147] = "Ocqag",
	[150] = "Noqag",
	[153] = "Qig",
	[156] = "Uqig",
	[159] = "Dqig",
	[162] = "Tqig",
	[165] = "Qaqig",
	[168] = "Qiqig",
	[171] = "Sxqig",
	[174] = "Spqig",
	[177] = "Ocqig",
	[180] = "Noqig",
	[183] = "Sxg",
	[186] = "Usxg",
	[189] = "Dsxg",
	[192] = "Tsxg",
	[195] = "Qasxg",
	[198] = "Qisxg",
	[201] = "Sxsxg",
	[204] = "Spsxg",
	[207] = "Ocsxg",
	[210] = "Nosxg",
	[213] = "Sg",
	[216] = "Usg",
	[219] = "Dsg",
	[222] = "Tsg",
	[225] = "Qasg",
	[228] = "Qisg",
	[231] = "Sxsg",
	[234] = "Spsg",
	[237] = "Ocsg",
	[240] = "Nosg",
	[243] = "Ocg",
	[246] = "Uocg",
	[249] = "Docg",
	[252] = "Tocg",
	[255] = "Qaocg",
	[258] = "Qiocg",
	[261] = "Sxocg",
	[264] = "Spocg",
	[267] = "Ococg",
	[270] = "Noocg",
	[273] = "Nog",
	[276] = "Unog",
	[279] = "Donog",
	[282] = "Trnog",
	[285] = "Qanog",
	[288] = "Qinog",
	[291] = "Sxnog",
	[294] = "Spnog",
	[297] = "Ocnog",
	[300] = "Nonog",
	[303] = "Cg" -- Centillion
}

-->> Functions
local function truncate(n, decimals)
	local f = 10 ^ (decimals or 0)
	if n >= 0 then
		return math.floor(n * f) / f
	else
		return math.ceil(n * f) / f
	end
end

-->> Script
local Tool = {}

function Tool.CreateFolder(Name:string, Parent:parent)
	local F = Instance.new("Folder", Parent)
	F.Name = Name
	return F
end

function Tool.CreateNumber(Name:string, Value:number, Parent:parent)
	local N = Instance.new("NumberValue", Parent)
	N.Name = Name N.Value = Value
	return N
end

function Tool.CreateString(Name:string, Value:string, Parent:parent)
	local S = Instance.new("StringValue", Parent)
	S.Name = Name S.Value = Value
	return S
end

function Tool.CreateBool(Name:string, Value:boolean, Parent:parent)
	local B = Instance.new("BoolValue", Parent)
	B.Name = Name B.Value = Value
	return B
end

function Tool.NumberToSuffix(Number: number, decimals: number?)
	decimals = decimals or 2
	if math.abs(Number) < 1000 then
		return tostring(Number)
	end

	-- Pick suffix
	local exponent = math.floor(math.log10(math.abs(Number)))
	local suffixPower = math.max(0, exponent - (exponent % 3))
	local suffix = NumberSuffixes[suffixPower] or ("e" .. suffixPower)

	-- Shorten & truncate
	local shortNumber = Number / (10 ^ suffixPower)
	shortNumber = truncate(shortNumber, decimals)

	-- Roll over if truncation gave >= 1000
	if math.abs(shortNumber) >= 1000 then
		suffixPower = suffixPower + 3
		suffix = NumberSuffixes[suffixPower] or ("e" .. suffixPower)
		shortNumber = shortNumber / 1000
		shortNumber = truncate(shortNumber, decimals)
	end

	-- Format and strip trailing zeros
	local str = string.format("%." .. tostring(decimals) .. "f", shortNumber)
	str = str:gsub("%.?0+$", "") -- remove .00 or trailing zeros

	return str .. suffix
end

function Tool.NumberToFullName(Number:number) -- makes you numbers look like 1.25 Million instead of 1258315
	if Number < 1000 then
		return tostring(Number)
	end

	local exponent = math.floor(math.log10(Number))
	local suffixPower = exponent - (exponent % 3)
	local fullName = NumberFullNames[suffixPower] or ("e" .. suffixPower)
	local shortNumber = Number / (10 ^ suffixPower)

	return string.format("%.2f%s", shortNumber, " "..fullName)
end

function Tool.NumberToEasyRead(Number:number, DecimalPlaces:number) -- makes your numbers look like 1.258.315,95 instead of 1258315,95
	DecimalPlaces = DecimalPlaces or 2 -- default to 2 if not provided

	local sign = ""
	if Number < 0 then
		sign = "-"
		Number = -Number
	end

	-- Round the number to the desired decimals
	local roundedNumber = tonumber(string.format("%." .. DecimalPlaces .. "f", Number))

	-- Split into integer and decimal parts
	local intPart, decPart = tostring(roundedNumber):match("^(%d+)[%.]?(%d*)$")

	-- Add thousands separator to the integer part
	local formattedInt = intPart:reverse():gsub("(%d%d%d)", "%1."):reverse()
	if formattedInt:sub(1, 1) == "." then
		formattedInt = formattedInt:sub(2)
	end

	-- Add decimals only if DecimalPlaces > 0
	if DecimalPlaces > 0 and decPart then
		return sign .. formattedInt .. "," .. decPart
	else
		return sign .. formattedInt
	end
end


function Tool.SecondsToMS(Seconds:number) -- converts to Minutes:Seconds
	return string.format("%02i:%02i", Seconds/60^1, Seconds%60)
end

function Tool.SecondsToHMS(Seconds:number) -- converts to Hours:Minutes:Seconds
	return string.format("%02i:%02i:%02i", Seconds/60^2, Seconds/60%60, Seconds%60)
end

return Tool
