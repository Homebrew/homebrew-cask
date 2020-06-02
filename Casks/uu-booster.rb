cask 'uu-booster' do
  version '2.0.1,149'
  sha256 '320663e2ea521983ccdd0c496c58209c2fe176faf9b2c511716a7993949c4fd7'

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://adl.netease.com/d/g/uu/c/uumac?type=pc'
  name 'UU Booster'
  homepage 'https://uu.163.com/down/mac/'

  app 'UUBooster.app'
end
