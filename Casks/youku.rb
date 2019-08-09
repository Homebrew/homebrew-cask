cask 'youku' do
  version '1.7.5.08089'
  sha256 '930b82af66c7ab96566be89e8bc2d67ea97959dea996c3d7f6cae219159c64b1'

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
