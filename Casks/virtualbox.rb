cask 'virtualbox' do
  if MacOS.version <= :lion
    version '4.3.38-106717'
    sha256 'f7229f9537dc2359e2f86b2d3623e5024f11d2ce9b075fe34a71b55995897463'
  elsif MacOS.version == :mountain_lion
    version '5.0.26-108824'
    sha256 'e8836a98adea9350917a41e754dfec4fe2df7c4a0224fd8beca72cbc5d778437'
  else
    version '5.1.6-110634'
    sha256 '3fc6e2f1eb6d25ccf91194a102d2dd22b51a23df469257ea4d3893e1c5056e85'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '68cffa589cae3c4d557ecb82a624655a2b6c85199c1425d26eefccfaa8548b2b'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl

  pkg 'VirtualBox.pkg'

  uninstall script:  { executable: 'VirtualBox_Uninstall.tool', args: %w[--unattended] },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
                '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
                '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
                '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
                '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
              ],
      rmdir:  '~/VirtualBox VMs'
end
