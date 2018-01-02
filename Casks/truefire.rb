cask 'truefire' do
  version '3'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://truefire.com/player/TrueFireInstaller.dmg'
  name 'TrueFire'
  homepage 'https://truefire.com/apps'

  app "TrueFire #{version}.app"
end
