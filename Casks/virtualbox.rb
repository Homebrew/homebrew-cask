cask :v1 => 'virtualbox' do
  if MacOS.release <= :lion
    version '4.3.32-103443'
    sha256 'dcfbd1d3014ab393dc5944a9474eeabf8b33471e7d95cb4c94070dc7acab772c'
  else
    version '5.0.10-104061'
    sha256 '62f933115498e51ddf5f2dab47dc1eebb42eb78ea1a7665cb91c53edacc847c6'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*},'')}/VirtualBox-#{version}-OSX.dmg"
  name 'VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl
  tags :vendor => 'Oracle'

  pkg 'VirtualBox.pkg'

  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] },
            :pkgutil => 'org.virtualbox.pkg.*'
end
