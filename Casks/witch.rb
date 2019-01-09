cask 'witch' do
  version '4.3.1'
  sha256 'c9c7bea5b15fd93a1766d4fd5be22c8c92e055325ce310cee2ede2b019250ad3'

  url 'https://manytricks.com/download/witch'
  appcast 'https://manytricks.com/witch/appcast.xml'
  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
