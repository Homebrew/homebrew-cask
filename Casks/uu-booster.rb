cask 'uu-booster' do
  version '1.4.3,131'
  sha256 '92c25ecad9d7bfb93c0ba44f4d28dc204844e2a993eff96deea755b8e8248a83'

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://adl.netease.com/d/g/uu/c/uumac?type=pc'
  name 'UU Booster'
  homepage 'https://uu.163.com/down/mac/'

  app 'UUBooster.app'
end
