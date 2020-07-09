cask 'uu-booster' do
  version '2.1.0,155'
  sha256 'a53ec1affcb732d0459fead5d52649ad72a76e7126846e0d438f0ce8f6daabdd'

  # uu.gdl.netease.com/ was verified as official when first introduced to the cask
  url "https://uu.gdl.netease.com/UU-macOS-#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://adl.netease.com/d/g/uu/c/uumac?type=pc'
  name 'UU Booster'
  homepage 'https://uu.163.com/down/mac/'

  app 'UUBooster.app'
end
