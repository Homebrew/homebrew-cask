cask 'ultimate' do
  version '3.0.11.1028'
  sha256 'cffb891540b4b338a1ac32e15a16eb3f44129983657f45bb0872105bd6029700'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
