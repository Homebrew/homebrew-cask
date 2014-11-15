cask :v1 => 'welly' do
  version '2.7'
  sha256 'cb24a26432d8927b1159a1865602c3f30b5190f628167c954e4d6cc723cfcb0f'

  url "https://welly.googlecode.com/files/Welly.v#{version}.fix.zip"
  appcast 'http://welly.googlecode.com/svn/wiki/WellyUpdate.xml',
          :sha256 => '0f7d24defff0753fd85883c94111714eded290bae284a2244aba5bfa63224a8c'
  homepage 'https://code.google.com/p/welly/'
  license :oss

  app 'Welly.app'
end
