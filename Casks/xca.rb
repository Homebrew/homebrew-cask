cask 'xca' do
  version '2.1.2'
  sha256 '1cb7d23045ef64b2c30ce927a40d4bcae20b776aa0c94e067029b3b6be63bc49'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end
