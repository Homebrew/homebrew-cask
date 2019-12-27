cask 'youku' do
  version '1.7.9.12180'
  sha256 '6f9262ae59cd77abd74c23c4c9e95960f48ef98168b210cdbdf69eb1a15bbeb7'

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
