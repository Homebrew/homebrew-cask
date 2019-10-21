cask 'youku' do
  version '1.7.7.10212'
  sha256 '4aa0bfa853f1d04000583feaa6e6004349ca7c9e85ccadbb59a8807ee3c05d6e'

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  appcast 'https://pd.youku.com/pc'
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
