cask 'youku' do
  version '1.5.9.09198'
  sha256 '797a66ca4ab15c0f44e07f53dc1459414181fa860bd25f398b5091c293c0b907'

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
