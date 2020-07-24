cask 'uu-booster' do
  version '2.1.2,164'
  sha256 '3fb99880683ec6d82b781f975e6422f5c746ca250b04786f8162d4494a5541fe'

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://adl.netease.com/d/g/uu/c/uumac?type=pc'
  name 'UU Booster'
  homepage 'https://uu.163.com/down/mac/'

  app 'UUBooster.app'
end
