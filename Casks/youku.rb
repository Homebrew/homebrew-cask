cask 'youku' do
  version '1.6.6.03147'
  sha256 '81aaf410d13db7ae9cb508c2da8659b5008e7050c90a6a8442908dd44880f272'

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
