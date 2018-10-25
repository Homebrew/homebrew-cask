cask 'xca' do
  version '2.1.1'
  sha256 'd376bba09657477a20b89b324154c7a76bd3360df37488153727f5d0861a857f'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end
