cask 'unseen' do
  version '0.4.2'
  sha256 '902c2229e4c64e459308aaaf03c1beb00f5256d301883c023e53a5ed011ecf32'

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
