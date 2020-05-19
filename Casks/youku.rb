cask 'youku' do
  version '1.8.2.04309'
  sha256 '8cabc582d01236020299b2de3ba6e5ff580c7cb36f19b57f895b4782d3701cd8'

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
