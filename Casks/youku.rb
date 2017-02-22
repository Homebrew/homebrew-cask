cask 'youku' do
  if MacOS.version == :mountain_lion
    version '1.0.5.5031'
    sha256 'b7d9ff08bd87150dfa9a52a891d57002e0cbc3f73d181240adfa86a076793d55'
  else
    version '1.2.0.02132'
    sha256 '3f631452ad31dc1f743951f8a760c5146e3a6a4420cce40c0010f158b9ab4f25'
  end

  url "http://pcclient.download.youku.com/ugc/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  depends_on macos: '>= :mountain_lion'

  app '优酷.app'

  zap delete: [
                '~/Library/Application Scripts/com.youku.mac',
                '~/Library/Containers/com.youku.mac',
              ]
end
