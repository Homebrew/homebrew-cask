cask 'tongbu' do
  version '1.2.7.0,_1'
  sha256 '5f655b0bf7097dd53a56129dceb5205a1ac4af717fd8e7b8d78328d366baca8a'

  # url was verified as official on Jan.28, 2018
  url "http://qd.tongbu.com/qd/tbzsqd/zsmac_#{version.before_comma}/Tongbu_mac_v#{version.before_comma}#{version.after_comma}.dmg"
  name 'Tongbu'
  homepage 'http://www.tongbu.com/mac'

  app 'Tongbu.app'
end
