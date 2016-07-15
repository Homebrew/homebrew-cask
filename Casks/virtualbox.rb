cask 'virtualbox' do
  if MacOS.release <= :lion
    version '4.3.32-103443'
    sha256 'dcfbd1d3014ab393dc5944a9474eeabf8b33471e7d95cb4c94070dc7acab772c'
  else
    version '5.1.0-108711'
    sha256 '410100a2019eee0af805b05f836df3486cf944016eee7015f1b3dc24289d6686'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl

  auto_updates true

  pkg 'VirtualBox.pkg'

  uninstall script:  { executable: 'VirtualBox_Uninstall.tool', args: %w[--unattended] },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
              ],
      rmdir:  '~/VirtualBox VMs'
end
