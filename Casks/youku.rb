cask 'youku' do
  if MacOS.version == :mountain_lion
    version '1.0.6.01094'
    sha256 'ab17b83f88f1035bda7d20c064bfd59c35925c373aed510f1612f3473ec0c37e'
  else
    version '1.2.2.04189'
    sha256 '6fe78dea2f1c292775b1ab5d0eb2102ec2d70eef5f6b6f37d850a08b9ba65e7b'
  end

  url "http://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
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
