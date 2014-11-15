cask :v1 => 'tvmobili' do
  version :latest
  sha256 :no_check

  url 'http://www.tvmobili.com/binaries/stable/tvmobili-mountainlion-universal.dmg'
  homepage 'http://www.tvmobili.com/'
  license :unknown

  pkg 'tvmobili-mountainlion-universal.2.1.4481.pkg'
  uninstall :pkgutil   => 'com.tvmobili.tvmobilisvcd',
            :launchctl => [
                           'com.tvmobili.artwork',
                           'com.tvmobili.tvmobilisvcd',
                          ]
end
