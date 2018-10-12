cask 'xca' do
  version '2.1.1'
  sha256 '69692384d4239daf6e95b4d06bcf589eed33c829940a7d9ea74409a7fe937a01'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end
