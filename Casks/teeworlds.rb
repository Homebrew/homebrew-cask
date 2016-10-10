cask 'teeworlds' do
  version '0.6.3'
  sha256 '9ed35bd8d537b3d499f129ab6e8643f16786217dd552527a53edcc85d650c2cd'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
