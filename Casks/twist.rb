cask 'twist' do
  version '1.6.18,6719'
  sha256 '9fa80be6f9baf41f9cbc1849d138c0aa98b56c2b845be931008b59db863d11f2'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
