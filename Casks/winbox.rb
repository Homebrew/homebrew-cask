cask 'winbox' do
  version '3.7'
  sha256 '47c3d0dee54541b04efc9ca08dd80a76513600d28d8d63f4898b809536869fda'

  url "http://joshaven.com/Winbox4Mac_#{version}.dmg"
  name 'Winbox4Mac'
  homepage 'https://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'
end
