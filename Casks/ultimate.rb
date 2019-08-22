cask 'ultimate' do
  version '3.0.11.820'
  sha256 'cd144271f8cc4ae6f605253e89394c42ae2dce599835dc8f913d990c653598c5'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
