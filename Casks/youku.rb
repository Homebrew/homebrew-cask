cask 'youku' do
  version '1.5.10.10159'
  sha256 '620dbe6a6a94cb801dbf0edcb8d7d8a699e05781144b973b1ddc18ea06657dc0'

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
