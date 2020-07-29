cask 'ultimate' do
  version '3.0.12.610'
  sha256 '77b8ad259dd079ab18aa7ca2f507e4e53cf43846abc1b63393cfbe3294ff1cf2'

  url 'https://download.epubor.com/epubor_ultimate.zip'
  appcast 'https://www.epubor.com/ultimate.html'
  name 'Ultimate Converter'
  homepage 'https://www.epubor.com/'

  pkg 'Ultimate.pkg'

  uninstall pkgutil: 'EpuborStudioUltimate2'
end
