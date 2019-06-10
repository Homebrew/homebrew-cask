cask 'youku' do
  version '1.7.1.05291'
  sha256 '86cec6e37a40ee2e209d745e597dccc46beb6bfdef2498b407d6e16f27f35add'

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
