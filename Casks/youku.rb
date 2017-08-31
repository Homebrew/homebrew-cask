cask 'youku' do
  version '1.2.7.08183'
  sha256 '48a58b27ccdc20b725ce6ffe6703b46ebd7501c1852053a00143b22c7b77ea5e'

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
