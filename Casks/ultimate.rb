cask 'ultimate' do
  version '3.0.12.529'
  sha256 'd9bc1f1134ec707131a81dc30f5d1a1db1edf0062f3c8e9af4c1799475cf9658'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
