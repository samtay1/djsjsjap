function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully Opened, Modified In Total" .. xgsl .. "Article Data") else gg.toast(qmnb[2]["name"] .. "Failed To Open") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("found"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("No data found") return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function read_file(path) local file = io.open(path, "rb") if not file then return nil end local content = file:read("*a") file:EXIT() return content end 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gg.setVisible(true)
if gg.isPackageInstalled("com.els.online.gg") then
else
print("↪️ 𝐽𝑒𝑒𝑟𝑦 𝐺𝐺 𝐾𝑢𝑙𝑙𝑎𝑛 ↩️")
os.exit()
end

if gg.PACKAGE=="com.els.online.gg" then
else
print("↪️ 𝐽𝑒𝑒𝑟𝑦 𝐺𝐺 𝐾𝑢𝑙𝑙𝑎𝑛 ↩️")
os.exit()
end

DateE = "20201230"
DateToday = os.date("%Y%m%d")
if DateToday >= DateE then
  print("« ⚠ » 𝚂𝙲𝚁𝙸𝙿𝚃𝙸𝙽 𝚂𝚄𝚁𝙴𝚂𝙸 𝙳𝙾𝙻𝙳𝚄 « ⚠ »\n•𝚈𝙴𝙽𝙸 𝚂𝙲𝚁𝙸𝙿𝚃 𝙸𝙲𝙸𝙽 𝚃𝙴𝙻𝙴𝙶𝚁𝙰𝙼: @JeeryTEAM !")
  return os.exit()
