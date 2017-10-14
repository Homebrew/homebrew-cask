cask 'youku' do
  version '1.2.8.09255'
  sha256 'd81438077127f69ae3378ce8090fb3cd76e64cdb01eddb7e498f6b9e6e02e30c'

  url "http://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  depends_on macos: '>= :mavericks'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
