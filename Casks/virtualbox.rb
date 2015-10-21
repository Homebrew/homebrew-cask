cask :v1 => 'virtualbox' do
  version '5.0.8-103449'   # virtualbox.rb and virtualbox-extension-pack.rb should be upgraded together
  sha256 '4c0987af48340866c3d5902d70f4ef59bdcf05898a36aa425f26c80b29561d4e'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*},'')}/VirtualBox-#{version}-OSX.dmg"
  name 'VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl
  tags :vendor => 'Oracle'

  pkg 'VirtualBox.pkg'

  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] },
            :pkgutil => 'org.virtualbox.pkg.*'
end
