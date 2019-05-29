cask 'ultimate' do
  version '3.0.11.507'
  sha256 'c237587fcdd097257bf2043c678902699176dfc51473f9a8faa35b85026566ad'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
