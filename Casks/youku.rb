cask 'youku' do
  version '1.6.6.03211'
  sha256 '5712a2cd2e3a385b12c83edecb65846b906638ed84cd9316ef42240c7e430ae5'

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
