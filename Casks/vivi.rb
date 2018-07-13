cask 'vivi' do
  version '2.12.0'
  sha256 '3f011482506a4a95c3bbe75469793eef708b092f6dd85ba429b46850240ab93f'

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name 'Vivi'
  homepage 'https://www.vivi.io/'

  pkg 'Vivi.pkg'

  uninstall pkgutil: 'au.com.viviaustralia.mac'
end
