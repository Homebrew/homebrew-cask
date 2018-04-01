cask 'vanilla' do
  version :latest
  sha256 :no_check

  # devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/net.matthewpalmer.Vanilla/Vanilla.dmg'
  name 'Vanilla'
  homepage 'http://matthewpalmer.net/vanilla/'

  app 'Vanilla.app'
end
