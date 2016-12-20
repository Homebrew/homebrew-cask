cask 'virtualbox' do
  if MacOS.version <= :lion
    version '4.3.38-106717'
    sha256 'f7229f9537dc2359e2f86b2d3623e5024f11d2ce9b075fe34a71b55995897463'
  elsif MacOS.version == :mountain_lion
    version '5.0.26-108824'
    sha256 'e8836a98adea9350917a41e754dfec4fe2df7c4a0224fd8beca72cbc5d778437'
  else
    version '5.1.12-112440'
    sha256 '74b10d9af01b8eb7d987088ffe52c74646a479a27cba4f98dc5149f1f6b93c76'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: 'be267ff5adb254acf71b9e2dab4de6bd16d4b0e5bf085edd9156c2d7be1f585f'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/'

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
