cask 'ultimate' do
  version '3.0.10.1025'
  sha256 '99b9490e4a32b61a11def5ead4be95e70f94c8c0515fbb8a2c472f372092b909'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
