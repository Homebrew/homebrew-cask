cask 'youku' do
  version '1.7.6.10083'
  sha256 'c8eebc1a17a456e50388bdd0902e5801f96304e577493da2ce7b94c321f0b8e9'

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
