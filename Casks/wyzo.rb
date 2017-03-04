cask 'wyzo' do
  version '3.5.6'
  sha256 '18cda3c323544c729d7e532151a32c70d8427dae2762695229d102762b313026'

  url "http://download.wyzo.com/files/mac/WyzoSetup-#{version}.dmg"
  name 'Wyzo'
  homepage 'http://www.wyzo.com/'

  app 'Wyzo.app'
end
