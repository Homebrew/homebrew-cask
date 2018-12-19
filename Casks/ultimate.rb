cask 'ultimate' do
  version '3.0.10.1206'
  sha256 'bef0596043714a7f08483fd29bd28e4433ea51de643a71071941a1950d9bbe0f'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
