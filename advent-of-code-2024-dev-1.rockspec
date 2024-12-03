package = "advent-of-code-2024"
version = "dev-1"
source = {
   url = "https://github.com/jordan-begian/advent-of-code-2024/"
}
description = {
   homepage = "https://github.com/jordan-begian/advent-of-code-2024/",
   license = "GNU General Public License v3.0"
}
build = {
   type = "builtin",
   modules = {
      ["day1.main"] = "src/day1/main.lua",
   }
}