end 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gg.setVisible(false)
gg.toast ("𝑨𝒄̧𝜾𝒍𝜾𝒚𝒐𝒓")
gg.sleep (200)
gg.toast ("▓▒▒▒▒▒▒▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▒▒▒▒▒▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▒▒▒▒▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▒▒▒▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▓▒▒▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▓▓▒▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▓▓▓▒▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▓▓▓▓▒▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▓▓▓▓▓▒")
gg.sleep (100)
gg.toast ("▓▓▓▓▓▓▓▓▓▓")
gg.sleep (200)
gg.toast ("𝑱")
gg.sleep (200)
gg.toast ("𝑱𝒆")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺𝒄")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺𝒄𝒓")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺𝒄𝒓𝜾")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺𝒄𝒓𝜾𝒑")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺𝒄𝒓𝜾𝒑𝒕")
gg.sleep (200)
gg.toast ("𝑱𝒆𝒆𝒓𝒚 𝑻𝒆𝒂𝒎 𝑺𝒄𝒓𝜾𝒑𝒕 🧿")
gg.sleep (1000)
gg.setVisible(false)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gg.alert("♥︎ iyi Oyunlar ♥︎") 
gg.alert("Bᴜ Sᴄʀɪᴘᴛ Tᴀᴍᴀᴍᴇɴ Uᴄʀᴇᴛsɪᴢᴅɪʀ Jᴇᴇʀʏ Tᴇᴀᴍ 🧿︎")
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
HOME = 1
function HOME()
menu = gg.multiChoice({
"›🔰️‹Aɴᴛɪʙᴀɴ*ʸᵉⁿⁱ \n ╚❑[ˡᵒᵇⁱ]", 
"›🌀‹Mᴇɴᴜ Hɪʟᴇsɪ \n ╚❑[ˡᵒᵇⁱ]", 
"›🕹️‹Oʏᴜɴ Mᴇɴᴜ̈ \n ╚❑[ᵒʸᵘⁿ]", 
"›Çɪᴋɪş‹ \n ╚❑[ᵏᵃᵖᵃᵗ]",
}, nil, " 🌟Jᴇᴇʀʏ Hᴀᴄᴋ & Zᴏᴠᴇʀ Hᴀᴄᴋ🌟 \n Vɪᴘ Nᴏ Bᴀɴ Hᴀᴄᴋs")
if menu == nil then else
if menu[1] == true then BYPASS()end
if menu[2] == true then LOBBY()end
if menu[3] == true then GAME()end
if menu[4] == true then EXIT()end
end
BOSS = -1
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BYPASS()
REX = gg.prompt({
    "›🔰️‹Aɴᴛɪʙᴀɴ🌐+🇰🇷 \n ╚❑[ˡᵒᵇⁱ]",
    "🔚𝖡𝖠𝖢𝖪", 
}, {}, {
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox"})
if REX == nil then else
if REX[1] ==  true then BYP() end
if REX[2] ==  true then HOME() end
end
BOSS = -1
end

function BYP() 
gg.setVisible(false)
froze = gg.alert("🌐+🇰🇷Uʏᴜᴍʟᴜᴅᴜʀ Aɴᴛɪʙᴀɴⁿᵉʷ+Bᴀşʟᴀᴛ","Bᴀsʟᴀᴛ")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.tencent.ig/app_appcache")
os.remove("/data/data/com.tencent.ig/app_bugly")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/cache")
os.remove("/data/data/com.tencent.ig/code_cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
if gg.getResultCount() == -0 then
else
gg.setVisible(false)
gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, -0, -1)
n = gg.getResultCount()
pg = gg.getResults(n)
for i = 1, n do
gg.addListItems({[1] = {address = pg[i].address + 236,flags = 4,freeze = true,value = 67109633}})
gg.addListItems({[1] = {address = pg[i].address + 232,flags = 4,freeze = true,value = 67109633}})
gg.addListItems({[1] = {address = pg[i].address + 228,flags = 4,freeze = true,value = 67109633}})
gg.addListItems({[1] = {address = pg[i].address + 340,flags = 4,freeze = true,value = 67109633}})
gg.addListItems({[1] = {address = pg[i].address + 344,flags = 4,freeze = true,value = 67109633}})
gg.addListItems({[1] = {address = pg[i].address - 314,flags = 4,freeze = true,value = 67109633}})
end
end 
gg.clearList()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;134914", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098;133635", gg.TYPE_DWORD)
gg.refineNumber("132098", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131586", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;132098", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.21956299e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("13,073.3740234375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_FLOAT)
gg.clearResults()
os.remove("/storage/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.tencent.ig/app_appcache")
os.remove("/data/data/com.tencent.ig/app_bugly")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/cache")
os.remove("/data/data/com.tencent.ig/code_cache")
gg.clearList()
gg.alert("𒊹︎︎︎𝙱𝚈𝙿𝙰𝚂𝚂 𝙰𝙺𝚃𝙸𝙵 | @𝚉𝙾𝚅𝙴𝚁𝚃𝙴𝙰𝙼")
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LOBBY()
menu = gg.multiChoice({
    "›✴️‍️‹ Lᴇss Rᴇᴄᴏɪʟ \n ╚❑[ˡᵒᵇⁱ]",
    "›⚡‍️‹ Aɴᴛɪ Sʜᴀᴋᴇ \n ╚❑[ˡᵒᵇⁱ]",
    "›👮‍♀️‍‹ AɪᴍBᴏᴛ 100ᴍ \n ╚❑[ˡᵒᵇⁱ]",
    "›‍🌱‹Çɪᴍᴇɴ Yᴏᴋ \n ╚❑[ˡᵒᵇⁱ]",
    "›‍🔺‹Kɪʀᴍɪᴢɪ Sɪsʟᴇʀ \n ╚❑[ˡᵒᵇⁱ]",
    "›➕‍‹Cʀᴏsʜᴀɪʀ \n ╚❑[ˡᵒᵇⁱ]",
    "›Çɪᴋɪş‹ \n ╚❑[ᵏᵃᵖᵃᵗ]",
}, nil, " 🌟Jᴇᴇʀʏ Hᴀᴄᴋ & Zᴏᴠᴇʀ Hᴀᴄᴋ🌟 \n Vɪᴘ Nᴏ Bᴀɴ Hᴀᴄᴋs")
if menu == nil then else
if menu[1] == true then LESS()end
if menu[2] == true then SHAKE()end
if menu[3] == true then BOT()end
if menu[4] == true then GRASS()end
if menu[5] == true then FOG() end
if menu[6] == true then CRO() end
if menu[7] == true then HOME()end
end
BOSS = -1
end

function LESS()
so=gg.getRangesList('libUE4.so')[1].start
py=0x130CBF0
setvalue(so+py,4,0)
gg.toast("𒊹︎︎︎𝙻𝙴𝚂𝚂")
end

function SHAKE()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1BB7C74
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x367EC84
setvalue(so+py,4,0)  
gg.toast("𒊹︎︎︎𝚂𝙷𝙰𝙺𝙴")
end

function BOT()
local t = gg.getRangesList('libUE4.so$');
local ZOVER = {}
ZOVER[1] = {}
ZOVER[1].address = t[1].start + 0x24A75F0
ZOVER[1].flags = gg.TYPE_FLOAT
ZOVER[1].value  = "99999"
ZOVER[2] = {}
ZOVER[2].address = t[1].start + 0x24A74BC
ZOVER[2].flags = gg.TYPE_FLOAT
ZOVER[2].value  = "0"
gg.setValues(ZOVER)
gg.toast("𒊹︎︎︎𝙰𝙸𝙼𝙱𝙾𝚃")
end

function GRASS()
local t = gg.getRangesList('libUE4.so$');
local ZOVER = {}
ZOVER[1] = {}
ZOVER[1].address = t[1].start + 0x2475D58
ZOVER[1].flags = gg.TYPE_FLOAT
ZOVER[1].value  = "0"
gg.setValues(ZOVER)
gg.toast("𒊹︎︎︎𝙽𝙾 𝙶𝚁𝙰𝚂𝚂")
end

function FOG() 
so=gg.getRangesList('libUE4.so')[1].start
py=0x2C344CC
setvalue(so+py,4,70)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2C344D8
setvalue(so+py,4,70)
gg.toast("𒊹︎︎︎𝚁𝙴𝙳 𝙵𝙾𝙶")
end

function CRO()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1B62FE0
setvalue(so+py,16,0)
gg.toast("𒊹︎︎︎𝙲𝚁𝙾𝚂𝙷𝙰𝙸𝚁")
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function GAME() 
menu = gg.multiChoice({
    "›🕹️‹Aɴᴛᴇɴᴀ \n ╚❑[ᵒʸᵘⁿ]",
    "›🧿‹ ɪᴘᴀᴅ ᴍᴏᴅᴜ \n ╚❑[ᵒʸᵘⁿ]",
    "›🌀‹ Mᴀɢɪᴄ Bᴜʟʟᴇᴛ \n ╚❑[ᵒʸᵘⁿ]",
    "›♦️‹ Kᴀғᴀᴅᴀɴ Vᴜʀᴍᴀ \n ╚❑[ᶠⁱˣᵉᵈ]",
    "›☄️‹ Kᴀғᴀᴅᴀɴ Vᴜʀᴍᴀ \n ╚❑[ᵒʸᵘⁿ]",
    "›💎‹ Hɪᴢʟɪ Zɪᴘʟᴀᴍᴀ \n ╚❑[ᵒʸᵘⁿ]",
    "›⚡‹ Sɪʏᴀʜ Gᴏᴋʏᴜᴢᴜ \n ╚❑[ᵒʸᵘⁿ]",
    "›⚠️‹ Tᴜᴍ Aʀᴀᴄ̧ Uᴄ̧ᴜʀ \n ╚❑[ᵒʸᵘⁿ]",
    "›➕‹ Oᴛᴏ Sɴɪᴘᴇʀ \n ╚❑[ᵒʸᵘⁿ]",
    "›🔅(‹ Oʀᴛᴀ Hɪᴢʟᴀ Kᴏşᴍᴀ \n ╚❑[ᵒʸᵘⁿ]",
    "›✔️‹ Mᴇᴠʟᴀɴᴀ Pᴀʀᴀşᴜᴛ \n ╚❑[ᵒʸᵘⁿ]",
    "›Çɪᴋɪş‹ \n ╚❑[ᵏᵃᵖᵃᵗ]",
   }, nil, " 🌟Jᴇᴇʀʏ Hᴀᴄᴋ & Zᴏᴠᴇʀ Hᴀᴄᴋ🌟 \n Vɪᴘ Nᴏ Bᴀɴ Hᴀᴄᴋs")
if menu == nil then else
if menu[1] == true then ANTEN()end
if menu[2] == true then MOD()end
if menu[3] == true then MB()end
if menu[4] == true then HD1()end
if menu[5] == true then HD2() end
if menu[6] == true then JUMP() end
if menu[7] == true then SKY() end
if menu[8] == true then CAR() end
if menu[9] == true then OTO()end
if menu[10] == true then MICRO()end
if menu[11] == true then HIZLI() end
if menu[12] == true then HOME()end
end
BOSS = -1
end

function ANTEN()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𒊹︎︎︎𝙰𝙽𝚃𝙴𝙽𝙰")
end

function MOD() 
local t = gg.getRangesList('libUE4.so$');
local ZOVER = {}
ZOVER[1] = {}
ZOVER[1].address = t[1].start + 0x37307E0
ZOVER[1].flags = gg.TYPE_FLOAT
ZOVER[1].value  = "240"
gg.setValues(ZOVER)
gg.toast("𒊹︎︎︎𝙸𝙿𝙰𝙳")
end

function MB() 
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-466", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-568", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("280", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𒊹︎︎︎𝙼𝙰𝙶𝙸𝙲")
end

function HD1() 
setvalue(gg.getRangesList("libUE4.so")[1].start + 62281224, 16, 40)
gg.sleep(3000)
so = gg.getRangesList("libUE4.so")[1].start
py = 62277512
setvalue(so + py, 16, 70)
gg.toast("𒊹︎︎︎𝙷𝙳1")
end

function HD2() 
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𒊹︎︎︎𝙷𝙳2")
end

function JUMP() 
so = gg.getRangesList("libUE4.so")[1].start 
py = 18153780
setvalue(so + py, 16, -2.83335992E28)
gg.toast("𒊹︎︎︎𝙹𝚄𝙼𝙿")
end

function SKY()
local t = gg.getRangesList('libUE4.so$');
local ZOVER = {}
ZOVER[1] = {}
ZOVER[1].address = t[1].start + 0x39E0C50
ZOVER[1].flags = gg.TYPE_FLOAT
ZOVER[1].value  = "-0.00001"
ZOVER[2] = {}
ZOVER[2].address = t[1].start + 0x2E082FC
ZOVER[2].flags = gg.TYPE_FLOAT
ZOVER[2].value  = "0"
gg.setValues(ZOVER)
gg.toast("𒊹︎︎︎𝚂𝙺𝚈")
end

function CAR() 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980.0F;4,000.0F;0.30000001192F;5.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-980.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(750)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𝚃𝚄𝙼 𝙰𝚁𝙰𝙲𝙻𝙰𝚁 𝚄𝙲𝚂𝚄𝙽")
end

function OTO()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91000;2.29999995232;1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.29999995232;1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert(" KAR98 ")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("76000;1.89999997616;1.70000004768", 16, false, 536870912, 0, -1)
gg.searchNumber("1.89999997616;1.70000004768", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.alert("AWM ")
end

function MICRO()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1.123", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𝙼𝙸𝙲𝚁𝙾")
end

function HIZLI() 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("30", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" 𝙸𝙽𝙸𝚂") 
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function SKIN()
menu = gg.multiChoice({
    "›🌟‍‹Eғsᴀɴᴇᴠɪ Kᴏsᴛᴜᴍ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›🌟‍️‹Bᴜᴢ Aᴋᴍ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍🌟️‹M416 Kᴇʀᴛᴇɴᴋᴇʟᴇ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍🌟️‹M416 Mᴀsᴋᴀʀᴀ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›🌟‍‹M416 Bᴜᴢ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍🌟‹M16 Aᴜʀᴏ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›🌟‹Sᴄᴀʀ L Sᴏɴ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍️🌟‹Sᴄᴀʀ V2 Sᴏɴ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›🌟‍‹Kᴀʀ Fᴀɴɢ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍️🌟‹Kᴀʀ Pᴇʟᴀɴɢ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍️🌟‹Aᴡᴍ Sᴏɴ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›🌟‍️‹Uᴢɪ Sᴏɴ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›‍🌟️‹Uᴍᴘ Sᴏɴ \n ╚❑[ˡᵒᵇⁱ+ᵒʸᵘⁿ]",
    "›Çɪᴋɪş‹ \n ╚❑[ᵏᵃᵖᵃᵗ]"
    }, nil, " 🌟Jᴇᴇʀʏ Hᴀᴄᴋ & Zᴏᴠᴇʀ Hᴀᴄᴋ🌟 \n Vɪᴘ Nᴏ Bᴀɴ Hᴀᴄᴋs")
 if menu == nil then else
if menu[1] == true then S1()end
if menu[2] == true then S2()end
if menu[3] == true then S3()end
if menu[4] == true then S4()end
if menu[5] == true then S5()end
if menu[6] == true then S6()end
if menu[7] == true then S7()end
if menu[8] == true then S8()end
if menu[9] == true then S9()end
if menu[10] == true then S10()end
if menu[11] == true then S11()end
if menu[12] == true then S12()end
if menu[13] == true then S13()end
if menu[14] == true then HOME()end
end
BOOS = -1
end

function S1()
gg.clearResults()
function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, MS) for x = 1, #(MS) do 
xgpy = szpy + MS[x]["offset"] xglx = MS[x]["type"] 
xgsz = MS[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
MoShinp(MoShi) 
gg.clearResults() 
gg.setRanges(MoShi[1]["memory"]) 
gg.searchNumber(MoShi[3]["value"], MoShi[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(MoShi[2]["name"] .. "")
else 
gg.refineNumber(MoShi[3]["value"], MoShi[3]["type"]) 
gg.refineNumber(MoShi[3]["value"], MoShi[3]["type"]) 
gg.refineNumber(MoShi[3]["value"], MoShi[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(MoShi[2]["name"] .. "") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(MoShi) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + MoShi[v]["offset"] 
pysz[1].flags = MoShi[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = MoShi[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, MS) 
xgjg = true end end 
if xgjg == true then 
gg.toast(MoShi[2]["name"] .. "" .. xgsl .. "") 
else 
gg.toast(MoShi[2]["name"] .. "") 
end 
end 
end 
end


function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false 
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
     
        if (#data > 0) then
           gg.toast(""..#data.."")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                  
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                 
               end
           end
           gg.setValues(t)
       
        else
            gg.toast("", false)
            return false
        end
    else
        gg.toast("")
        return false
    end
end


local app = {}
function Assert(data)
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg.setVisible(false)
local rx = mearrass(memory, array)
if rx then
local rx, datatype = typetab(array, type)
if rx then
if Assert(array[1].hv) then
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg.clearResults()
for i = 1, #data do
data[i].rx = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
data[z].rx = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].rx = false
end
end
end
end
for i = 1, #data do
if data[i].rx then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print("wrong type parameter")
gg.toast("wrong type parameter")
os.exit()
end
else
print("memory or array parameter error")
gg.toast("memory or array parameter error")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze

return gg.addListItems(t)
else
return gg.setValues(t)
end
else
return false
end
end

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."Open successfully")else gg.toast(_on.."Open failed")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("already edited"..#t.."Article data") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Open failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Open failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Opensuccess,Totalmodify" .. xgsl .. "Article data") else gg.toast(qmnb[2]["name"] .. "Open failed") end end end end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."already edited"..#t.."Article data")     gg.addListItems(t)  else  gg.toast(Mingcg.."Open failed", false)  return false  end  else  gg.toast("Search failed") return false  end end  
qmnb = {
{["memory"] = 32},
{["name"] = "𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405628, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function S2()
gg.clearResults()
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001089", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S3()
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004086", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S4()
gg.clearResults()
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004062", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S5()
gg.clearResults()
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S6()
gg.clearResults()
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101003070", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S7()
gg.clearResults()
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101003057", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S8()
gg.clearResults()
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101002056", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S9()
gg.clearResults()
gg.searchNumber("10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(" 1103001031 ", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S10()
gg.clearResults()
gg.searchNumber("10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(" 1103001060 ", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function s11()
gg.clearResults()
gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1103003030", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S12()
gg.clearResults()
gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1102001004", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end

function S13()
gg.clearResults()
gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(" 1108004027 ", gg.TYPE_DWORD)
gg.toast("𒊹︎︎︎𝙰𝙺𝚃𝙸𝙵")
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function EXIT()
print(" 𝚃𝙴𝙻𝙴𝙶𝚁𝙰𝙼 : @JeeryTeam ")
print(" 𝙾𝚆𝙽𝙴𝚁: @JeeryDamla")
 gg.setVisible(true)
    os.exit()
end
while true do
  if gg.isVisible(true) then
    BOSS = 1
gg.setVisible(false)
  end
gg.clearResults()
  if BOSS == 1 then
    HOME()
    end
end