cask 'youku' do
  version '1.8.3.05292'
  sha256 'a41488d8c8f56394e4c370957915a4dbc8171acbed44693dbfb192eca4268cff'

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
