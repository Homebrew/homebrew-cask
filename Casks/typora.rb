cask 'typora' do
  version '0.9.9.16'
  sha256 '0a22e88ea35937fd2d8077d83feb93644b0e135593959116a6534fba45794a2f'

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '66adf209412ad0e9155515cadf4f37a3359bb793211c1075f143105549397099'
  name 'Typora'
  homepage 'https://typora.io/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Typora.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl*',
               '~/Library/Application Support/Typora',
               '~/Library/Application Support/abnerworks.Typora',
               '~/Library/Caches/abnerworks.Typora',
               '~/Library/Cookies/abnerworks.Typora.binarycookies',
               '~/Library/Preferences/abnerworks.Typora.plist',
               '~/Library/Saved Application State/abnerworks.Typora.savedState',
               '~/Library/WebKit/abnerworks.Typora',
             ]
end
