cask 'virtualbox' do
  if MacOS.release <= :lion
    version '4.3.32-103443'
    sha256 'dcfbd1d3014ab393dc5944a9474eeabf8b33471e7d95cb4c94070dc7acab772c'
  else
    version '5.0.12-104815'
    sha256 'e74a078780377133789e3f984e3f75324bdb5e57bf3b920a036bf52a403a5aa0'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*},'')}/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl

  pkg 'VirtualBox.pkg'

  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] },
            :pkgutil => 'org.virtualbox.pkg.*'
end
