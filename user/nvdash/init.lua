banner_list = {}

table.insert(banner_list, require("custom.user.nvdash.banner.frog"))
table.insert(banner_list, require("custom.user.nvdash.banner.hydra"))
table.insert(banner_list, require("custom.user.nvdash.banner.nerds"))
table.insert(banner_list, require("custom.user.nvdash.banner.potato"))
table.insert(banner_list, require("custom.user.nvdash.banner.gigachad"))
table.insert(banner_list, require("custom.user.nvdash.banner.gigachad_pro"))
table.insert(banner_list, require("custom.user.nvdash.banner.meme_smile"))

function get_random_banner()
  if #banner_list == 0 then
    error("No banners found!!!")
  end

  local banner = banner_list[math.floor((os.time() * os.clock())) % #banner_list + 1]

  return banner
end


return get_random_banner
