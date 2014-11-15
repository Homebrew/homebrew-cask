cask :v1 => 'wjoy' do
  version '0.7.1'
  sha256 '98a9f825634b09b901ad979a6cdda241a04a1cbd7dcd14b4b17b0bebe3f40ee1'

  url "https://wjoy.googlecode.com/files/wjoy%20#{version}.dmg"
  homepage 'https://code.google.com/p/wjoy/'
  license :oss

  app 'Wjoy.app'
end
