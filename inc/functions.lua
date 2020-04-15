--[[
─▄█▀█▄──▄███▄─
▐█░██████████▌
─██▒█████████─
──▀████████▀──┊@RRTTT
─────▀██▀─────
┊Ꭿหⅉℒ ‿ @TVWTT
تم تطوير وبرمجة السورس من قبل اوَنَلُايَنَ 
┊@TVWTT ‿ @M0000 
#-------------------------------------------------------------------
]]
local function download(file_id, dl_cb, cmd)
  tdcli_function ({
    ID = "DownloadFile",
    file_id_ = file_id
  }, dl_cb, cmd)
end


Er_cjson , JSON  = pcall(require, "cjson")
Er_ssl   , https = pcall(require, "ssl.https")
Er_url   , URL   = pcall(require, "socket.url")
Er_http  , http  = pcall(require, "socket.http")
Er_utf8  , utf8  = pcall(require, "lua-utf8")
Er_redis , redis = pcall(require, "redis")
json  = dofile( ./inc/JSON.lua )
redis = redis.connect( 127.0.0.1 ,6379)
http.TIMEOUT = 5

if not Er_cjson then
print("( \n\27[1;31m￤Pkg _ Cjson is Not installed. \n\27[0m￤")
os.exit()
end
if not Er_http then
print("( \n\27[1;31m￤Pkg _ luaSec - https  is Not installed. \n\27[0m￤")
os.exit()
end
if not Er_url then
print("( \n\27[1;31m￤Pkg _ Lua-cURL  is Not installed. \n\27[0m￤")
os.exit()
end
if not Er_redis then
print("( \n\27[1;31m￤Pkg _ redis-lua is Not installed. \n\27[0m￤")
os.exit()
end
if not Er_utf8 then
print("( \n\27[1;31m￤Pkg >> UTF_8 is Not installed. \n\27[0m￤")
os.execute("sudo luarocks install luautf8")
os.exit()
end


