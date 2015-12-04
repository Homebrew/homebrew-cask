cask :v1 => 'wingide' do
  version '5.1.8-1'
  sha256 'e3f12e467fd0a17160406010cc6d6fd2b7c84e725848cce4694307706a8eb6c8'

  url 'http://wingware.com/pub/wingide/5.1.8/wingide-5.1.8-1.dmg'
  name 'WingIDE'
  homepage 'http://www.wingware.com'
  license :freemium

  app 'WingIDE.app'
end
