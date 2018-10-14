cask 'texnicle' do
  version '2.3.1'
  sha256 '0cdc81a0b7578f6656f2437cb24ffa390f556aa7b25a6fd9e4b90ed9a4dc5986'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/#{version.major_minor}/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/texnicle_appcast.xml'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'TeXnicle.app'

  zap trash: [
               '~/Library/Application Support/TeXnicle',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bobsoft.texnicle.sfl*',
               '~/Library/Caches/com.bobsoft.TeXnicle',
               '~/Library/Preferences/com.bobsoft.TeXnicle.plist',
             ]
end
