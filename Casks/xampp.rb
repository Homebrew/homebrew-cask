cask :v1 => 'xampp' do
  version '1.8.3.3'
  sha256 'b54cced0697caa418851a4bdb11ee1697b3f7f71130e1e6bce19582d60e41530'

  url 'https://downloads.sourceforge.net/project/xampp/XAMPP%20Mac%20OS%20X/1.8.3/xampp-osx-1.8.3-3-installer.dmg'
  homepage 'http://www.apachefriends.org/index.html'
  license :oss

  installer :manual => 'xampp-osx-1.8.3-3-installer.app'
end
