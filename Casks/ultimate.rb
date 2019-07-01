cask 'ultimate' do
  version '3.0.11.625'
  sha256 '9a5c28888add1f8d285a34d80d35c6352198d07137a8a5f5ecdc426c673c76b3'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
