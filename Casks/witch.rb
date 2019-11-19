cask 'witch' do
  version '4.3.4'
  sha256 'a360c0e0c22a5f17590d0b240097802846fa650a8bb57e03ab1005a6e7291d43'

  url 'https://manytricks.com/download/witch'
  appcast 'https://manytricks.com/witch/appcast.xml'
  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
