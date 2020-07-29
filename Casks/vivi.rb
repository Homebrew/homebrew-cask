cask 'vivi' do
  version '2.19.1'
  sha256 'c6dc9400d3d5649db62ae07f6545c23fd35f3534528f0fdc13321d5c2c98353c'

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name 'Vivi'
  homepage 'https://www.vivi.io/'

  pkg 'Vivi.pkg'

  uninstall pkgutil: 'au.com.viviaustralia.mac'
end
