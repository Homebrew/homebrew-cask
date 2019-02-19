cask 'youku' do
  version '1.6.1.01258'
  sha256 '6ac95ebe601418fa5f995b06039804a96961da4f1086f87afbe88d5ad11ae7ba'

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
