cask 'youku' do
  version '1.3.9.03123'
  sha256 '11036a6f67f0fe45da81bd37aa4e79db51bf7f0d16ca7643e168f1a230047196'

  url "http://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
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
