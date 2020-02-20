cask 'xca' do
  version '2.2.1'
  sha256 '329b71d8ab203317198cc502a61174db7c56f24caa8688947282bacf24cd3e9b'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end
