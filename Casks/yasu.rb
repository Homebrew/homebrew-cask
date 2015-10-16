cask :v1_1 => 'yasu' do

  if MacOS.release <= :snow_leopard
    version '2.8.2'
    sha256 '427672a45b8315c2f38d968ea5e0c35c21b91091a1fe0e750fcd2b0078644336'
    url "http://yasuapp.net/files/yasu_#{version}.zip"
  else
    version '2.9.1'
    sha256 '597385cec59650cf5f5c9b54e22df5c0a87e4298e2164ceb09cf446b83646547'
    url "http://yasuapp.net/files/yasu_#{version}.zip"
  end

  name 'Yasu'
  appcast 'http://yasuapp.net/appcasts/yasu.xml',
          :sha256 => 'e79812a2ecb9a4df2b1484f5e544d43d997ad539e5d8c1a3e058cd12d11b646e'
  homepage 'http://yasuapp.net'
  license :gratis

  app 'Yasu.app'

  zap :delete => [
                  '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help',
                  '~/Library/Caches/net.yasuapp.yasu',
                  '~/Library/Logs/Yasu.log',
                  '~/Library/Preferences/net.yasuapp.yasu.plist',
                  '~/Library/Preferences/org.jimmitchell.yasu.plist',
                 ]

  caveats do
    discontinued
  end
end
