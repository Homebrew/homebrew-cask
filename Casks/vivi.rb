cask 'vivi' do
  version '2.18.0'
  sha256 'a4ec814af1ae47168edf2d4545498297f46ee5dbbdb885b85a6c09a5b7bcebc0'

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name 'Vivi'
  homepage 'https://www.vivi.io/'

  pkg 'Vivi.pkg'

  uninstall pkgutil: 'au.com.viviaustralia.mac'
end
