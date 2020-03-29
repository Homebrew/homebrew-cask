cask 'uu-booster' do
  version '1.4.2,128'
  sha256 'e3ce65a19101130f49275bb2bf427b9e7ee0834490816490a4f70c84ddbdc05c'

  # uu.gdl.netease.com was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://adl.netease.com/d/g/uu/c/uumac?type=pc'
  name 'UU Booster'
  homepage 'https://uu.163.com/down/mac/'

  app 'UUBooster.app'
end
