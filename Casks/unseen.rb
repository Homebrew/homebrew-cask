cask 'unseen' do
  version '0.4.6'
  sha256 'ec9a750d3d1a6c2ffe9a772c7694be12e10d328f68a13b5a8fbf21946b127147'

  url "https://download.unseen.is/unseenapp-is-v#{version}/unseenapp-beta-v#{version}-osx.zip"
  name 'Unseen'
  homepage 'https://download.unseen.is/'

  app "Unseen_v#{version}.app"

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unseen.client.sfl* ',
                '~/Library/Saved Application State/com.unseen.client.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Unseen',
                '~/Library/Preferences/com.unseen.client.plist',
              ]
end
