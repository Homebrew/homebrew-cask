cask 'witch' do
  version '4.3.2'
  sha256 'cbd7305fff9ef2d2c0c274c5a727bbb801688e21b0969fc132c736655e48821f'

  url 'https://manytricks.com/download/witch'
  appcast 'https://manytricks.com/witch/appcast.xml'
  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
