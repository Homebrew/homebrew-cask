cask 'ultimate' do
  version '3.0.11.212'
  sha256 '3ebb03e09a9656856a7d0382eac487d98a3d5aa52e66aa77b07925a074c2d949'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
