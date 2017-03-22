cask 'unseen' do
  version '0.4.4'
  sha256 '1ae633fdeb38a86cf011e89922fe4c73b42e196f81f17c9a34ec80b7dff3e691'

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
