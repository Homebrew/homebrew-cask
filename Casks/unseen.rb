cask 'unseen' do
  version '0.4.4'
  sha256 '38287820aeeba83739340fc7ce7110101486ef1de31202fa6152fb962538f2be'

  url "https://download.unseen.is/unseenapp-is-v#{version}/unseenapp-beta-v#{version}-osx.zip"
  name 'Unseen'
  homepage 'https://download.unseen.is/'

  app "Unseen_v#{version}.app"

  zap delete: [
                '~/Library/Application Support/Unseen',
                '~/Library/Preferences/com.unseen.client.plist',
                '~/Library/Saved Application State/com.unseen.client.savedState',
                '~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unseen.client.sfl ',
              ]
end
