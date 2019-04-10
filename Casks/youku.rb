cask 'youku' do
  version '1.6.7.04093'
  sha256 '3c3264f8cbf58f0fec8511928d65ad5840e471fe2da38cb49d59b1baf4db1d53'

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
