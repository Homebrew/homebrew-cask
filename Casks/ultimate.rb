cask 'ultimate' do
  version '3.0.11.104'
  sha256 '724f6c39120b0c7a663d52b750ec973e43924b19ea5498fb1201ef84c43b145f'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
