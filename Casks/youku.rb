cask 'youku' do
  version '1.7.9.01175'
  sha256 '63a69e6acf279af0c7d427628636430dea18cbde73ba2457a7cef789016054bc'

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
