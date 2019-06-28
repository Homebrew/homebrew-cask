cask 'youku' do
  version '1.7.2.06273'
  sha256 '3e4be231249b5f2ced2c57877bd8bddc2bca78b1546a10d6c8ca7036a9f3281d'

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
