cask 'youku' do
  version '1.6.0.01099'
  sha256 '99d2e636fe946bcad5359a106bcd7b5ccbf8f9f05bb3fcbade07bd23b43a65f9'

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  depends_on macos: '>= :mavericks'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
