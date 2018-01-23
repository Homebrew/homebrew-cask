cask 'youku' do
  version '1.3.5.01166'
  sha256 '5d9f2f546261e402468d0ba9b984c9060010cc0de1f6c94a549058eec6bcac1d'

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
