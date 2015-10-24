cask :v1 => 'virtualbox' do
  if MacOS.release <= :lion
    version '4.3.32-103443'
    sha256 'dcfbd1d3014ab393dc5944a9474eeabf8b33471e7d95cb4c94070dc7acab772c'
  else
    version '5.0.8-103449'
    sha256 '4c0987af48340866c3d5902d70f4ef59bdcf05898a36aa425f26c80b29561d4e'
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
