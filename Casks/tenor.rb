cask 'tenor' do
  version :latest
  sha256 :no_check

  # media.tenor.co/mac/bin was verified as official when first introduced to the cask
  url 'https://media.tenor.co/mac/bin/GIFforMac.dmg'
  name 'Tenor'
  homepage 'https://tenor.com/mac'

  app 'Tenor.app'
end
