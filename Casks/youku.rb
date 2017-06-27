cask 'youku' do
  version '1.2.6.06217'
  sha256 'ff188c631ee6b5f751138c08b3751b9b14763785e2244877e882729a8ef6c5bd'

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
