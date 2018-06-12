cask 'xca' do
  version '2.0.1'
  sha256 '6432f049855aadabf4c358f03f448ebc5722528c98cb50e0fa087908fcfe2763'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}-High-Sierra.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end
