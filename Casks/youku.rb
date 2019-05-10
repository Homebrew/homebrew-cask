cask 'youku' do
  version '1.6.9.05088'
  sha256 '146253915d51b0ec605dfc8f5ad456f2a85dd18efa5e1f01af5a2dc6b49db968'

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
