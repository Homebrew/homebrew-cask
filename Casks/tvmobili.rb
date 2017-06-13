cask 'tvmobili' do
  version '2.1.4693'
  sha256 '6ba5968a1c2c026f671eef5a57d3102a5fc8f972328cfdca6843dcb06724092c'

  url 'http://www.tvmobili.com/binaries/stable/tvmobili-yosemite-universal.dmg'
  name 'TVMOBiLi'
  homepage 'http://www.tvmobili.com/'

  pkg "tvmobili-yosemite-universal.#{version}.pkg"

  uninstall pkgutil:   'com.tvmobili.tvmobilisvcd',
            launchctl: [
                         'com.tvmobili.artwork',
                         'com.tvmobili.tvmobilisvcd',
                       ]
end
