cask 'youku' do
  version '1.7.8.11195'
  sha256 '916df57a79208cb70676fc09f0c9b97e92f6b6dfb0b5343b3b78446bebf35cae'

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
