cask 'tropy' do
  version '1.2.0'
  sha256 '0f72fcf725219a6c09e2354441f80cc9867aef0db5c54dbf83ec6e3fc0cf9565'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
