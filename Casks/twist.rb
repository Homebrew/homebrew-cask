cask 'twist' do
  version '1.6.20,6872'
  sha256 'c1d6a1e839b3bdbf92845e5838a148f7519711d136a4bab704db72c62472b44f'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
