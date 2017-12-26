cask 'truefire' do
  version '3.1.7'
  sha256 'd2e527e5f048c56e0106a868e95c60b65371c5d9d90affb84543b58655298a55'

  url 'https://truefire.com/player/TrueFireInstaller.dmg'
  name 'TrueFire'
  homepage 'https://truefire.com/apps'

  app "TrueFire #{version.major}.app"
end
