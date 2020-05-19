cask 'uu-booster' do
  version '2.0.0,145'
  sha256 '7f5d945c435806f74b348d324be62e03103c566cdd39aaaeec5b0d18082dac63'

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://adl.netease.com/d/g/uu/c/uumac?type=pc'
  name 'UU Booster'
  homepage 'https://uu.163.com/down/mac/'

  app 'UUBooster.app'
end
