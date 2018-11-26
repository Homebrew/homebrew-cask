cask 'twizzy' do
  version :latest
  sha256 :no_check

  # twizzy-updates.now.sh/download was verified as official when first introduced to the cask
  url 'https://twizzy-updates.now.sh/download'
  name 'Twizzy'
  homepage 'https://twizzy.app/'

  app 'Twizzy.app'
end
