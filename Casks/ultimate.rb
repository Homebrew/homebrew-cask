cask 'ultimate' do
  version '3.0.12.412'
  sha256 '0cf5deed4e068ceac642e3cea0b06b93bc8e1cac5ff7206b5d41a24f4cee9044'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
