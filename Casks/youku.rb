cask 'youku' do
  version '1.7.3.07169'
  sha256 '969e064d6b877f7bf93fc9adb296037fdebb9f9aa49226b7e5b7c4cb7cd998b1'

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
