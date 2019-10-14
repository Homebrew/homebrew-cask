cask 'witch' do
  version '4.3.3'
  sha256 '44150acc2b9ecd820e262549f41554acad4763fe6f3bbd367a5fb5824deb47eb'

  url 'https://manytricks.com/download/witch'
  appcast 'https://manytricks.com/witch/appcast.xml'
  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
