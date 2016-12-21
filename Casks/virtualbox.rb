cask 'virtualbox' do
  if MacOS.version <= :lion
    version '4.3.40-110317'
    sha256 'eb70fc0f36844ced6dc7deeb30397866fbaffb4a8dfb6071b047e943cae6a312'
  elsif MacOS.version == :mountain_lion
    version '5.0.30-112061'
    sha256 '030a054e49bf4edde7730fd7f5bbbc8be47d6ab06c345da70e1b5a124414f5d0'
  else
    version '5.1.12-112440'
    sha256 '74b10d9af01b8eb7d987088ffe52c74646a479a27cba4f98dc5149f1f6b93c76'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '779e6d24cb291ff605d93a3ec585cfa5589c1d4584ab7d9ee04a231d41ff5df3'
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
