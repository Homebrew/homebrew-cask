cask 'vivi' do
  version '2.18.4'
  sha256 '3a1c34e2bf120c32d4b7f5e4bec40e47ec06cebb7126bcdd11746f42cbf60a93'

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name 'Vivi'
  homepage 'https://www.vivi.io/'

  pkg 'Vivi.pkg'

  uninstall pkgutil: 'au.com.viviaustralia.mac'
end
