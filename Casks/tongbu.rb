cask 'tongbu' do
  version '1.2.7.0_1'
  sha256 '5f655b0bf7097dd53a56129dceb5205a1ac4af717fd8e7b8d78328d366baca8a'

  url "http://qd.tongbu.com/qd/tbzsqd/zsmac_#{version.split('_')[0]}/Tongbu_mac_v#{version}.dmg"
  name 'Tongbu'
  homepage 'http://www.tongbu.com/mac'

  app 'Tongbu.app'
end
