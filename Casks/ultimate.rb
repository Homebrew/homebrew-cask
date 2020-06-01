cask 'ultimate' do
  version '3.0.12.529'
  sha256 'e380fd34fbb788a1bf57aa699304cc2d1c5abb7e23fabe4246877087938b1d47'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