function create_config(Token)
if not Token then
io.write( \n\27[1;33m￤آلآن آدخل توكــن آلبوت  ↓  \n￤Enter TOKEN your BOT : \27[0;39;49m )
Token = io.read():gsub(   ,  )
if Token ==    then
print( \n\27[1;31m￤ You Did not Enter TOKEN !\n￤ عذرآ لم تقوم بآدخآل آي شـيء , آدخل توگن آلبوت آلآن  )
create_config()
end
Api_Token =  https://api.telegram.org/bot ..Token
local url , res = https.request(Api_Token.. /getMe )
if res ~= 200 then
print( \n\27[1;31m￤ Your Token is Incorrect Please Check it!\n￤ آلتوگن آلذي آدخلتهہ‏‏ غير صـحيح , تآگد مـنهہ‏‏ ثم حآول مـجددآ! )
create_config()
end
local GetToken = JSON.decode(url)
BOT_NAME = GetToken.result.first_name
BOT_User = "@"..GetToken.result.username
io.write( \n\27[1;36m￤تم آدخآل آلتوگن بنجآح   \n￤Success Enter Your Token: \27[1;34m@ ..GetToken.result.username.. \n\27[0;39;49m ) 
end
io.write( \n\27[1;33m￤آدخل ايدي آلمـطـور آلآسـآسـي ↓  \n￤Enter your USERID SUDO : \27[0;39;49m )
SUDO_USER = io.read():gsub(   ,  )
if SUDO_USER ==    then
print( \n\27[1;31m￤ You Did not Enter USERID !\n￤ لم تقوم بآدخآل شـي , يرجى آلآنتبآهہ‏‏ وآدخل آلآن ايدي آلمطور آلآسـآسـي )
create_config(Token)
end 
if not SUDO_USER:match( (%d+)(%d+)(%d+)(%d+)(%d+) ) then
print( \n\27[1;31m￤ This is Not USERID !\n￤هہ‏‏ذآ الايدي ليس موجود بل تلگرآم , عذرآ آدخل آلايدي آلصـحيح آلآن .  )
create_config(Token)
end 
print( ( ..SUDO_USER.. ) )
local url , res = https.request( https://api.telegram.org/bot ..Token.. /getchat?chat_id= ..SUDO_USER)
GetUser = json:decode(url)
if res ~= 200 then
end
if GetUser.ok == false then
print( \n\27[1;31m￤ Conect is Failed !\n￤ حدث خطـآ في آلآتصـآل بآلسـيرفر , يرجى مـرآسـلهہ‏‏ مـطـور آلسـورس ليتمـگن مـن حل آلمـشـگلهہ‏‏ في آسـرع وقت مـمـگن . ! )
create_config(Token)
end
GetUser.result.username = GetUser.result.username or GetUser.result.first_name
print( \n\27[1;36m￤تم آدخآل آيدي آلمـطـور بنجآح , سـوف يتم تشـغيل آلسـورس آلآن .\n￤Success Save USERID : \27[0;32m[ ..SUDO_USER.. ]\n\27[0;39;49m )
angel = Token:match("(%d+)")
redis:set(angel..":VERSION",2.9)
redis:set(angel..":SUDO_ID:",SUDO_USER)
redis:set(angel..":DataCenter:", German )
redis:set(angel..":UserNameBot:",BOT_User)
redis:set(angel..":NameBot:",BOT_NAME)
redis:hset(angel.. username: ..SUDO_USER, username , @ ..GetUser.result.username:gsub( _ ,[[\_]]))
redis:set("TH3angel_INSTALL","Yes")
info = {}
info.username =  @ ..GetUser.result.username
info.userbot  = BOT_User
info.userjoin  = io.popen("whoami"):read( *a ):gsub( [\n\r]+ ,   ) 
Cr_file = io.open("./inc/Token.txt", "w")
Cr_file:write(Token)
Cr_file:close() 
print( \27[1;36m￤Token.txt is created.\27[m )
local Text = "🙋🏼‍♂️┊اهلا عزيزي [المطور الاساسي](tg://user?id="..SUDO_USER..") \n🔖┊شكرا لاستخدامك سورس ماكس \n📡┊أرســل  الان /start\n♦️┊لاضهار الاوامر للمطور  المجهزه بالكيبورد\n\n⚡️"
https.request(Api_Token.. /sendMessage?chat_id= ..SUDO_USER.. &text= ..URL.escape(Text).. &parse_mode=Markdown )
os.execute([[
rm -f ./README.md
rm -rf ./.git
chmod +x ./run
./run
]])
end




function Start_Bot()
local TokenBot = io.open( ./inc/Token.txt , "r")
if not TokenBot then
print( \27[0;33m>> ..[[
─▄█▀█▄──▄███▄─
▐█░██████████▌
─██▒█████████─
──▀████████▀──┊@RRTTT
─────▀██▀─────
┊Ꭿหⅉℒ ‿ @TVWTT
تم تطوير وبرمجة السورس من قبل اوَنَلُايَنَ 
┊@TVWTT ‿ @M0000 
#-------------------------------------------------------------------
]].. \027[0;32m )
create_config() 
else
Token = TokenBot:read( *a )
File = {}
local login = io.popen("whoami"):read( *a ):gsub( [\n\r]+ ,   ) 
angel = Token:match("(%d+)")
our_id = tonumber(angel)
ApiToken = "https://api.telegram.org/bot"..Token
Bot_User = redis:get(angel..":UserNameBot:")
SUDO_ID = tonumber(redis:get(angel..":SUDO_ID:"))
SUDO_USER = redis:hgetall(angel.. username: ..SUDO_ID).username
version = redis:get(angel..":VERSION")
DataCenter = redis:get(angel..":DataCenter:")

local ok, ERROR =  pcall(function() loadfile("./inc/functions.lua")() end)
if not ok then 
print( \27[31m! Error File Not "Run inc/functions.lua" !\n\27[39m )
print(tostring(io.popen("lua inc/functions.lua"):read( *all )))
end

local ok, ERROR =  pcall(function() loadfile("./inc/locks.lua")() end)
if not ok then 
print( \27[31m! Error File Not "Run inc/locks.lua" !\n\27[39m )
print(tostring(io.popen("lua inc/locks.lua"):read( *all )))
end

print( \27[0;33m>> ..[[
─▄█▀█▄──▄███▄─
▐█░██████████▌
─██▒█████████─
──▀████████▀──┊@RRTTT
─────▀██▀─────
┊Ꭿหⅉℒ ‿ @TVWTT
تم تطوير وبرمجة السورس من قبل اوَنَلُايَنَ 
┊@TVWTT ‿ @M0000 
#-------------------------------------------------------------------
]].. \027[0;32m 
.. ¦ TOKEN_BOT: \27[1;34m ..Token.. \027[0;32m\n 
.. ¦ BOT__INFO: \27[1;34m .. Bot_User.. \27[0;36m » ( ..angel.. )\027[0;32m\n 
.. ¦ INFO_SUDO: \27[1;34m ..SUDO_USER:gsub([[\_]], _ ).. \27[0;36m » ( ..SUDO_ID.. )\27[m\027[0;32m\n 
.. ¦ Run_Scrpt: \27[1;34m./inc/Script.lua\027[0;32m \n 
.. ¦ LOGIN__IN: \27[1;34m ..login.. \027[0;32m \n 
.. ¦ VERSION->: \27[1;34mv ..version.. \027[0;32m\n 
.. ======================================\27[0;33m\27[0;31m 
)
local Twer = io.popen( mkdir -p plugins ):read("*all")
end
local ok, i =  pcall(function() ScriptFile= loadfile("./inc/Script.lua")() end)
if not ok then 
print( \27[31m! Error File Not "Run inc/Script.lua" !\n\27[39m )
print(tostring(io.popen("lua inc/Script.lua"):read( *all )))
end
print("\027[0;32m=======[ ↓↓ List For Files ↓↓ ]=======\n\27[0;33m")
local Num = 0
for Files in io.popen( ls plugins ):lines() do
if (Files:match(".lua$")) then
Num = Num + 1
local ok, i =  pcall(function() File[Files] = loadfile("plugins/"..Files)() end)
if not ok then
print( \27[31mError loading plugins  ..Files.. \27[39m )
print(tostring(io.popen("lua plugins/"..Files):read( *all )))
else
print("\27[0;36m "..Num.."- "..Files.. \27[m )
end 
end 

end

print( \n\27[0;32m¦ All Files is :  ..Num..  Are Active.\n--------------------------------------\27[m\n )
end

Start_Bot()


function input_inFo(msg)

if not msg.forward_info_ and msg.is_channel_post_ then
StatusLeft(msg.chat_id_,our_id)
return false
end

if msg.date_ and msg.date_ < os.time() - 10 and not msg.edited then --[[ فحص تاريخ الرساله ]]
print( \27[36m¦¦¦¦  !! [THIS__OLD__MSG]  !! ¦¦¦¦\27[39m )
return false  
end

if not (msg.adduser or msg.joinuser or msg.deluser) 
and msg.sender_user_id_ == our_id 
and msg.content_.ID ~= "MessageChatChangePhoto" 
and msg.content_.ID ~= "MessageChatChangeTitle" then
return false
end
	
if msg.reply_to_message_id_ ~= 0 then msg.reply_id = msg.reply_to_message_id_ end
msg.type = GetType(msg.chat_id_)

if msg.type == "pv" and redis:get(angel.. :mute_pv: ..msg.chat_id_) then
print( \27[1;31m is_MUTE_BY_FLOOD\27[0m )
return false 
end

if redis:get(angel.. sender: ..msg.sender_user_id_.. :flood ) then
print("\27[1;31mThis Flood Sender ...\27[0")
Del_msg(msg.chat_id_,msg.id_)
return false
end


if redis:get(angel.. group:add ..msg.chat_id_) then 
msg.GroupActive = true
else
msg.GroupActive = false
end

if msg.sender_user_id_ == SUDO_ID then 
msg.TheRankCmd =  المطور   
msg.TheRank =  مطور اساسي   
msg.Rank = 1
elseif redis:sismember(angel.. :SUDO_BOT: ,msg.sender_user_id_) then 
msg.TheRankCmd =  المطور  
msg.TheRank =  مطور البوت  
msg.Rank = 2
elseif msg.GroupActive and redis:sismember(angel.. :KARA_BOT: ..msg.chat_id_,msg.sender_user_id_) then 
msg.TheRankCmd =  المنشىء الاساسي 
msg.TheRank =  المنشىء الاساسي  
msg.Rank = 3
elseif msg.GroupActive and redis:sismember(angel.. :MONSHA_BOT: ..msg.chat_id_,msg.sender_user_id_) then 
msg.TheRankCmd =  المنشىء  
msg.TheRank =  المنشىء  
msg.Rank = 4
elseif msg.GroupActive and redis:sismember(angel.. owners: ..msg.chat_id_,msg.sender_user_id_) then 
msg.TheRankCmd =  المدير   
msg.TheRank =  مدير البوت   
msg.Rank = 5
elseif msg.GroupActive and redis:sismember(angel.. admins: ..msg.chat_id_,msg.sender_user_id_) then 
msg.TheRankCmd =  الادمن  
msg.TheRank =  ادمن في البوت  
msg.Rank = 6
elseif msg.GroupActive and redis:sismember(angel.. whitelist: ..msg.chat_id_,msg.sender_user_id_) then 
msg.TheRank =  عضو مميز  
msg.Rank = 7
elseif msg.sender_user_id_ == our_id then
msg.Rank = 8
else
msg.TheRank =  فقط عضو  
msg.Rank = 11
end
 
if msg.Rank == 1 then
msg.SudoBase = true
end
 
if msg.Rank == 1 or msg.Rank == 2 then
msg.SudoUser = true
end

if msg.Rank == 1 or msg.Rank == 2 or msg.Rank == 3 then
msg.Kara = true
end

if msg.Rank == 1 or msg.Rank == 2 or msg.Rank == 3 or msg.Rank == 4 then
msg.Creator = true
end

if msg.Rank == 1 or msg.Rank == 2 or msg.Rank == 3 or msg.Rank == 4 or msg.Rank == 5 then
msg.Director = true
end

if msg.Rank == 1 or msg.Rank == 2 or msg.Rank == 3 or msg.Rank == 4 or msg.Rank == 5 or msg.Rank == 6 then
msg.Admin = true
end

if msg.Rank == 7 then
msg.Special = true
end

if msg.Rank == 8 then
msg.OurBot = true
end

ISONEBOT = false

if msg.content_.ID == "MessageChatAddMembers" then
local lock_bots = redis:get(angel.. lock_bots ..msg.chat_id_)
ZISBOT = false
for i=0,#msg.content_.members_ do
if msg.content_.members_[i].type_.ID == "UserTypeBot" then
ISONEBOT = true
if msg.GroupActive and not msg.Admin and lock_bots then 
ZISBOT = true
kick_user(msg.content_.members_[i].id_, msg.chat_id_)
end
end
end
if msg.GroupActive and ZISBOT and redis:get(angel.. lock_bots_by_kick ..msg.chat_id_) then
kick_user(msg.sender_user_id_, msg.chat_id_)
end
if msg.content_.members_[0].id_ == our_id and redis:get(angel.. :WELCOME_BOT ) then
SUDO_USER = redis:hgetall(angel.. username: ..SUDO_ID).username
sendPhoto(msg.chat_id_,msg.id_,redis:get(angel.. :WELCOME_BOT ),[[🙋🏽‍♂╿ مـرحبآ آنآ بوت آسـمـي ]]..redis:get(angel.. :NameBot: )..[[ ⚜
⚔│ آختصـآصـي حمـآيهہ‌‏ آلمـجمـوعآت
🚸│ مـن آلسـبآم وآلتوجيهہ‌‏ وآلتگرآر وآلخ...
⚖️╽ مـعرف آلمـطـور  : ]]..SUDO_USER:gsub([[\_]], _ )..[[ 🌿
]])
return false
end
if not msg then
msg.adduser = msg.content_.members_[0].id_
msg.addusername = msg.content_.members_[0].username_
msg.addname = msg.content_.members_[0].first_name_
msg.adduserType = msg.content_.members_[0].type_.ID
end
end

if msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatJoinByLink" then 
if msg.GroupActive and redis:get(angel.. mute_tgservice ..msg.chat_id_) then
Del_msg(msg.chat_id_,msg.id_)
return false 
end
if ISONEBOT then return false end
end


-- [[ المحظورين عام ]]
if GeneralBanned((msg.adduser or msg.sender_user_id_)) then
print( \27[1;31m is_G_BAN_USER\27[0m )
Del_msg(msg.chat_id_,msg.id_)
kick_user((msg.adduser or msg.sender_user_id_),msg.chat_id_)
return false 
end

--[[ المكتومين ]]
if MuteUser(msg.chat_id_,msg.sender_user_id_) then 
if msg.Admin then redis:srem(angel.. is_silent_users: ..msg.chat_id_,msg.sender_user_id_) return end
print("\27[1;31m User is Silent\27[0m")
Del_msg(msg.chat_id_,msg.id_)
return false 
end

--[[ المحظورين ]]
if Check_Banned((msg.adduser or msg.sender_user_id_),msg.sender_user_id_) then
if msg.Admin then redis:srem(angel.. banned: ..msg.chat_id_,msg.sender_user_id_) return end
print( \27[1;31m is_BANED_USER\27[0m )
Del_msg(msg.chat_id_, msg.id_)
kick_user((msg.adduser or msg.sender_user_id_), msg.chat_id_)
return false 
end

if not msg.Admin then
if redis:get(angel.. mute_text ..msg.chat_id_) then --قفل الدردشه
print("\27[1;31m Chat is Mute \27[0m")
Del_msg(msg.chat_id_,msg.id_)
return false 
end
--[[ الكلمات الممنوعه ]]
if msg.text and FilterX(msg) then
return false
end 
end 

if ScriptFile and ScriptFile.angel then 
if msg.text and ScriptFile.iangel then
for k, angel in pairs(ScriptFile.angel) do
local SearchText = msg.text:match(angel)
if SearchText then
if not CheckFlood(msg) then
return false 
end

local GetMsg = ScriptFile.iangel(msg,{msg.text:match(angel)})
if GetMsg then
print("\27[1;35m¦This_Msg : ",angel.." | Plugin is: \27[1;32mScript.lua\27[0m")
sendMsg(msg.chat_id_,msg.id_,GetMsg)
return false
end 
end
end
end
if ScriptFile.dangel then
if ScriptFile.dangel(msg) == false then
return false
end
print("\27[1;35m¦Msg_IN_Process : Proc _ Script.lua\27[0m")
end

for name,Plug in pairs(File) do
if Plug.angel then 
if msg.text and Plug.iangel then
for k, angel in pairs(Plug.angel) do
local SearchText = msg.text:match(angel)
if SearchText then
if not CheckFlood(msg) then
return false
end
Mohammad = msg.text
if Mohammad then
if redis:sismember(angel.. CmDlist: ..msg.chat_id_,Mohammad) then
mmdi = redis:hget(angel.. CmD: ..msg.chat_id_,Mohammad)
msg.text = Mohammad:gsub(Mohammad,mmdi)
end
end
local GetMsg = Plug.iangel(msg,{msg.text:match(angel)})
if GetMsg then
print("\27[1;35m¦This_Msg : ",angel.." | Plugin is: \27[1;32m"..name.."\27[0m")
sendMsg(msg.chat_id_,msg.id_,GetMsg)
end 
return false
end
end
end
if Plug.dangel then
Plug.dangel(msg)
print("\27[1;35m¦Msg_IN_Process : \27[1;32"..name.."\27[0m")
end
else
print("The File "..name.." Not Runing in The Source angel")
end 

end
else
print("The File Script.lua Not Runing in The Source angel")

end
end

function tdcli_update_callback(data)
	local msg = data.message_

	if data.ID == "UpdateMessageSendFailed" then 
    if msg.sender_user_id_ then
	redis:srem(angel.. users ,msg.sender_user_id_)
	end
	elseif data.ID == "UpdateMessageSendSucceeded" then
	if Refresh_Start then
	Refresh_Start = false
	Start_Bot()
	return false
	end
	if UpdateSourceStart then
	UpdateSourceStart = false
	EditMsg(data.message_.chat_id_,data.message_.id_, 10% - |█          | )
	EditMsg(data.message_.chat_id_,data.message_.id_, 20% - |███         | )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/Run.lua , ./inc/Run.lua )
	EditMsg(data.message_.chat_id_,data.message_.id_, 40% - |█████       | )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/locks.lua , ./inc/locks.lua )
	EditMsg(data.message_.chat_id_,data.message_.id_, 60% - |███████     | )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/Script.lua , ./inc/Script.lua )
	EditMsg(data.message_.chat_id_,data.message_.id_, 80% - |█████████   | )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/functions.lua , ./inc/functions.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/plugins/zhrfa.lua , ./plugins/zhrfa.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/plugins/games.lua , ./plugins/games.lua )
	EditMsg(data.message_.chat_id_,data.message_.id_, 100% - |█████████████|\n\n🔝*¦* السورس الى اصدار \n📟*¦* تم اعاده تشغيل السورس بنجاح )
	dofile("./inc/Run.lua")
	print("Update Source And Reload ~ ./inc/Run.lua")
	end
	elseif data.ID == "UpdateNewMessage" then

	if msg.content_.ID == "MessageText" and not msg.forward_info_ then
	if msg.content_.entities_ and msg.content_.entities_[0] and msg.content_.entities_[0].ID then
	if msg.content_.entities_[0].ID == "MessageEntityTextUrl" then
	msg.textEntityTypeTextUrl = true
	print("MessageEntityTextUrl")
	elseif msg.content_.entities_[0].ID == "MessageEntityBold" then 
	msg.textEntityTypeBold = true
	elseif msg.content_.entities_[0].ID == "MessageEntityItalic" then
	msg.textEntityTypeItalic = true
	print("MessageEntityItalic")
	elseif msg.content_.entities_[0].ID == "MessageEntityCode" then
	msg.textEntityTypeCode = true
	print("MessageEntityCode")
	end
	end
	msg.text = msg.content_.text_
	Mohammad = msg.text
if Mohammad then
if redis:sismember(angel.. CmDlist: ..msg.chat_id_,Mohammad) then
mmdi = redis:hget(angel.. CmD: ..msg.chat_id_,Mohammad)
msg.text = Mohammad:gsub(Mohammad,mmdi)
end
end
	if (msg.text=="تحديث" or msg.text=="we" or msg.text=="تحديث ♻️") and msg.sender_user_id_ == SUDO_ID then
	return sendMsg(msg.chat_id_,msg.id_," 🗂┇تہ‏‏م تحديث آلمـلفآت \n✓",nil,function(arg,data)
	Refresh_Start = true
	end)
	end 
	if msg.text==  Update Source  and msg.sender_user_id_ == SUDO_ID then
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/Run.lua , ./inc/Run.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/Script.lua , ./inc/Script.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/functions.lua , ./inc/functions.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/inc/locks.lua , ./inc/locks.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/plugins/zhrfa.lua , ./plugins/zhrfa.lua )
	download_file( https://raw.githubusercontent.com/angelTELEE/angel/master/plugins/games.lua , ./plugins/games.lua )
	sendMsg(msg.chat_id_,msg.id_, 👷🏽| {* تــم تحديث وتثبيت السورس  *} 📡.\n\n👨🏼‍💼| { Bot is Update » }👍🏿 ,nil,function(arg,data)
	dofile("./inc/Run.lua")
	print("Reload ~ ./inc/Run.lua")
	end) 
	end
	
	
	if msg.text and msg.text:match( @(.*) ) and redis:get( setusername ..msg.sender_user_id_) then
	redis:del( setusername ..msg.sender_user_id_)
	mmd = redis:get(angel..":SUDO_ID:")
redis:hset(angel.. username: ..tonumber(mmd), username ,msg.text)
	send_msg(msg.chat_id_,"🙋🏻‍♂│عزيزي تم تغيير المطور الاساسي بنجاح الان ارسل reload ...🍂")
	end
	if msg.text and msg.text:match( (%d+)(%d+)(%d+)(%d+) ) and redis:get( setid ..msg.sender_user_id_) then
	redis:setex( setusername ..msg.sender_user_id_,120,true)
	redis:del( setid ..msg.sender_user_id_)
	redis:set(angel..":SUDO_ID:",msg.text)
send_msg(msg.chat_id_,"🔗│تم تثبيت الايدي الان قم برسال معرف المطور 🍃 @UserName ...")
	end
	if msg.text==  تغير المطور الاساسي  and msg.sender_user_id_ == SUDO_ID then
    send_msg(msg.chat_id_,"🔗│عزيزي قم برسال ايدي المطور ...🍂")
redis:setex( setid ..msg.sender_user_id_,120,true)
end
	
	
	if msg.text==  reload  and msg.sender_user_id_ == SUDO_ID then
	sendMsg(msg.chat_id_,msg.id_, 👷🏽| {* تــم أعـاده تشغيل البوت  *} 📡.\n\n👨🏼‍💼| { Bot is Reloaded » }👍🏿 ,nil,function(arg,data)
	dofile("./inc/Run.lua")
	print("Reload ~ ./inc/Run.lua")
	end)
	return false
	end
	elseif msg.content_.ID == "MessagePinMessage" then
	print( ¦ ..msg.content_.ID)
	msg.pinned = true
	elseif msg.forward_info_ then
   	msg.forward_info = true 
	print( ¦ .." IS_FWD : Msg .")
	elseif msg.content_.ID == "MessagePhoto" then
	print( ¦ ..msg.content_.ID)
	msg.photo = true 
	if msg.content_.photo_.sizes_[3] then 
	photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
	else 
	photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
	end

if msg.content_.photo_.sizes_[2] ==    then
ph = msg.content_.photo_.sizes_[2].photo_.id_
else
ph = msg.content_.photo_.sizes_[1].photo_.id_
end
download(ph,32)
	elseif msg.content_.ID == "MessageVideo" then
	print( ¦ ..msg.content_.ID)
	msg.video = true
	video_id = msg.content_.video_.video_.persistent_id_
	elseif msg.content_.ID == "MessageAnimation" then
	print( ¦ ..msg.content_.ID)
	msg.animation = true
	animation_id = msg.content_.animation_.animation_.persistent_id_
	elseif msg.content_.ID == "MessageVoice" then
	print( ¦ ..msg.content_.ID)
	msg.voice = true
	voice_id = msg.content_.voice_.voice_.persistent_id_
	elseif msg.content_.ID == "MessageAudio" then
	print( ¦ ..msg.content_.ID)
	msg.audio = true
	audio_id = msg.content_.audio_.audio_.persistent_id_
	elseif msg.content_.ID == "MessageSticker" then
	print( ¦ ..msg.content_.ID)
	msg.sticker = true
	sticker_id = msg.content_.sticker_.sticker_.persistent_id_

stk = msg.content_.sticker_.sticker_.id_
download(stk,32)

	elseif msg.content_.ID == "MessageContact" then
	print( ¦ ..msg.content_.ID)
	msg.contact = true
	elseif msg.content_.ID == "MessageDocument" then
	print( ¦ ..msg.content_.ID)
	msg.document = true
	file_id = msg.content_.document_.document_.persistent_id_
	file_name = msg.content_.document_.document_.file_name_
	elseif msg.content_.ID == "MessageLocation" then
	print( ¦ ..msg.content_.ID)
	msg.location = true
	elseif msg.content_.ID == "MessageGame" then
	print( ¦ ..msg.content_.ID)
	msg.game = true
	elseif msg.content_.ID == "MessageChatDeleteMember" then
	if redis:get(angel.. mute_tgservice ..msg.chat_id_) then
	Del_msg(msg.chat_id_,msg.id_)
	end
	elseif msg.content_.ID == "MessageChatAddMembers" then
	if redis:get(angel.. group:add ..msg.chat_id_) and (msg.sender_user_id_ == SUDO_ID or redis:sismember(angel.. :SUDO_BOT: ,msg.sender_user_id_) or redis:sismember(angel.. :MONSHA_BOT: ..msg.chat_id_,msg.sender_user_id_) or redis:sismember(angel.. owners: ..msg.chat_id_,msg.sender_user_id_) or redis:sismember(angel.. admins: ..msg.chat_id_,msg.sender_user_id_)) then 
	msg.Admin = true
	end
	local lock_bots = redis:get(angel.. lock_bots ..msg.chat_id_)
	ISBOT = false
	ZISBOT = false
	for i=0,#msg.content_.members_ do
	if msg.content_.members_[i].type_.ID == "UserTypeBot" then
	ISBOT = true
	if not msg.Admin and lock_bots then 
	ZISBOT =true
	kick_user(msg.content_.members_[i].id_, msg.chat_id_)
	end
	end
	end
	if redis:get(angel.. mute_tgservice ..msg.chat_id_) then
	Del_msg(msg.chat_id_,msg.id_)
	end
	if ZISBOT and redis:get(angel.. lock_bots_by_kick ..msg.chat_id_) then
	kick_user(msg.sender_user_id_, msg.chat_id_)
	end

	if not ISBOT then
	msg.adduser = msg.content_.members_[0].id_
	msg.addusername = msg.content_.members_[0].username_
	msg.addname = msg.content_.members_[0].first_name_
	msg.adduserType = msg.content_.members_[0].type_.ID
	end

	elseif msg.content_.ID == "MessageChatJoinByLink" then
if redis:get(angel.. lock:join: ..msg.chat_id_) then
kick_user(msg.sender_user_id_,msg.chat_id_)
	print( ¦ ..msg.content_.ID..  :  ..msg.sender_user_id_)
	msg.joinuser = true
end
	elseif msg.reply_markup and  msg.reply_markup.ID == "replyMarkupInlineKeyboard" then
	msg.replyMarkupInlineKeyboard = true
	end 
	input_inFo(msg)
	if msg.content_.ID == "MessageChatChangeTitle" then
	print("¦ messageChatChangeTitle : { "..msg.content_.title_.." } ")
	if redis:get(angel.. group:add ..msg.chat_id_) then
	redis:set(angel.. group:name ..msg.chat_id_,msg.content_.title_)
	end
	end 
	
	elseif data.ID == "UpdateNewChat" then  
	if redis:get(angel.. group:add ..data.chat_.id_) then
	redis:set(angel.. group:name ..data.chat_.id_,data.chat_.title_)
	end
	elseif data.ID == "UpdateChannel" then  
	if data.channel_.status_.ID == "chatMemberStatusKicked" then 
	elseif data.channel_.status_.ID == "ChatMemberStatusMember" then 
	print( ¦ The bot is Member )
	elseif data.channel_.status_.ID == "ChatMemberStatusEditor" then 
	print( ¦ The Bot is Admin )
	elseif data.channel_.status_.ID == "ChatMemberStatusKicked" then 
	if redis:get(angel.. group:add-100 ..data.channel_.id_) then
	local linkGroup = (redis:get(angel.. linkGroup-100 ..data.channel_.id_) or "")
	local NameGroup = (redis:get(angel.. group:name-100 ..data.channel_.id_) or "")
	send_msg(SUDO_ID,"📛┇قام شخص بطرد البوت من المجموعه الاتيه : \n🏷┇ألايدي : `-100"..data.channel_.id_.."`\n🗯┇الـمجموعه : "..Flter_Markdown(NameGroup).."\n\n📮┇تـم مسح كل بيانات المجموعه بنـجاح ")
	rem_data_group( -100 ..data.channel_.id_)
	end
	end
	elseif data.ID == "UpdateFile" then 
	if Uploaded_Groups_Ok then
	Uploaded_Groups_Ok = false
	local GetInfo = io.open(data.file_.path_, "r"):read( *a )
	local All_Groups = JSON.decode(GetInfo)
	for k,IDS in pairs(All_Groups.Groups) do
	redis:mset(
	angel.. group:name ..k,IDS.Title,
	angel.. num_msg_angel ..k,5,
	angel.. group:add ..k,true,
	angel.. lock_link ..k,true,
	angel.. lock_spam ..k,true,
	angel.. lock_webpage ..k,true,
	angel.. lock_markdown ..k,true,
	angel.. lock_flood ..k,true,
	angel.. lock_bots ..k,true,
	angel.. mute_forward ..k,true,
	angel.. mute_contact ..k,true,
	angel.. mute_document ..k,true,
	angel.. mute_inline ..k,true,
	angel.. lock_username ..k,true,
	angel.. replay ..k,true
	)
	redis:sadd(angel.. group:ids ,k) 

	if IDS.Admins then
	for user,ID in pairs(IDS.Admins) do
	redis:hset(angel.. username: ..ID, username ,user)
	redis:sadd(angel.. admins: ..k,ID)
	end
	end
	if IDS.Creator then
	for user,ID in pairs(IDS.Creator) do
	redis:hset(angel.. username: ..ID, username ,user)
	redis:sadd(angel.. :MONSHA_BOT: ..k,ID)
	end
	end
	if IDS.Owner then
	for user,ID in pairs(IDS.Owner) do
	redis:hset(angel.. username: ..ID, username ,user)
	redis:sadd(angel.. owners: ..k,ID)
	end
	end
	end
	io.popen("rm -fr ../.telegram-cli/data/document/*")
	sendMsg(Uploaded_Groups_CH,Uploaded_Groups_MS, 📦*¦* تم رفع آلنسـخهہ‏‏ آلآحتيآطـيهہ\n⚖️*¦* حآليآ عدد مـجمـوعآتگ هہ‏‏يهہ‏‏ * ..redis:scard(angel.. group:ids ).. * 🌿\n✓ )
	end
	elseif data.ID == "UpdateUser" then  
	if data.user_.type_.ID == "UserTypeDeleted" then
	print("¦ userTypeDeleted")
	redis:srem(angel.. users ,data.user_.id_)
	elseif data.user_.type_.ID == "UserTypeGeneral" then
	local CheckUser = redis:hgetall(angel.. username: ..data.user_.id_).username
	if data.user_.username_  then 
	USERNAME =  @ ..data.user_.username_:gsub( _ ,[[\_]])
	else
	USERNAME = data.user_.first_name_..   ..(data.user_.last_name_ or "" )
	end	
	if CheckUser and CheckUser ~= USERNAME  then
	print("¦ Enter Update User ")
	redis:hset(angel.. username: ..data.user_.id_, username ,USERNAME)
	end 
	end
	elseif data.ID == "UpdateMessageEdited" then
	GetMsgInfo(data.chat_id_,data.message_id_,function(arg,data)
	msg = data
	msg.edited = true
	data.text = (data.content_.text_ or false)
	input_inFo(msg)  
	end,nil)
	elseif data.ID == "UpdateOption" and data.value_.value_ == "Ready" then
	print(" ||  ------------------------[ Loading For loding list Chat ]--------------------- ||")
	local groups = redis:smembers(angel.. group:ids )
	local GroupsIsFound = 0
	for i = 1, #groups do 
	GroupTitle(groups[i],function(arg,data)
	if data.code_ and data.code_ == 400 then
	rem_data_group(groups[i])
	print(" Del Group From list ")
	else
	if data.type_ and data.type_.channel_ 
	and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
	StatusLeft(groups[i],our_id)
	rem_data_group(groups[i])
	print(" Del Group From list ")
	end
	print(" Name Group : "..data.title_)
	GroupsIsFound = GroupsIsFound + 1
	end
	print(GroupsIsFound..  :  ..#groups..  :  ..i)
	if #groups == i then
	
	local pv = redis:smembers(angel.. users )
	local NumPvDel = 0
	for i = 1, #pv do
	GroupTitle(pv[i],function(arg,data)
	NumPvDel = NumPvDel + 1
	print("Geting Ok : "..NumPvDel)
	end)
	end
	
	end
	end)
	end
	

	end
	
	
end


function dl_cb(a,d) end
 
function GetInputFile(file)
local file = file or "" 
if file:match('/') then
infile = {ID= "InputFileLocal", path_  = file}
elseif file:match('^%d+$') then
infile = {ID= "InputFileId", id_ = file}
else
infile = {ID= "InputFilePersistentId", persistent_id_ = file}
end
return infile
end

local clock = os.clock
function sleep(time)  
local untime = clock()
while clock() - untime <= time do end
end

function sendMsg(chat_id,reply_id,text,markup,funcb)
pcall(tdcli_function({
ID="SendMessage",
chat_id_=chat_id,
reply_to_message_id_= reply_id,
disable_notification_=1,
from_background_= 1,
reply_markup_= nil,
input_message_content_={
ID = "InputMessageText",
text_= text,
disable_web_page_preview_= 1,
clear_draft_= 0,
entities_={},
parse_mode_=  {ID = "TextParseModeMarkdown"} ,
}},funcb or dl_cb,nil)
)
end

function sendPhoto(chat_id,reply_id,photo,caption,func)
pcall(tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ''
}
},func or dl_cb,nil))
end
	
	 
function sendVoice(chat_id,reply_id,voice,caption,func)
pcall(tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = '',
waveform_ = '',
caption_ = caption or ''
}},func or dl_cb,nil))
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
pcall(tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ''
}},func or dl_cb,nil))
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
pcall(tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = '',
title_ = title or '',
performer_ = '',
caption_ = caption or ''
}},func or dl_cb,nil))
end

function sendSticker(chat_id,reply_id,sticker,func)
pcall(tdcli_function({
ID='SendMessage',
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil))
end

function sendVideo(chat_id,reply_id,video,caption,func)
pcall(tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ''
}},func or dl_cb,nil))
end


function sendDocument(chat_id,reply_id,document,caption,func)
pcall(tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil))
end


function fwdMsg(chat_id,from_chat_id,msg_id,func)
pcall(tdcli_function({
ID="ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = {[0] = msg_id},
disable_notification_ = 0,
from_background_ = 0
},func or dl_cb,nil))
end


function SendMention(chat_id,user_id,msg_id,Text,offset, length) 
pcall(tdcli_function ({ 
ID = "SendMessage", 
chat_id_ = chat_id, 
reply_to_message_id_ = msg_id, 
disable_notification_ = 0, 
from_background_ = 1, 
reply_markup_ = nil, 
input_message_content_ = { 
ID = "InputMessageText", 
text_ = Text, 
disable_web_page_preview_ = 1, 
clear_draft_ = 0, 
entities_ = {[0]={ 
ID="MessageEntityMentionName", 
offset_ = offset , 
length_ = length , 
user_id_ = user_id },},},
},dl_cb, nil))
end
   
function sendChatAction(chatid,action,func)
pcall(tdcli_function({ID = 'SendChatAction',chat_id_ = chatid,action_ = {ID = "SendMessage"..action.."Action",progress_ = 1},}, func or dl_cb,nil))
end

--================================{{  GetChannelFull  }} ===================================
function download_file(Link,Bath)
local Get_Files, res = https.request(Link)
print(res)
if res == 200 then
print("DONLOADING_FROM_URL: "..Link)
local FileD = io.open(Bath,'w+')
FileD:write(Get_Files)
FileD:close()
end
end
--================================{{  GetChannelFull  }} ===================================

function GetFullChat(GroupID,func)
pcall(tdcli_function({ID="GetChannelFull",channel_id_ = GroupID:gsub('-100','')},func or dl_cb,nil))
end

--================================{{  KickUser  }} ===================================

function kick_user(user_id,chat_id,func)
pcall(tdcli_function({ID="ChangeChatMemberStatus",chat_id_=chat_id,user_id_=user_id,status_={ID="ChatMemberStatusKicked"}},func or dl_cb,nil))
end

--================================{{  UnBlock  }} ===================================

function StatusLeft(chat_id,user_id,func)
pcall(tdcli_function({ID="ChangeChatMemberStatus",chat_id_=chat_id,user_id_=user_id,status_={ID="ChatMemberStatusLeft"}},func or dl_cb,nil))
end
--================================{{  DeleteMsg  }} ===================================

function Del_msg(GroupID,msg_id,func)
pcall(tdcli_function({ID="DeleteMessages",chat_id_=GroupID,message_ids_={[0]=msg_id}},func or dl_cb,nil))
end


function GetPhotoUser(User,func)
pcall(tdcli_function({ID='GetUserProfilePhotos',user_id_=User,offset_=0,limit_=1},func,nil))
end
  
function GetMsgInfo(UID,Msg_id,Cb,Arg)
pcall(tdcli_function({ID="GetMessage",chat_id_ = UID,message_id_ = Msg_id},Cb,Arg))
end

function GetUserName(User,Cb,Arg)
pcall(tdcli_function({ID="SearchPublicChat",username_ = User},Cb,Arg))
end

function GetUserID(User,Cb,Arg)
pcall(tdcli_function({ID="GetUser",user_id_ = User},Cb,Arg))
end


function GroupTitle(GroupID,func)
pcall(tdcli_function({ID="GetChat",chat_id_ = GroupID},func or dl_cb,nil))
end

function GetChannelAdministrators(GroupID,func,limit)
pcall(tdcli_function({ID="GetChannelMembers",channel_id_= GroupID:gsub('-100',''),filter_={ID = "ChannelMembersAdministrators"},offset_=0,limit_=40},func,nil))
end 

function GetChatMember(GroupID,UserID,func)
pcall(tdcli_function({ID='GetChatMember',chat_id_ = GroupID,user_id_ = UserID},func,nil))
end

function GetHistory(GroupID,NumDel,func)
pcall(tdcli_function({ID="GetChatHistory",chat_id_ = GroupID,from_message_id_ = 0,offset_ = 0,limit_ = NumDel},func,nil))
end
-----------------------{ Start Api Token Bot}-----------------------------
function getr(br)
if br then
return "✓"
else
return "✖️"
end
end

function GetApi(web)
local info, res = https.request(web)
if res ~= 200 then return false end
local success, res = pcall(JSON.decode, info);
if success then
if not res.ok then return false end
res = res
else
res = false
end
return res
end


--================================{{  ExportChatInviteLink  }} ===================================

function ExportLink(GroupID)
local GetLin,res = https.request(ApiToken..'/exportChatInviteLink?chat_id='..GroupID)
print(res)
if res ~= 200 then return false end
local success, res = pcall(JSON.decode, GetLin)
return (res or "")
end

function Restrict(chat_id,user_id,right)
if right == 1 then
https.request(ApiToken..'/restrictChatMember?chat_id='..chat_id..'&user_id='..user_id..'&can_send_messages=false')
elseif right == 2 then
https.request(ApiToken..'/restrictChatMember?chat_id='..chat_id..'&user_id='..user_id..'&can_send_messages=true&can_send_media_messages=true&can_send_other_messages=true&can_add_web_page_previews=true')
elseif right == 3 then
https.request(ApiToken..'/restrictChatMember?chat_id='..chat_id..'&user_id='..user_id..'&can_send_messages=true&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false')
end
end


function send_msg(chat_id,text,msg_id)
local url = ApiToken..'/sendMessage?chat_id='..chat_id..'&text='..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true"
if msg_id then
url = url.."&reply_to_message_id="..msg_id/2097152/0.5
end
return GetApi(url)
end

function EditMsg(chat_id,message_id,text,funcb)
local url = ApiToken..'/editMessageText?chat_id='..chat_id ..'&message_id='..tonumber(message_id/2097152/0.5)..'&text='..URL.escape(text)..'&parse_mode=Markdown&disable_web_page_preview=true'
return GetApi(url)
end

function send_key(chat_id,text,keyboard,inline,msg_id)
local response = {}
response.inline_keyboard = inline
response.keyboard = keyboard
response.resize_keyboard = true
response.one_time_keyboard = false
local Send_api = ApiToken.."/sendMessage?chat_id="..chat_id.."&text="..
URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response))
if msg_id then 
Send_api = Send_api.."&reply_to_message_id="..msg_id/2097152/0.5
end
return GetApi(Send_api)
end 

function GetFilePath(FileID)
local UrlInfo = https.request(ApiToken..'/getfile?file_id='..FileID)
return ApiToken..'/'..JSON.decode(UrlInfo).result.file_path
end

----------------------{ End Api Token Bot }-----------------------------

----------------------{ Get Name Bot }-----------------------------
Bot_Name = redis:get(angel..":NameBot:")


function GetType(ChatID) 
if tostring(ChatID):match('^-100') then
return 'channel' 
elseif tostring(ChatID):match('-') then
return 'chat' 
else 
return 'pv'
end 
end


function ResolveUser(datax)
if datax.username_ then 
USERNAME = '@'..Flter_Markdown(datax.username_)
else 
USERNAME = FlterName(datax.first_name_..' '..(datax.last_name_ or ""),20) 
USERNAME = "["..USERNAME.."](tg://user?id="..datax.id_..")"
end
return USERNAME
end


function FlterName(Name,Num)
local CharNumber = tonumber(Num or 25)
local Name = tostring(Name):lower()
Name = Name:gsub("https://[%a%d_]+",'') 
Name = Name:gsub("http://[%a%d_]+",'') 
Name = Name:gsub("telegram.dog/[%a%d_]+",'') 
Name = Name:gsub("telegram.me/[%a%d_]+",'') 
Name = Name:gsub("t.me/[%a%d_]+",'') 
Name = Name:gsub("[%a%d_]+.pe[%a%d_]+",'') 
Name = Name:gsub("@[%a%d_]+",'')
Name = Name:gsub("#[%a%d_]+",'')

Name = FlterEmoje(Name)
Name = Flterzhrfa(Name)
Name = utf8.gsub(Name,"✸","")
Name = utf8.gsub(Name,"ﮧ","")
Name = utf8.gsub(Name,"│","")
Name = utf8.gsub(Name,"ٜ","")
Name = utf8.gsub(Name,"༒","")
Name = utf8.gsub(Name,"ᬼ","")
Name = utf8.gsub(Name,"̅","")
Name = utf8.gsub(Name,"❦","")
Name = utf8.gsub(Name,"ᝢ","")
Name = utf8.gsub(Name,"༼","")
Name = utf8.gsub(Name,"๘","")
Name = utf8.gsub(Name,"༽","")
Name = utf8.gsub(Name,"⎨","")
Name = utf8.gsub(Name,"ௌ","")
Name = utf8.gsub(Name,"⎬","")
Name = utf8.gsub(Name,"ۤ","")
Name = utf8.gsub(Name,"꧄","")
Name = utf8.gsub(Name,"░","")
Name = utf8.gsub(Name,"͝","")
Name = utf8.gsub(Name,"¥","")
Name = utf8.gsub(Name,"َ","")
Name = utf8.gsub(Name,"✧","")
Name = utf8.gsub(Name,"ֆ","")
Name = utf8.gsub(Name,"ۖ","")
Name = utf8.gsub(Name,"(])","")
Name = utf8.gsub(Name,"","")
Name = utf8.gsub(Name,"֧","")
Name = utf8.gsub(Name,"*","")
Name = utf8.gsub(Name,"","")
Name = utf8.gsub(Name,"﴿","")
Name = utf8.gsub(Name,"₪","")
Name = utf8.gsub(Name,"ૣ","")
Name = utf8.gsub(Name,"☆","")
Name = utf8.gsub(Name,"͞","")
Name = utf8.gsub(Name,"ٖ","")
Name = utf8.gsub(Name,"֯","")
Name = utf8.gsub(Name,"‘","")
Name = utf8.gsub(Name,"ُ","")
Name = utf8.gsub(Name,"ꪆ","")
Name = utf8.gsub(Name,"↡","")
Name = utf8.gsub(Name,"᭄","")
Name = utf8.gsub(Name,"௵","")
Name = utf8.gsub(Name,"♚","")
Name = utf8.gsub(Name,"ﹻ","")
Name = utf8.gsub(Name,"ۦ","")
Name = utf8.gsub(Name,"͟","")
Name = utf8.gsub(Name,"̶","")
Name = utf8.gsub(Name,"_","")
Name = utf8.gsub(Name,"`","")
Name = utf8.gsub(Name,"‏","")
Name = utf8.gsub(Name,"๘","")
Name = utf8.gsub(Name,"͡","")
Name = utf8.gsub(Name,"⸨","")
Name = utf8.gsub(Name,"▓","")
Name = utf8.gsub(Name,"ـ","")
Name = utf8.gsub(Name,"ஞ","")
Name = utf8.gsub(Name,"❥","")
Name = utf8.gsub(Name,"ꨩ","")
Name = utf8.gsub(Name,"‏","")
Name = utf8.gsub(Name,"ೈ","")
Name = utf8.gsub(Name,"٘","")
Name = utf8.gsub(Name,"ࣧ","")
Name = utf8.gsub(Name,"“","")
Name = utf8.gsub(Name,"•","")
Name = utf8.gsub(Name,']',"")
Name = utf8.gsub(Name,"}","")
Name = utf8.gsub(Name,"ཻ","")
Name = utf8.gsub(Name,"⸩","")
Name = utf8.gsub(Name,"ِ","")
Name = utf8.gsub(Name,"ࣩ","")
Name = utf8.gsub(Name,"ٰ","")
Name = utf8.gsub(Name,"ہ","")
Name = utf8.gsub(Name,"ۙ","")
Name = utf8.gsub(Name,"ৡ","")
Name = utf8.gsub(Name,"҉","")
Name = utf8.gsub(Name,"ٙ","")
Name = utf8.gsub(Name,"ّ","")
Name = utf8.gsub(Name,"ۨ","")
Name = utf8.gsub(Name,"ै","")
Name = utf8.gsub(Name,"ೋ","")
Name = utf8.gsub(Name,"๋","")
Name = utf8.gsub(Name,"͢","")
Name = utf8.gsub(Name,"ﮩ","")
Name = utf8.gsub(Name,"❁","")
Name = utf8.gsub(Name,"⃤","")
Name = utf8.gsub(Name,"ﮮ","")
Name = utf8.gsub(Name,"⸽","")
Name = utf8.gsub(Name,"̝","")
Name = utf8.gsub(Name,"{","")
Name = utf8.gsub(Name,"𖤍","")
Name = utf8.gsub(Name,"|","")
Name = utf8.gsub(Name,"ۧ","")
Name = utf8.gsub(Name,"ۗ","")
Name = utf8.gsub(Name,"ۣ","")
Name = utf8.gsub(Name,"ٍ","")
Name = utf8.gsub(Name,"ؔ","")
Name = utf8.gsub(Name,"ٌ","")
Name = utf8.gsub(Name,"͜","")
Name = utf8.gsub(Name,"ꪸ","")
Name = utf8.gsub(Name,"ۂ","")
Name = utf8.gsub(Name,"»","")
Name = utf8.gsub(Name,"̚","")
Name = utf8.gsub(Name,"𖣁","")
Name = utf8.gsub(Name,"۫","")
Name = utf8.gsub(Name,"ْ","")
Name = utf8.gsub(Name,"ৣ","")
Name = utf8.gsub(Name,"ے","")
Name = utf8.gsub(Name,"♱","")
Name = utf8.gsub(Name,"℘","")
Name = utf8.gsub(Name,"ً","")
Name = utf8.gsub(Name,"۪","")
Name = utf8.gsub(Name,"❰","")
Name = utf8.gsub(Name,"꯭","")
Name = utf8.gsub(Name,"ٚ","")
Name = utf8.gsub(Name,"﷽","")
Name = utf8.gsub(Name,"ۛ","")
Name = utf8.gsub(Name,"〞","")
Name = utf8.gsub(Name,"█","")
Name = utf8.gsub(Name,"✮","")
Name = utf8.gsub(Name,"✿","")
Name = utf8.gsub(Name,"✺","")
Name = utf8.gsub(Name,"̐","")
Name = utf8.gsub(Name,"ྀ","")
Name = utf8.gsub(Name,"←","")
Name = utf8.gsub(Name,"↝","")
Name = utf8.gsub(Name,"ؒ","")
Name = utf8.gsub(Name,"̷","")
Name = utf8.gsub(Name,"⇣","")
Name = utf8.gsub(Name,"«","")
Name = utf8.gsub(Name,"ٛ","")
Name = utf8.gsub(Name,"ॠ","")
Name = utf8.gsub(Name,"̲","")
Name = utf8.gsub(Name,"-","")
Name = utf8.gsub(Name,"͛","")
Name = utf8.gsub(Name,"☬","")
Name = utf8.gsub(Name,"ٓ","")
Name = utf8.gsub(Name,"❱","")
Name = utf8.gsub(Name,"ۓ","")
Name = utf8.gsub(Name,"‏","")
Name = utf8.gsub(Name,"௸","")

if utf8.len(Name) > CharNumber then
Name = utf8.sub(Name,0,CharNumber)..'...' 
end
local CheckName = Name:gsub(' ','')
if not CheckName then 
Name = 'الاسم سبام 📛'
end
return utf8.escape(Name)
end

function Flter_Markdown(TextMsg) 
local Text = tostring(TextMsg)
Text = Text:gsub('_',[[\_]])
Text = Text:gsub('*','\\*')
Text = Text:gsub('`','\\`')
local Hyperlink = Text:match('[(](.*)[)]')
local Hyperlink1 = Text:match('[[](.*)[]]')
if Hyperlink and Hyperlink1 then
Hyperlink = "("..Hyperlink:gsub([[\_]],'_')..")"
Text = Text:gsub('[(](.*)[)]',Hyperlink ) 
Hyperlink1 = Hyperlink1:gsub([[\_]],'_')
Hyperlink1 = "["..Hyperlink1:gsub('[[][]]','').."]"
Text = Text:gsub('[[](.*)[]]',Hyperlink1 ) 
end
return Text 
end



function Get_Ttl(msgs)
local MsgShow = '' 
local NumMsg = tonumber(msgs)
if NumMsg < 80 then 
MsgShow = 'ضعيف ' 
elseif NumMsg < 300 then
MsgShow = 'متوسط' 
elseif NumMsg < 900 then 
MsgShow = 'قوي  ' 
elseif NumMsg < 5000 then 
MsgShow = 'متفاعل ' 
elseif NumMsg < 9000 then 
MsgShow = 'متفاعل جداً ' 
elseif NumMsg < 10000 then 
MsgShow = 'ملك  التفاعل ' 
elseif NumMsg < 13000 then 
MsgShow = 'ملك التفاعل '
elseif NumMsg < 100000 then 
MsgShow = 'ملك التفاعل ' 
elseif NumMsg > 150000 then 
MsgShow = 'ملك التفاعل ' 
end
return MsgShow 
end

function Getrtba(UserID,ChatID)
if UserID == our_id then 
var = 'هذا البوت ' 
elseif  UserID == SUDO_ID then
var = 'مطور اساسي ' 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then
var = 'مطور البوت ' 
elseif redis:sismember(angel..':KARA_BOT:'..ChatID,UserID) then
var = ' المنشىء الاساسي' 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then
var = ' المنشىء ' 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then
var = 'مدير البوت ' 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then
var = 'ادمن في البوت ' 
elseif redis:sismember(angel..'whitelist:'..ChatID,UserID) then
var = 'عضو مميز ' 
else
var = 'فقط عضو ' 
end
return var
end


function SaveNumMsg(msg)
if msg.edited then
redis:incr(angel..':edited:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.text and not msg.forward_info then
redis:incr(angel..'msgs:'..msg.sender_user_id_..':'..msg.chat_id_)
elseif msg.adduser then 
redis:incr(angel..':adduser:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.photo then
redis:incr(angel..':photo:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.sticker then
redis:incr(angel..':sticker:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.voice then
redis:incr(angel..':voice:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.audio then
redis:incr(angel..':audio:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.video or msg.video_note then
redis:incr(angel..':video:'..msg.chat_id_..':'..msg.sender_user_id_)
elseif msg.animation then
redis:incr(angel..':animation:'..msg.chat_id_..':'..msg.sender_user_id_)
end
end


--================================{{  We Sudoer  }} ===================================

function we_sudo(msg)
if msg.sender_user_id_ == SUDO_ID then
return true 
else
return false
end 
end


--================================{{  List Sudoer  }} ===================================


function sudolist(msg)
local list = redis:smembers(angel..':SUDO_BOT:')
message = '•~  قائمه الـمـطـوريـن : \n\n`•~ مطور اساسي`**\n'..SUDO_USER..' » ❪' ..SUDO_ID.. '❫\n*———————— *\n'
if #list==0 then  message = message.."* •~ لا يوجد مطورين حاليا \n🃏*"
else
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
local count = redis:scard(angel..'mtwr_count'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫\n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫\n'
end
end 
end
send_msg(msg.chat_id_,message,msg.id_)
print(message)
return false 
end

--================================{{  List owner  }} ===================================

function ownerlist(msg)
local message = '*•~ المنشئيين :*\n\n'
local monsha = redis:smembers(angel..':MONSHA_BOT:'..msg.chat_id_)
if #monsha == 0 then 
message = message .."•~ │Not Creator ~⪼ لا يوجد منشئيين !\n🃏"
else
for k,v in pairs(monsha) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end
end
message = message..'*————————  \n\n📋│ قائمه المدراء :*\n\n'
local list = redis:smembers(angel..'owners:'..msg.chat_id_)
if #list == 0 then  
message = message.."•~ Not Director ~⪼ لا يوجد مدراء !\n🃏" 
else
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end
end
send_msg(msg.chat_id_,message,msg.id_)
return false
end

--================================{{ List Admins  }} ===================================

function GetListAdmin(msg)
local list = redis:smembers(angel..'admins:'..msg.chat_id_)
if #list==0 then  return  "•~ *┇* لا يوجد ادمن في هذه المجموعه \n🃏" end
message = '•~*¦ قائمه الادمنيه :*\n\n'
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end
send_msg(msg.chat_id_,message,msg.id_)
return false
end
--================================{{  List WhiteList  }} ===================================

function whitelist(msg)
local list = redis:smembers(angel..'whitelist:'..msg.chat_id_)
if #list == 0 then return "*•~ لا يوجد مميزين في القائمه *" end
message = '•~ **قائمه الاعضاء المميزين :\n'   
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end
send_msg(msg.chat_id_,message,msg.id_)
return false
end

--================================{{  Mute User And List Mute User   }} ===================================

function MuteUser(Group, User)
if redis:sismember(angel..'is_silent_users:'..Group,User) then 
return true 
else
return false
end 
end


function MuteUser_list(msg)
local list = redis:smembers(angel..'is_silent_users:'..msg.chat_id_)
if #list==0 then return "•~ **لايوجد اعضاء مكتومين " end
message = '•~ **قائمه الاعضاء المكتومين :\n'
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end
send_msg(msg.chat_id_,message,msg.id_)
return false
end


--================================{{  Check Banned And List Banned  }} ===================================


function Check_Banned(Group,User)
if redis:sismember(angel..'banned:'..Group,User) then 
return true 
else
return false
end 
end

function GetListBanned(msg)
local list = redis:smembers(angel..'banned:'..msg.chat_id_)
if #list==0 then return "•~ **لايوجد أعضاء محظورين " end
message = '•~ **قائمه الاعضاء المحظورين :\n'
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end 
send_msg(msg.chat_id_,message,msg.id_)
return false
end



--================================{{  Sudoer  }} ===================================

function GeneralBanned(User)
if redis:sismember(angel..'gban_users',User) then 
return true 
else
return false
end 
end

function GetListGeneralBanned(msg)
local list = redis:smembers(angel..'gban_users')
if #list==0 then return  "*•~ لايوجد اعضاء محظورين عام*" end
message = '🃏**قائمه المحظورين عام :\n'
for k,v in pairs(list) do
local info = redis:hgetall(angel..'username:'..v)
if info and info.username and info.username:match("@[%a%d_]+") then
message = message ..k.. '~⪼ '..(info.username or '')..' » ❪`' ..v.. '`❫ \n'
else
message = message ..k.. '~⪼ '..(info.username or '')..' l » ❪`' ..v.. '`❫ \n'
end
end 
send_msg(msg.chat_id_,message,msg.id_)
return false
end

--================================{{  Filter Words  }} ===================================

function FilterX(msg)
local var = false
local Text = (msg.text or msg.content_.caption_)
local list = redis:smembers(angel..':Filter_Word:'..msg.chat_id_)
if #list ~=0 then
for k,word in pairs(list) do
if Text:match('^('..word..')$') or Text:match(word..' .*') or Text:match('.* '..word) then
Del_msg(msg.chat_id_,msg.id_)
print("Word is Del")
var = true
else
var = false
end
end
else
var = false
end 
return var
end


function FilterXList(msg)
local list = redis:smembers(angel..':Filter_Word:'..msg.chat_id_)
if #list == 0 then return "•~ **قائمه الكلمات الممنوعه فارغه" end
filterlist = '•~ **قائمه الكلمات الممنوعه :\n'    
for k,v in pairs(list) do
filterlist = filterlist..'*'..k..'* -  '..Flter_Markdown(v)..'\n'
end 
return filterlist
end

function AddFilter(msg, word)
if redis:sismember(angel..':Filter_Word:'..msg.chat_id_,word) then 
return  "•~ **الكلمه *{"..word.."}* هي بالتأكيد من قائمه المنع✓️" 
else
redis:sadd(angel..':Filter_Word:'..msg.chat_id_,word) 
return  "•~ **الكلمه *{"..word.."}* تمت اضافتها الى قائمه المنع ✓️"
end
end

function RemFilter(msg, word)
if redis:sismember(angel..':Filter_Word:'..msg.chat_id_,word) then 
redis:srem(angel..':Filter_Word:'..msg.chat_id_,word) 
return  "•~ **الكلمه *{"..word.."}* تم السماح بها ✓️" 
else
return  "•~ **الكلمه *{"..word.."}* هي بالتأكيد مسموح بها✓️" 
end
end

------------------------------------------

function CheckFlood(msg)
EnterCmd = true
local NumberFlood = tonumber(redis:get(angel..':Flood_Spam:'..msg.sender_user_id_..':msgs') or 0)
if NumberFlood > 3 then 
redis:setex(angel..':Flood_Spam:'..msg.sender_user_id_..':Stoped',10,true)
EnterCmd = false
elseif redis:get(angel..':Flood_Spam:'..msg.sender_user_id_..':Stoped') then
EnterCmd = false
else
redis:setex(angel..':Flood_Spam:'..msg.sender_user_id_..':msgs',3,NumberFlood+1)
end
return EnterCmd
end


function buck_up_groups(msg)

json_data = '{"BotID": '..angel..',"UserBot": "'..Bot_User..'","Groups" : {'
local All_Groups_ID = redis:smembers(angel..'group:ids')
for key,GroupS in pairs(All_Groups_ID) do
local NameGroup = (redis:get(angel..'group:name'..GroupS) or '')
NameGroup = NameGroup:gsub('"','')
NameGroup = NameGroup:gsub([[\]],'')
if key == 1 then
json_data =  json_data ..'"'..GroupS..'":{"Title":"'..NameGroup..'"'
else
json_data =  json_data..',"'..GroupS..'":{"Title":"'..NameGroup..'"'
end

local admins = redis:smembers(angel..'admins:'..GroupS)
if #admins ~= 0 then
json_data =  json_data..',"Admins" : {'
for key,value in pairs(admins) do
local info = redis:hgetall(angel..'username:'..value)
if info then 
UserName_ = (info.username or "")
UserName_ = UserName_:gsub([[\]],'')
UserName_ = UserName_:gsub('"','')
end 
if key == 1 then
json_data =  json_data..'"'..UserName_..'":'..value
else
json_data =  json_data..',"'..UserName_..'":'..value
end
end
json_data =  json_data..'}'
end

local creators = redis:smembers(angel..':MONSHA_BOT:'..GroupS)
if #creators ~= 0 then
json_data =  json_data..',"Creator" : {'
for key,value in pairs(creators) do
local info = redis:hgetall(angel..'username:'..value)
if info then 
UserName_ = (info.username or "")
UserName_ = UserName_:gsub([[\]],'')
UserName_ = UserName_:gsub('"','')
end 
if key == 1 then
json_data =  json_data..'"'..UserName_..'":'..value
else
json_data =  json_data..',"'..UserName_..'":'..value
end 
end
json_data =  json_data..'}'
end


local creator = redis:smembers(angel..':KARA_BOT:'..GroupS)
if #creator ~= 0 then
json_data =  json_data..',"Kara" : {'
for key,value in pairs(creator) do
local info = redis:hgetall(angel..'username:'..value)
if info then 
UserName_ = (info.username or "")
UserName_ = UserName_:gsub([[\]],'')
UserName_ = UserName_:gsub('"','')
end 
if key == 1 then
json_data =  json_data..'"'..UserName_..'":'..value
else
json_data =  json_data..',"'..UserName_..'":'..value
end 
end
json_data =  json_data..'}'
end

local owner = redis:smembers(angel..'owners:'..GroupS)
if #owner ~= 0 then
json_data =  json_data..',"Owner" : {'
for key,value in pairs(owner) do
local info = redis:hgetall(angel..'username:'..value)
if info then 
UserName_ = (info.username or "")
UserName_ = UserName_:gsub([[\]],'')
UserName_ = UserName_:gsub('"','')
end 
if key == 1 then
json_data =  json_data..'"'..UserName_..'":'..value
else
json_data =  json_data..',"'..UserName_..'":'..value
end
end
json_data =  json_data..'}'
end

json_data =  json_data.."}"
end

local Save_Data = io.open("./inc/"..Bot_User..".json","w+")
Save_Data:write(json_data..'}}')
Save_Data:close()
sendDocument(msg.chat_id_,msg.id_,"./inc/"..Bot_User..".json","•~ ملف النسخه الاحتياطيه ...\n•~ المجموعات » { "..#All_Groups_ID.." }\n•~ للبوت » "..Bot_User.."\n•~ التاريخ » "..os.date("%Y/%m/%d").."\n",dl_cb,nil)
end

function chat_list(msg)
local list = redis:smembers(angel..'group:ids')
message = '•~ **قائمه المجموعات :\n\n'
for k,v in pairs(list) do 
local info = redis:get(angel..'group:name'..v)
if info then 
if utf8.len(info) > 25 then
info = utf8.escape(utf8.gsub(info,0,25))..'...'
end
message = message..k..'ـ '..Flter_Markdown(info).. ' \nــ •⊱ { `' ..v.. '` } ⊰•\n\n'
else 
message = message..k.. 'ـ '..' ☜ •⊱ { `' ..v.. '` } ⊰• \n'
end 
end
all_groups = '•~ قائمه المجموعات :<br><br>'
for k,v in pairs(list) do 
local info = redis:get(angel..'group:name'..v)
if info then
all_groups = all_groups..' '..k..'- <span style="color: #bd2a2a;">'..info.. '</span> <br> ايدي ☜ (<span style="color:#078883;">' ..v.. '</span>)<br>'
else
all_groups = all_groups..' '..k.. '- '..' ☜ (<span style="color:#078883;">' ..v.. '</span>) <br>'
end 
end

if utf8.len(message) > 4096 then
sendMsg(msg.chat_id_,1,'•~ **عذرا لديك الكثير من المجموعات\n•~ **سوف ارسل لك ملف فيها قائمه مجموعات المفعله انتظر لحظه ...')
file = io.open("./inc/All_Groups.html", "w")
file:write([[
<html dir="rtl">
<head>
<title>قائمه المجموعات •~ </title>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Harmattan" rel="stylesheet">

</head>
<style>*{font-family: 'Harmattan', sans-serif;font-weight: 600;text-shadow: 1px 1px 16px black;}</style>
<body>
<p style="color:#018bb6;font-size: 17px;font-weight: 600;" aligin="center">قائمه المجموعات 🗣</p>
<hr>
]]..all_groups..[[

</body>
</html>
]])
file:close()
return sendDocument(msg.chat_id_,msg.id_,'./inc/All_Groups.html','•~|قائمه المجموعات بالكامله ✓ \n•~│يحتوي ('..#list..') مجموعه \n•~│افتح الملف في عارض HTML او بالمتصفح',dl_cb,nil)
else 
return sendMsg(msg.chat_id_,1,message) 
end 
end



function rem_data_group(id_group)
redis:del(
angel..'group:add'..id_group,
angel..'lock_link'..id_group, 
angel..'lock_id'..id_group,
angel..'lock_spam'..id_group, 
angel..'lock_webpage'..id_group,
angel..'lock_markdown'..id_group,
angel..'lock_flood'..id_group,
angel..'lock_bots'..id_group,
angel..'mute_forward'..id_group,
angel..'mute_contact'..id_group,
angel..'mute_location'..id_group,
angel..'mute_document'..id_group,
angel..'mute_keyboard'..id_group,
angel..'mute_game'..id_group,
angel..'mute_inline'..id_group,
angel..'lock_username'..id_group,
angel..'num_msg_angel'..id_group,
angel..'replay'..id_group
)
redis:srem(angel..'group:ids',id_group)
end



function set_admins(msg) 
GetChannelAdministrators(msg.chat_id_,function(arg,data)
local NumAdmin = 0
for k,v in pairs(data.members_) do
if not data.members_[k].bot_info_ and data.members_[k].status_.ID == "ChatMemberStatusEditor" then
NumAdmin = NumAdmin + 1
GetUserID(v.user_id_,function(arg,data)
redis:hset(angel..'username:'..data.id_,'username',ResolveUser(data))
redis:sadd(angel..'admins:'..msg.chat_id_,data.id_)
end,nil)
end
end
if NumAdmin == 0 then 
return sendMsg(msg.chat_id_,msg.id_,"•~ لا يـوجـد أدمـنـيـه لكي يتـم رفعهم \n")
else
return sendMsg(msg.chat_id_,msg.id_,"•~ تم رفع  { *"..NumAdmin.."* } مـن آلآدمـنيه في آلبوت \n✓️")
end
end,100)
end

function modadd(msg)
if redis:get(angel..'lock_service') then
service = true
Get_Director = 30
else
service = false
Get_Director = 1
end 
if not msg.SudoUser and not service then return '•~ أنـت لـسـت الـمـطـور ⚙️' end
if msg.is_post_ then return "•~ عذرا هذا بوت حمايه المجموعات وليس القنوات  " end
if msg.type ~= "channel" then return '•~ لا يمكنك تفعيل البوت في المجوعات العاديه / البوت يدعم فقط المجموعات الخارقه ⚙️' end
if redis:get(angel..'group:add'..msg.chat_id_) then  return '•~**المجموعه بالتأكيد ✓️ تم تفعيلها' end

local UserChaneel = redis:get(angel..":UserNameChaneel")
if UserChaneel and not msg.SudoBase then
local url , res = https.request(ApiToken..'/getchatmember?chat_id='..UserChaneel..'&user_id='..msg.sender_user_id_)
if res == 200 then
print(url) 
local Req = JSON.decode(url)
if Req.ok and Req.result and Req.result.status == "left" or Req.result.status == "kicked" then
return "•~ آشـترگ بآلقنآ‌‏هہ آولآ ["..UserChaneel.."] \n•~ ثم آرجع آرسـل تفعيل ."
end
else
return "•~ آشـترگ بآلقنآ‌‏هہ آولآ ["..UserChaneel.."] \n•~ ثم آرجع آرسـل تفعيل ."
end
end
 
redis:setex(angel..":ismember:"..msg.sender_user_id_,1500,true)
GetFullChat(msg.chat_id_,function(arg,data) 
local GroupUsers = tonumber(redis:get(angel..':addnumberusers') or 0)
local Groupcount = tonumber(data.member_count_)
if GroupUsers  >= Groupcount and not msg.SudoBase then
return sendMsg(msg.chat_id_,msg.id_,'•~**لآ يمـگنني تفعيل آلبوت في آلمـجمـوعهہ‏ يجب آن يگون آگثر مـن *【'..GroupUsers..'】* عضـو ')
else 
GetChatMember(msg.chat_id_,our_id,function(arg,data)
if data.status_.ID == "ChatMemberStatusMember" then
return sendMsg(msg.chat_id_,msg.id_,'•~ **عذرا البوت ليس ادمن  في المجموعه 🃏\n•~**يرجى ترقيته ادمن لتتمكن من تفعيل البوت ✓️')
else
local lock_service = redis:get(angel..'lock_service')
if lock_service then 
sendMsg(msg.chat_id_,msg.id_,'•~ *تـم تـفـعـيـل الـمـجـمـوعـه ✓️ \n🃏*وتم رفع جمـيع آلآدمـنيه بآلبوت \n✓')
else
sendMsg(msg.chat_id_,msg.id_,'•~ تـم تـفـعـيـل آلمـجمـوعه‏‏ \n✓️')
end
GetChannelAdministrators(msg.chat_id_,function(arg,data)
for k,v in pairs(data.members_) do
if data.members_[k].status_.ID == "ChatMemberStatusCreator" then
GetUserID(v.user_id_,function(arg,data)
redis:hset(angel..'username:'..data.id_, 'username', ResolveUser(data))
redis:sadd(angel..':KARA_BOT:'..msg.chat_id_,data.id_)
end)
elseif lock_service and not data.members_[k].bot_info_ and data.members_[k].status_.ID == "ChatMemberStatusEditor" then
GetUserID(v.user_id_,function(arg,data)
redis:hset(angel..'username:'..data.id_,'username',ResolveUser(data))
redis:sadd(angel..'admins:'..msg.chat_id_,data.id_)
end,nil)
end
end 

redis:mset(
angel..'group:add'..msg.chat_id_,true,
angel..'lock_link'..msg.chat_id_,true, 
angel..'lock_id'..msg.chat_id_,true,
angel..'lock_spam'..msg.chat_id_,true,
angel..'lock_webpage'..msg.chat_id_,true,
angel..'lock_markdown'..msg.chat_id_,true,
angel..'lock_flood'..msg.chat_id_,true,
angel..'lock_bots'..msg.chat_id_,true,
angel..'mute_forward'..msg.chat_id_,true,
angel..'mute_contact'..msg.chat_id_,true,
angel..'mute_location'..msg.chat_id_,true,
angel..'mute_document'..msg.chat_id_,true,
angel..'mute_keyboard'..msg.chat_id_,true,
angel..'mute_game'..msg.chat_id_,true,
angel..'mute_inline'..msg.chat_id_,true,
angel..'lock_username'..msg.chat_id_,true,
angel..'num_msg_angel'..msg.chat_id_,5, 
angel..'replay'..msg.chat_id_,true
)

redis:sadd(angel..'group:ids',msg.chat_id_) 
redis:sadd(angel..'mtwr_count'..msg.sender_user_id_,msg.chat_id_)

GroupTitle(msg.chat_id_,function(arg,data)
local NameGroup = data.title_
redis:set(angel..'group:name'..msg.chat_id_,NameGroup)
local Gp_Link = ExportLink(msg.chat_id_)
if Gp_Link and Gp_Link.result then
Gp_Link = Gp_Link.result
else
Gp_Link = ""
end
redis:set(angel..'linkGroup'..msg.chat_id_,Gp_Link)
if not we_sudo(msg) then
GetUserID(msg.sender_user_id_,function(arg,datai)
if datai.username_ then 
USERNAME_T = '•~ **الـمعرف ❪ @['..datai.username_..'] ❫\n'
else 
USERNAME_T = ''
end
return send_msg(SUDO_ID,'•~ ** تــــم تــفــعــيــل الـــبـــوت ...\n-------------------\n•~معلومات المجموعه\n'
..'•~ اسم المجموعه ❪ ['..NameGroup..']('..Gp_Link..') ❫\n'
..'•~ايدي المجموعه ❪ '..msg.chat_id_..' ❫\n'
..'•~ عدد اعضاء المجموعه ❪ *'..Groupcount..'* ❫ \n--------------------\n•~ معلومات الشخص الي ضافني \n'
..'•~**الاسـم ❪ ['..FlterName(datai.first_name_..' '..(datai.last_name_ or ""),23)..'](tg://user?id='..msg.sender_user_id_..') ❫\n'
..USERNAME_T..'\n•~ تاريخ التفعيل ❪* '..os.date("%Y/%m/%d")
..' *❫\n•~ الساعه ❪* '..os.date("%I:%M%p")..' *❫')
end,nil)
end
end)
end,Get_Director) 
end
end)
end 
end)
return false
end 

function modrem(msg)
if not msg.SudoUser then return '•~ ** أنـت لـسـت الـمـطـور ⚙️'end
if not redis:get(angel..'group:add'..msg.chat_id_) then return '•~ ** المجموعه بالتأكيد ✓️ تم تعطيلها' end  
rem_data_group(msg.chat_id_)
return '•~ ** تـم تـعـطـيـل الـمـجـمـوعـه '
end

function modrem(msg)
if not msg.SudoUser then return '•~ **أنـت لـسـت الـمـطـور ⚙️'end
if not redis:get(angel..'group:add'..msg.chat_id_) then return '•~ **المجموعه بالتأكيد ✓️ تم تعطيلها' end  
rem_data_group(msg.chat_id_)
return '•~ **تـم تـعـطـيـل الـمـجـمـوعـه '
end

function action_by_reply(arg,data)  --===  معلومات الرد 
local MsgID = arg.msg.id_
local ChatID = arg.msg.chat_id_
if data.sender_user_id_ then
local cmd = arg.cmd
local UserID = data.sender_user_id_
GetUserID(UserID,function(arg,data)

local Resolv = ResolveUser(data)

if data.username_ then 
USERNAME = '@'..data.username_
else 
USERNAME = FlterName(data.first_name_..' '..(data.last_name_ or ""),20) 
end
USERCAR = utf8.len(USERNAME)


if cmd =="tqeed" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد البوت\n🃏") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المطور الاساسي\n🃏") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المطور\n🃏") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المنشئ\n🃏") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المدير\n🃏") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد الادمن\n🃏") 
end
GetChatMember(ChatID,UserID,function(arg,data)
if data.status_.ID == "ChatMemberStatusMember" then
Restrict(ChatID,UserID,1)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تقييد آلعضـو بنجآح \n✓️',17,USERCAR) 
else
return sendMsg(ChatID,MsgID,"•~ **لا يمكنني تقييد المشرف\n") 
end
end)
end

if cmd =="fktqeed" then
if UserID == our_id then  
return sendMsg(ChatID,MsgID,"•~ **البوت ليس مقييد  \n❕") 
end
Restrict(ChatID,UserID,2)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم فگ تقييد آلعضـو بنجآح \n✓️',17,USERCAR) 
end

if cmd == "setmnsha" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID  == "UserTypeBot" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
elseif data.type_.ID == "chatTypeChannel" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد منشىء  \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID,'username',Resolv)
redis:sadd(angel..':MONSHA_BOT:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح منشىء في البوت \n✓️',17,USERCAR) 
end

if cmd == "remmnsha" then
if not redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس منشىء \n✓️',17,USERCAR) 
end
redis:srem(angel..':MONSHA_BOT:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تنزيله من المنشىء \n✓️',17,USERCAR) 
end

if cmd == "setkara" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID  == "UserTypeBot" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
elseif data.type_.ID == "chatTypeChannel" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..':KARA_BOT:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد منشىء اساسي \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID,'username',Resolv)
redis:sadd(angel..':KARA_BOT:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح منشىء اساسي في البوت \n✓️',17,USERCAR) 
end

if cmd == "remkara" then
if not redis:sismember(angel..':KARA_BOT:'..ChatID,UserID) then
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس منشىء اساسي\n✓️',17,USERCAR) 
end
redis:srem(angel..':KARA_BOT:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تنزيله من المنشىء الاساسي\n✓️',17,USERCAR) 
end

if cmd == "setwhitelist" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "UserTypeBot" then
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
elseif data.type_.ID == "ChatTypeChannel" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..'whitelist:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد عضو مميز \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'whitelist:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح عضو مميز \n✓️',17,USERCAR) 
end

if cmd == "remwhitelist" then
if not redis:sismember(angel..'whitelist:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس عضو مميز \n✓️',17,USERCAR) 
end
redis:srem(angel..'whitelist:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت تنزيله من عضو مميز \n✓️',17,USERCAR) 
end

if cmd == "setowner" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "UserTypeBot" then
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
end
if redis:sismember(angel..'owners:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد مدير \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'owners:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح مدير \n✓️',17,USERCAR) 
end

if cmd == "promote" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "UserTypeBot" then
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
end
if redis:sismember(angel..'admins:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ادمن \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'admins:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح ادمن \n✓️',17,USERCAR) 
end

if cmd == "remowner" then
if not redis:sismember(angel..'owners:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس مدير \n✓️',17,USERCAR) 
end
redis:srem(angel..'owners:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تنزيله من المدير  \n✓️',17,USERCAR) 
end

if cmd == "demote" then
if not redis:sismember(angel..'admins:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس ادمن \n✓️',17,USERCAR) 
end
redis:srem(angel..'admins:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تنزيله من الادمنيه \n✓️',17,USERCAR) 
end

if cmd == "iduser" then
return SendMention(ChatID,UserID,MsgID,"•~ آضـغط على آلآيدي ليتم آلنسـخ\n\n "..USERNAME.." ~⪼ { "..UserID.." }",37,USERCAR)
end
if cmd == "whois" then
local namei = data.first_name_..' '..(data.last_name_ or "")
if data.username_ then useri = '@'..data.username_ else useri = " لا يوجد " end
return SendMention(ChatID,UserID,MsgID,'•~ الاسم » '..namei..'\n'
..'•~ الايدي » {'..UserID..'} \n'
..'•~ المعرف » '..useri..'\n'
..'•~ الرتبه » '..Getrtba(UserID,ChatID)..'\n'
..'•~ نوع الكشف » بالرد\n➖',13,utf8.len(namei))
end

if cmd == "active" then
local maseegs = redis:get(angel..'msgs:'..UserID..':'..ChatID) or 1
local namei = FlterName(data.first_name_..' '..(data.last_name_ or ""))
return SendMention(ChatID,UserID,MsgID,'•~ العضو » '..namei..' \n•~ رسائلك » ❪ '..maseegs..' ❫ رسالةة\n•~ التفاعل »  ❪ '..Get_Ttl(maseegs)..' ❫\n',12,utf8.len(namei)) 
end

if cmd == "ban" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر الادمن\n❕") 
end
kick_user(UserID,ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(ChatID,MsgID,'•~ **لا يمكنني حظر العضو .\n•~ **لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(ChatID,MsgID,'•~ **لا يمكنني حظر العضو .\n•~ **ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
else
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'banned:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم حظره  \n✓️',17,USERCAR) 
end
end)

end

if cmd == "unban" then
if not redis:sismember(angel..'banned:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم بالتأكيد الغاء حظره  \n✓️',17,USERCAR) 
else
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم الغاء حظره \n✓️',17,USERCAR) 
end
redis:srem(angel..'banned:'..ChatID,UserID)
StatusLeft(ChatID,UserID)
end

if cmd == "silent" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم الادمن\n❕") 
end
if redis:sismember(angel..'is_silent_users:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم بالتأكيد كتمه  \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'is_silent_users:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم كتمه \n✓️',17,USERCAR) 
end

if cmd == "unsilent" then
if not redis:sismember(angel..'is_silent_users:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم بالتاكيد الغاء كتمه  \n✓️',17,USERCAR) 
end
redis:srem(angel..'is_silent_users:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم الغاء كتمه  \n✓️',17,USERCAR) 
end

if cmd == "banall" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ ** لا يمكنك حظر المطور الاساسي\n❕")
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور\n❕") 
end
if GeneralBanned(UserID) then return sendMsg(ChatID,MsgID,'•~ ** العضو » ❪ '..USERNAME..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم بالتأكيد حظره عام \n✓️') end
redis:hset(angel..'username:'..UserID, 'username',Resolv)
redis:sadd(angel..'gban_users',UserID)
kick_user(UserID, ChatID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم حظره عام \n✓️',17,USERCAR) 
end

if cmd == "unbanall" then
if not GeneralBanned(UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم بالتأكيد الغاء حظره العام \n✓️',17,USERCAR) 
end
redis:srem(angel..'gban_users',UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم الغاء حظره العام \n✓️',17,USERCAR) 
end

if cmd == "kick" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد الادمن\n❕") 
end
kick_user(UserID, ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(ChatID,MsgID,'•~ ** لا يمكنني حظر العضو .\n•~ **لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(ChatID,MsgID,'•~ ** لا يمكنني حظر العضو .\n•~ **ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'banned:'..ChatID,UserID)
StatusLeft(ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم طرد العضو \n✓️',17,USERCAR) 
end)

end

if cmd == "rtba" then
GetChatMember(ChatID,UserID,function(arg,data)
if data.status_ and data.status_.ID == "ChatMemberStatusEditor" then
SudoGroups = 'مشرف '
elseif data.status_ and data.status_.ID == "ChatMemberStatusCreator" then 
SudoGroups = "منشئ اساسي ."
else
SudoGroups = "عضو .!"
end
if UserID == our_id then 
Getrtb = 'ادمن' 
elseif  UserID == SUDO_ID then
Getrtb = 'مطور اساسي ' 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then
Getrtb = 'مطور ' 
elseif redis:sismember(angel..':KARA_BOT:'..ChatID,UserID) then
Getrtb = 'منشئ اساسي' 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then
Getrtb = 'منشئ' 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then
Getrtb = 'المدير ' 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then
Getrtb = 'ادمن' 
elseif redis:sismember(angel..'whitelist:'..ChatID,UserID) then
Getrtb = 'مميز' 
else
Getrtb = 'عضو' 
end
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n\nـ⠀❪ رتـبـه الشخص ❫\n\n•~ في البوت » ❪ '..Getrtb..' ❫\n•~ في المجموعه » ❪ '..SudoGroups..' ❫\n✓',12,USERCAR) 
end)
end

if cmd == "up_sudo" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "UserTypeBot" then
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
end
if redis:sismember(angel..':SUDO_BOT:',UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد مطور \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..':SUDO_BOT:',UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم ترقيته ليصبح مطور \n✓️',17,USERCAR) 
end

if cmd == "dn_sudo" then
if not redis:sismember(angel..':SUDO_BOT:',UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس مطور \n✓️',17,USERCAR) 
end
redis:srem(angel..':SUDO_BOT:',UserID)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تنزيله من المطورين \n✓️',17,USERCAR) 
end  -- End Cmd 
end,nil)
else
return sendMsg(ChatID,MsgID,"•~ ** عذرا هذا العضو ليس موجود ضمن المجموعات \n❕")
end 
end


function action_by_username(arg,data)
local cmd = arg.cmd 

local ChatID = arg.msg.chat_id_
local MsgID = arg.msg.id_
if data.id_ then
local UserID = data.id_
local UserName = '@'..arg.msg.text:match('@[%a%d_]+'):gsub('@',''):gsub('_',[[\_]])
print(UserName)
if cmd =="tqeed" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد الادمن\n❕") 
end
GetChatMember(ChatID,our_id,function(arg,data)
if data.status_.ID == "ChatMemberStatusEditor" then 
GetChatMember(ChatID,UserID,function(arg,data)
if data.status_.ID == "ChatMemberStatusMember" then 
Restrict(ChatID,UserID,1)  
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم تقييد آلعضـو بنجآح \n✓️') 
else
return sendMsg(ChatID,MsgID,'•~ **لا يمكنني تقييد العضو .\n•~ **لانه مشرف في المجموعه \n ❕')    
end
end)
else
return sendMsg(ChatID,MsgID,'•~ **لا يمكنني تقييد العضو .\n•~ **لانني لست مشرف في المجموعه \n ❕')    
end
end)

end

if cmd =="fktqeed" then
if UserID == our_id then  
return sendMsg(ChatID,MsgID,"•~ **البوت ليس مقييد \n❕ ") 
end
GetUserID(UserID,function(arg,data)
GetChatMember(ChatID,our_id,function(arg,data)
if data.status_.ID == "ChatMemberStatusEditor" then 
Restrict(ChatID,UserID,2)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم فك تقييد آلعضـو بنجآح \n✓️') 
else
return sendMsg(ChatID,MsgID,'•~ **لا يمكنني قك تقييد العضو .\n•~ **لانني لست مشرف في المجموعه \n ❕')    
end
end)
end,nil)
end

if cmd == "setmnsha" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "UserTypeBot" then
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع بوت في البوت \n❕") 
elseif data.type_.ID == "ChatTypeChannel" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد منشىء في البوت \n✓️') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..':MONSHA_BOT:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تمت ترقيته ليصبح منشىء في البوت \n✓️')
end

if cmd == "remmnsha" then
if not redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد ليس منشىء \n✓️') 
end
redis:srem(angel..':MONSHA_BOT:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تمت تنزيله من المنشىء \n✓️') 
end

if cmd == "setwhitelist" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..'whitelist:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'🙍🏻‍♂*•~ *العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~**انه بالتأكيد من عضو مميز \n✓️') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'whitelist:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تمت ترقيته ليصبح ضمن عضو مميز \n✓️')
end

if cmd == "remwhitelist" then
if not redis:sismember(angel..'whitelist:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد ليس من عضو مميز \n✓️') 
end
redis:srem(angel..'whitelist:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تمت تنزيله من عضو مميز \n✓️')
end

if cmd == "setowner" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد مدير \n✓️') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'owners:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تمت ترقيته ليصبح مدير \n✓️')
end

if cmd == "promote" then
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني رفع نفسي \n❕") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن رفع قناة في البوت \n❕") 
end
if redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد ادمن \n✓️') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'admins:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تمت ترقيته ليصبح ادمن \n✓️')
end

if cmd == "remowner" then
if not redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد ليس مدير \n✓️') 
end
redis:srem(angel..'owners:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم تنزيله من الاداره \n✓️')
end

if cmd == "demote" then
if not redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد ليس ادمن \n✓️') 
end
redis:srem(angel..'admins:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم تنزيله من الادمنيه \n✓️')
end

if cmd == "iduser" then
return sendMsg(ChatID,MsgID,"•~ ** آضـغط على آلآيدي ليتم آلنسـخ\n\n "..UserName.." ~⪼ ( `"..UserID.."` )")
end

if cmd == "whois" then
return sendMsg(ChatID,MsgID,
  'ـ•~ ** الاسم » '..FlterName(data.title_,30)..'\n'
..'•~ ** الايدي » {`'..UserID..'`} \n'
..'•~ ** المعرف » '..UserName..'\n'
..'•~ ** نوع الكشف » بالمعرف\n'
..'➖')
end

if cmd == "active" then
local maseegs = redis:get(angel..'msgs:'..UserID..':'..ChatID) or 1
local namei = FlterName(data.title_)
return SendMention(ChatID,UserID,MsgID,'•~ العضو » ❪ '..namei..' ❫\n•~ رسائلك » ❪ '..maseegs..' ❫ رسالة\n•~ التفاعل »  ❪ '..Get_Ttl(maseegs)..' ❫\n',12,utf8.len(namei)) 
end 

if cmd == "ban" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر الادمن\n❕") 
end
if UserID == our_id then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكنني حظر نفسي \n❕") 
elseif data.type_.ID == "ChannelChatInfo" then 
return sendMsg(ChatID,MsgID,"•~ **عذرا لا يمكن حظر قناة \n❕") 
end
if redis:sismember(angel..'banned:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم بالتأكيد حظره \n✓️') 
end
kick_user(UserID, ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(ChatID,MsgID,'•~ ** لا يمكنني حظر العضو .\n**لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(ChatID,MsgID,'•~ ** لا يمكنني حظر العضو .\n•~ **ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'banned:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم حظره \n✓️')
end)
end  

if cmd == "unban" then
if not redis:sismember(angel..'banned:'..ChatID,UserID) then 
sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم بالتأكيد الغاء حظره \n✓️') 
else
sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم الغاء حظره \n✓️')
end
redis:srem(angel..'banned:'..ChatID,UserID)
StatusLeft(ChatID, UserID)
end

if cmd == "silent" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك كتم الادمن\n❕") 
end
if redis:sismember(angel..'is_silent_users:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪`'..UserID..'` ❫\n•~ **تم بالتأكيد كتمه \n✓️') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'is_silent_users:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم كتمه \n✓️')
end

if cmd == "unsilent" then
if not redis:sismember(angel..'is_silent_users:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,'•~**العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **م بالتأكيد الغاء كتمه \n✓️') 
end
redis:srem(angel..'is_silent_users:'..ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم الغاء كتمه \n✓️')
end

if cmd == "banall" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور الاساسي\n❕")
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك حظر المطور\n❕") 
end
if GeneralBanned(UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم بالتأكيد حظره عام \n✓️') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'gban_users',UserID)
kick_user(UserID, ChatID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم حظره عام \n✓️')
end

if cmd == "unbanall" then
if not GeneralBanned(UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم بالتأكيد الغاء حظره العام \n✓️') 
end
redis:srem(angel..'gban_users',UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم الغاء حظره العام \n✓️')
end

if cmd == "kick" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد الادمن\n❕") 
end
kick_user(UserID,ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(ChatID,MsgID,'•~ ** لا يمكنني طرد العضو .\n•~ **لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(ChatID,MsgID,'•~ ** لا يمكنني طرد العضو .\n•~ **ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..'banned:'..ChatID,UserID)
StatusLeft(ChatID,UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~**الايدي » ❪ `'..UserID..'` ❫\n•~ **تم طرد العضو \n✓️')
end)
 
end

if cmd == "up_sudo" then
if redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **انه بالتأكيد مطور \n✓') 
end
redis:hset(angel..'username:'..UserID, 'username', UserName)
redis:sadd(angel..':SUDO_BOT:',UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم ترقيته ليصبح مطور \n✓')
end

if cmd == "dn_sudo" then
if not redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n**نه بالتأكيد ليس مطور \n✓')
end
redis:srem(angel..':SUDO_BOT:',UserID)
return sendMsg(ChatID,MsgID,'•~ **العضو » ❪ '..UserName..' ❫\n•~ **الايدي » ❪ `'..UserID..'` ❫\n•~ **تم تنزيله من المطورين \n✓') 
end

else
return sendMsg(ChatID,MsgID,"•~ ** لآ يوجد عضـو بهذآ آلمـعرف \n❕")
end 

end

function action_by_id(arg, data)

local cmd = arg.cmd
local ChatID = arg.msg.chat_id_
local MsgID = arg.msg.id_
if not data.id_ then 
sendMsg(ChatID,MsgID,"•~ ** العضو لا يوجد\n❕") 
return false
end
local UserID = data.id_
local Resolv = ResolveUser(data)

if data.username_ then 
USERNAME = '@'..data.username_
else 
USERNAME = FlterName(data.first_name_..' '..(data.last_name_ or ""),20) 
end
USERCAR = utf8.len(USERNAME)


if cmd == "tqeed" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك تقييد البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~ **لا يمكنك طرد الادمن\n❕") 
end
Restrict(ChatID,UserID,1)
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..':tqeed:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تقييد آلعضـو بنجآح \n✓️',17,USERCAR) 
end 
if cmd =="fktqeed" then
Restrict(ChatID,UserID,2)
redis:srem(angel..':tqeed:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم فگ تقييد آلعضـو بنجآح \n✓️',17,USERCAR) 
end
if cmd == "setwhitelist" then
if redis:sismember(angel..'whitelist:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد من عضو مميز \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'whitelist:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح ضمن عضو مميز \n✓️',17,USERCAR) 
end
if cmd == "setmnsha" then
if redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد منشىء \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..':MONSHA_BOT:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت ترقيته ليصبح منشىء في البوت \n✓️',17,USERCAR) 
end
if cmd == "remmnsha" then
if not redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'ةلالعضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس منشىء \n✓️',17,USERCAR) 
end
redis:srem(angel..':MONSHA_BOT:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تم تنزيله من المنشىء \n✓️',17,USERCAR) 
end
if cmd == "remwhitelist" then
if not redis:sismember(angel..'whitelist:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~ انه بالتأكيد ليس من عضو مميز \n✓️',17,USERCAR) 
end
redis:srem(angel..'whitelist:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~ الايدي » ❪ '..UserID..' ❫\n•~ تمت تنزيله من عضو مميز \n✓️',17,USERCAR) 
end
if cmd == "setowner" then
if redis:sismember(angel..'owners:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~انه بالتأكيد مدير \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'owners:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تمت ترقيته ليصبح مدير \n✓️',17,USERCAR) 
end
if cmd == "promote" then
if redis:sismember(angel..'admins:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~انه بالتأكيد ادمن \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'admins:'..ChatID,UserID) 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تمت ترقيته ليصبح ادمن \n✓️',17,USERCAR) 
end
if cmd == "remowner" then
if not redis:sismember(angel..'owners:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~انه بالتأكيد ليس مدير \n✓️',17,USERCAR) 
end
redis:srem(angel..'owners:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم تنزيله من الاداره \n✓️',17,USERCAR) 
end
if cmd == "demote" then
if not redis:sismember(angel..'admins:'..ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~انه بالتأكيد ليس ادمن \n✓️',17,USERCAR) 
end
redis:srem(angel..'admins:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم تنزيله من الادمنيه \n✓️',17,USERCAR) 
end
if cmd == "whois" then
GetChatMember(ChatID,UserID,function(arg,data1)
local namei = data1.first_name_..' '..(data1.last_name_ or "")
if data1.username_ then useri = '@'..data1.username_ else useri = " لا يوجد " end
return SendMention(ChatID,UserID,MsgID,'•~ الاسم » '..namei..'\n'
..'•~ الايدي » {'..UserID..'} \n'
..'•~ المعرف » '..useri..'\n'
..'•~ الرتبه » '..Getrtba(UserID,ChatID)..'\n'
..'•~ نوع الكشف » بالايدي\n➖',13,utf8.len(namei))
end)
end

if cmd == "up_sudo" then
if redis:sismember(angel..':SUDO_BOT:',UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~نه بالتأكيد مطور \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..':SUDO_BOT:',UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم ترقيته ليصبح مطور \n✓️',17,USERCAR) 
end

if cmd == "dn_sudo" then
if not redis:sismember(angel..':SUDO_BOT:',UserID) then return sendMsg(ChatID,MsgID,'•~**العضو » '..USERNAME..' \n•~** الايدي » (`'..UserID..'`)\n•~**انه بالتأكيد ليس مطور \n✓') end
redis:srem(angel..':SUDO_BOT:',UserID) 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم تنزيله من المطورين \n✓️',17,USERCAR) 
end

if cmd == "ban" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر الادمن\n❕") 
end
if Check_Banned(ChatID,UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم بالتأكيد حظره \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'banned:'..ChatID,UserID)
kick_user(UserID, ChatID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم حظره  \n✓️',17,USERCAR) 
end

if cmd == "kick" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~**لا يمكنك طرد البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك طرد المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك طرد المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك طرد المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك طرد المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك طرد الادمن\n❕") 
end
kick_user(UserID, ChatID,function(arg,data)
if data.ID == "Error" and data.code_ == 400 then
return sendMsg(ChatID,MsgID,'•~** لا يمكنني طرد العضو .\n•~** لانه مشرف في المجموعه \n ❕')    
elseif data.ID == "Error" and data.code_ == 3 then
return sendMsg(ChatID,MsgID,'•~** لا يمكنني طرد العضو .\n•~** ليس لدي صلاحيه الحظر او لست مشرف\n ❕')    
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'banned:'..ChatID,UserID)
StatusLeft(ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم طرد العضو \n✓️',17,USERCAR) 
end)
end

if cmd == "uban" then
if not Check_Banned(ChatID,UserID) then 
 SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم بالتأكيد الغاء حظره \n✓️',17,USERCAR) 
else
 SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم الغاء حظره \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:srem(angel..'banned:'..ChatID,UserID)
StatusLeft(ChatID,UserID)
return false
end

if cmd == "ktm" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم المطور الاساسي\n❕") 
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم المطور\n❕") 
elseif redis:sismember(angel..':MONSHA_BOT:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم المنشئ\n❕") 
elseif redis:sismember(angel..'owners:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم المدير\n❕") 
elseif redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم الادمن\n❕") 
end
if redis:sismember(angel..'admins:'..ChatID,UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك كتم المدراء او الادمنيه\n❕") 
end
if MuteUser(ChatID, UserID) then
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم بالتأكيد كتمه \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'is_silent_users:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم كتمه  \n✓️',17,USERCAR) 
end

if cmd == "unktm" then
if not MuteUser(ChatID, UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم بالتأكيد الغاء كتمه \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:srem(angel..'is_silent_users:'..ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم الغاء كتمه \n✓️',17,USERCAR) 
end

if cmd == "bandall" then
if UserID == our_id then   
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر البوت\n❕") 
elseif UserID == SUDO_ID then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر المطور الاساسي\n❕")
elseif redis:sismember(angel..':SUDO_BOT:',UserID) then 
return sendMsg(ChatID,MsgID,"•~**لا يمكنك حظر المطور\n❕") 
end
if GeneralBanned(UserID) then 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم بالتأكيد حظره عام \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:sadd(angel..'gban_users',UserID)
kick_user(UserID,ChatID) 
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم حظره عام \n✓️',17,USERCAR) 
end

if cmd == "unbandall" then
if not GeneralBanned(UserID) then
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم بالتأكيد الغاء حظره العام \n✓️',17,USERCAR) 
end
redis:hset(angel..'username:'..UserID, 'username', Resolv)
redis:srem(angel..'gban_users',UserID)
StatusLeft(ChatID,UserID)
return SendMention(ChatID,UserID,MsgID,'•~العضو » ❪ '..USERNAME..' ❫\n•~الايدي » ❪ '..UserID..' ❫\n•~تم الغاء حظره العام \n✓️',17,USERCAR) 
end

end

function settingsall(msg)
if redis:get(angel..'welcome:get'..msg.chat_id_) then welcomex = "❪ مفعل ❫" else welcomex = "❪ معطل ❫" end
if redis:get(angel..'lock_id'..msg.chat_id_) then lock_idx = "❪ مفعل ❫" else lock_idx = "❪ معطل ❫" end
if redis:get(angel..'replay'..msg.chat_id_)  then replayx  = "❪ مفعل ❫" else replayx  = "❪ معطل ❫" end
if redis:get(angel..'lock_woring'..msg.chat_id_) then lock_woringx = "❪ مفعل ❫" else lock_woringx  = "❪ معطل ❫" end
list_settings = "*-* اعدادات المجموعه : \n"
.."\n1-╿التعديل «» "..(redis:get(angel..'lock_edit'..msg.chat_id_) or 'false')
.."\n2-│الروابط «» "..(redis:get(angel..'lock_link'..msg.chat_id_) or 'false')
.."\n3-│التاك «» "..(redis:get(angel..'lock_tag'..msg.chat_id_) or 'false')
.."\n4-│المعرفات «» "..(redis:get(angel..'lock_username'..msg.chat_id_) or 'false')
.."\n5-│التكرار «» "..(redis:get(angel..'lock_flood'..msg.chat_id_) or 'false')
.."\n6-│الكلايش «» "..(redis:get(angel..'lock_spam'..msg.chat_id_) or 'false')
.."\n7-│الويب «» "..(redis:get(angel..'lock_webpage'..msg.chat_id_) or 'false')
.."\n8-│الماركدوان «» "..(redis:get(angel..'lock_markdown'..msg.chat_id_) or 'false')
.."\n9-│بالطرد البوتات «» "..(redis:get(angel..'lock_bots_by_kick'..msg.chat_id_) or 'false')
.."\n10-│البوتات «» "..(redis:get(angel..'lock_bots'..msg.chat_id_) or 'false')
.."\n11-│عدد التكرار «» "..(redis:get(angel..'num_msg_angel'..msg.chat_id_) or 'false')
.."\n\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n-│اعدادات الوسائط :\n"
.."\n*1-│*المتحركه «» "..(redis:get(angel..'mute_gif'..msg.chat_id_) or 'false')
.."\n2-│الدردشه «» "..(redis:get(angel..'mute_text'..msg.chat_id_) or 'false')
.."\n3-│الانلاين «» "..(redis:get(angel..'mute_inline'..msg.chat_id_) or 'false')
.."\n4-│الالعاب «» "..(redis:get(angel..'mute_game'..msg.chat_id_) or 'false')
.."\n5-│الصور «» "..(redis:get(angel..'mute_photo'..msg.chat_id_) or 'false')
.."\n6-│الفيديو «» "..(redis:get(angel..'mute_video'..msg.chat_id_) or 'false')
.."\n7-│البصمات «» "..(redis:get(angel..'mute_audio'..msg.chat_id_) or 'false')
.."\n8-│الصوت «» "..(redis:get(angel..'mute_voice'..msg.chat_id_) or 'false')
.."\n9-│الملصقات «» "..(redis:get(angel..'mute_sticker'..msg.chat_id_) or 'false')
.."\n10-│الجهات «» "..(redis:get(angel..'mute_contact'..msg.chat_id_) or 'false')
.."\n11-│التوجيه «» "..(redis:get(angel..'mute_forward'..msg.chat_id_) or 'false')
.."\n12-│الموقع «» "..(redis:get(angel..'mute_location'..msg.chat_id_) or 'false')
.."\n13-│الملفات «» "..(redis:get(angel..'mute_document'..msg.chat_id_) or 'false')
.."\n14-│الاشعارات «» "..(redis:get(angel..'mute_tgservice'..msg.chat_id_) or 'false')
.."\n15-│الكيبورد «» "..(redis:get(angel..'mute_keyboard'..msg.chat_id_) or 'false')
.."\n\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n*-│*اعدادات اخرى : "
.."\n\n*1-│*الترحيب «» "..welcomex
.."\n*2-│*الردود «» "..replayx
.."\n*3-│*التحذير «» "..lock_woringx
.."\n*4-╽*الايدي «» "..lock_idx
list_settings = list_settings:gsub('true', '❬ مقفول ❭')
list_settings = list_settings:gsub('false', '❬ مفتوح ❭')
return sendMsg(msg.chat_id_,1,'➖\n'..list_settings..'\n')
end

function settings(msg)
list_settings = "-`اعدادات المجموعه :` "
.."\n\n-1╿التاك «» "..(redis:get(angel..'lock_tag'..msg.chat_id_) or 'false')
.."\n-2|المعرفات «» "..(redis:get(angel..'lock_username'..msg.chat_id_) or 'false')
.."\n-3|التعديل «» "..(redis:get(angel..'lock_edit'..msg.chat_id_) or 'false')
.."\n-4|الروابط «» "..(redis:get(angel..'lock_link'..msg.chat_id_) or 'false')
.."\n-5|التكرار «» "..(redis:get(angel..'lock_flood'..msg.chat_id_) or 'false')
.."\n-6|الكلايش «» "..(redis:get(angel..'lock_spam'..msg.chat_id_) or 'false')
.."\n-7|الويب «» "..(redis:get(angel..'lock_webpage'..msg.chat_id_) or 'false')
.."\n-8|الماركدوان «» "..(redis:get(angel..'lock_markdown'..msg.chat_id_) or 'false')
.."\n-9|البوتات بالطرد «» "..(redis:get(angel..'lock_bots_by_kick'..msg.chat_id_) or 'false')
.."\n-10|البوتات «» "..(redis:get(angel..'lock_bots'..msg.chat_id_) or 'false')
.."\n-11|عدد التكرار «» "..(redis:get(angel..'num_msg_angel'..msg.chat_id_) or 'false')
.."\n—————————\n*-*اعدادات التقـييد :\n"
.."\n*-1|*التقييد بالتوجيه «» "..(redis:get(angel..':tqeed_fwd:'..msg.chat_id_) or 'false')
.."\n*-2|*التقييد بالصور «» "..(redis:get(angel..':tqeed_photo:'..msg.chat_id_) or 'false')
.."\n*-3|*التقييد بالروابط «» "..(redis:get(angel..':tqeed_link:'..msg.chat_id_) or 'false')
.."\n*-4|*التقييد بالمتحركه «» "..(redis:get(angel..':tqeed_gif:'..msg.chat_id_) or 'false')
.."\n*-5|*التقييد الفيديو «» "..(redis:get(angel..':tqeed_video:'..msg.chat_id_) or 'false')
list_settings = list_settings:gsub('true', '❬ مقفول ❭')
list_settings = list_settings:gsub('false', '❬ مفتوح ❭')
return sendMsg(msg.chat_id_, msg.id_,'➖\n'..list_settings..'\n')
end

function media(msg)
list_settings = "*-*`اعدادات الوسائط:`\n"
.."\n-1╿المتحركه «» "..(redis:get(angel..'mute_gif'..msg.chat_id_) or 'false')
.."\n-2|الدردشه «» "..(redis:get(angel..'mute_text'..msg.chat_id_) or 'false')
.."\n-3|الانلاين «» "..(redis:get(angel..'mute_inline'..msg.chat_id_) or 'false')
.."\n-4|الالعاب «» "..(redis:get(angel..'mute_game'..msg.chat_id_) or 'false')
.."\n-5|الصور «» "..(redis:get(angel..'mute_photo'..msg.chat_id_) or 'false')
.."\n-6|الفيديو «» "..(redis:get(angel..'mute_video'..msg.chat_id_) or 'false')
.."\n-7|البصمات «» "..(redis:get(angel..'mute_audio'..msg.chat_id_) or 'false')
.."\n-8|الصوت «» "..(redis:get(angel..'mute_voice'..msg.chat_id_) or 'false')
.."\n-9|الملصقات «» "..(redis:get(angel..'mute_sticker'..msg.chat_id_) or 'false')
.."\n-10|الجهات «» "..(redis:get(angel..'mute_contact'..msg.chat_id_) or 'false')
.."\n-11|التوجيه «» "..(redis:get(angel..'mute_forward'..msg.chat_id_) or 'false')
.."\n-12|الموقع «» "..(redis:get(angel..'mute_location'..msg.chat_id_) or 'false')
.."\n-13|الملفات «» "..(redis:get(angel..'mute_document'..msg.chat_id_) or 'false')
.."\n-14|الاشعارات «» "..(redis:get(angel..'mute_tgservice'..msg.chat_id_) or 'false')
.."\n-15╽الكيبورد «» "..(redis:get(angel..'mute_keyboard'..msg.chat_id_) or 'false')
list_settings = list_settings:gsub('true', '❬ مقفول ❭')
list_settings = list_settings:gsub('false', '❬ مفتوح ❭')
return sendMsg(msg.chat_id_,msg.id_,'➖\n'..list_settings..'\n')
end
