cask 'ultimate' do
  version '3.0.12.428'
  sha256 '74ac9b13b38d88b8e5e5b955b04130d2a56a4871f21d8e1ccce607d1006f88db'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
