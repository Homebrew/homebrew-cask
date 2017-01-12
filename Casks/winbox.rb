cask 'winbox' do
  version '3.7'
  sha256 '47c3d0dee54541b04efc9ca08dd80a76513600d28d8d63f4898b809536869fda'

  url "http://joshaven.com/Winbox4Mac_#{version}.dmg"
  appcast 'http://joshaven.com/resources/tools/winbox-for-mac/',
          checkpoint: '2cd21150de8548edede34315857b401ac014b02d7e9d6f7b2b82190b86897699'
  name 'Winbox4Mac'
  homepage 'http://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'
end
