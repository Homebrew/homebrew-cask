cask 'ultimate' do
  version '3.0.12.207'
  sha256 'e8cb4d4fbb909656a43b8388359baf98f426394362084fb8174e8987fc2435f7'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
