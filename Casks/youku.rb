cask 'youku' do
  version '1.6.5.02254'
  sha256 '76a0437f9631bdad9012b82271213a8cd04bfcc4cabac5f1200e6724f06cd38f'

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
