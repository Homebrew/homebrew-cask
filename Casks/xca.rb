cask 'xca' do
  version '2.1.0'
  sha256 'ad90848e29f199d5b9957e6f8c92bb0de38b8cc869c61ecb707b4199c68bee89'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end
