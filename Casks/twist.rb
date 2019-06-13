cask 'twist' do
  version '1.6.12,6415'
  sha256 'ed5012d8cd36c1e519720fc417d4f3b81d5391f69b593fbc3bb399d9d80e8aa9'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
