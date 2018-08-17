cask 'twist' do
  version '1.5.0,4767'
  sha256 '3829a02234f9be43aff2f1cc92f52f2479b2900f02ce4088eae42e4551d614aa'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
