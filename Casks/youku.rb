cask 'youku' do
  version '1.7.5.08231'
  sha256 'f6fb1b219193745c7e9358906710cbabd19f8a8d218ad0319bbfa28a265927d0'

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
