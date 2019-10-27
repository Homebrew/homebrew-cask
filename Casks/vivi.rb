cask 'vivi' do
  version '2.17.1'
  sha256 'fd2c2d71e111cc1ebc07940eb36b542269fab3ce34b6ae1e5cbb4f7ac49f6e3b'

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name 'Vivi'
  homepage 'https://www.vivi.io/'

  pkg 'Vivi.pkg'

  uninstall pkgutil: 'au.com.viviaustralia.mac'
end
