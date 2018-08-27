cask 'youku' do
  version '1.5.5.08018'
  sha256 '86b0a71b4cfd15b41b703f633518348b03fb985031321d62c0652c6bcc65226d'

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
