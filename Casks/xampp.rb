cask :v1 => 'xampp' do
  version '5.6.3-0'
  sha256 '23cd1b990397958b31e5904a340f416aed98b767a868bbcad7be123f53878828'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/project/xampp/XAMPP%20Mac%20OS%20X/#{version.sub(%r{-\d+$},'')}/xampp-osx-#{version}-installer.dmg"
  homepage 'http://www.apachefriends.org/index.html'
  license :oss

  installer :manual => 'XAMPP.app'

  uninstall :quit => 'com.bitnami.manager',
            :delete => '/Applications/XAMPP/'
end
