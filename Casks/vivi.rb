cask 'vivi' do
  version '2.19.0'
  sha256 '1c5570600243fa9e91735f42a33e686e0f6bfb5fe7c441f9a4eaea90b04f31fa'

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name 'Vivi'
  homepage 'https://www.vivi.io/'

  pkg 'Vivi.pkg'

  uninstall pkgutil: 'au.com.viviaustralia.mac'
end
