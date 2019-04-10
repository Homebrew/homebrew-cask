cask 'ultimate' do
  version '3.0.11.409'
  sha256 '39ceecc8efd0d05e439be107cf729797000ec2906b078164b3ccc5a99c6149e4'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
