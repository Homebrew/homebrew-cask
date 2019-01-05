cask 'ultimate' do
  version '3.0.10.1225'
  sha256 'dbca4a6b70590990c9c06df9d1555cb3ab0e4f00306cf7dc5ac1a8e113828bbb'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
