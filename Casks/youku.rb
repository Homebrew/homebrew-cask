cask 'youku' do
  if MacOS.version == :mountain_lion
    version '1.0.6.01094'
    sha256 'ab17b83f88f1035bda7d20c064bfd59c35925c373aed510f1612f3473ec0c37e'
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
