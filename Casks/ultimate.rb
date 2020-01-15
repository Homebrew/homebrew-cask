cask 'ultimate' do
  version '3.0.12.109'
  sha256 '4d085320ffa12513a4cc14c8443fc619ccd4655143902bb2ad0b943fbee04d20'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
