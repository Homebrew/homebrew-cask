cask :v1 => 'tvmobili' do
  version :latest
  sha256 :no_check

  url 'http://www.tvmobili.com/binaries/stable/tvmobili-yosemite-universal.dmg'
  name 'TVMOBiLi'
  homepage 'http://www.tvmobili.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'tvmobili-yosemite-universal.2.1.4693.pkg'

  uninstall :pkgutil   => 'com.tvmobili.tvmobilisvcd',
            :launchctl => [
                           'com.tvmobili.artwork',
                           'com.tvmobili.tvmobilisvcd',
                          ]
end
