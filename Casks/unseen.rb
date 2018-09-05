cask 'unseen' do
  version '0.4.7'
  sha256 '3a6a6dc53bb85722cca2993966a47bb18ee93c431e4248866a8136e3b32bba2f'

  url "https://download.unseen.is/unseenapp-is-v#{version}/unseenapp-beta-v#{version}-osx.zip"
  name 'Unseen'
  homepage 'https://download.unseen.is/'

  app "Unseen_v#{version}.app"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unseen.client.sfl* ',
               '~/Library/Application Support/Unseen',
               '~/Library/Preferences/com.unseen.client.plist',
               '~/Library/Saved Application State/com.unseen.client.savedState',
             ]
end
