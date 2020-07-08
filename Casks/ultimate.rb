cask 'ultimate' do
  version '3.0.12.707'
  sha256 '2a58d1e0a1bd8e69d18b8577eb7f7ef2f00c6995b1c2173c29a48b2f9b9270b5'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
