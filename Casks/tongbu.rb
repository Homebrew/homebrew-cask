cask 'tongbu' do
  version '1.2.7.0,1'
  sha256 '5f655b0bf7097dd53a56129dceb5205a1ac4af717fd8e7b8d78328d366baca8a'

  url "http://qd.tongbu.com/qd/tbzsqd/zsmac_#{version.before_comma}/Tongbu_mac_v#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://zs.tongbu.com/mac/'
  name 'Tongbu'
  homepage 'https://www.tongbu.com/mac'

  app 'Tongbu.app'
end
