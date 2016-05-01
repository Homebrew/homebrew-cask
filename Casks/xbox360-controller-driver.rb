cask 'xbox360-controller-driver' do
  version '0.16'
  sha256 '16d1e9790469fe1f71ec01b417ea9839bbd0b1c614e5b01d9691588c083a8d4d'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: '941793641fb8345a0fd8e699b3647965011c618d56c2aee890a3649a635fe620'
  name 'TattieBogle Xbox 360 Controller Driver (with improvements)'
  homepage 'https://github.com/360Controller/360Controller'
  license :gpl

  pkg 'Install360Controller.pkg'

  uninstall pkgutil:   'com.mice.pkg.Xbox360controller',
            launchctl: 'com.mice.360Daemon',
            kext:      [
                         'com.mice.Xbox360ControllerForceFeedback',
                         'com.mice.driver.Xbox360Controller',
                         'com.mice.driver.Wireless360Controller',
                         'com.mice.driver.WirelessGamingReceiver',
                       ],
            # Symlink to kext in /Library/Extensions is not removed
            # during :pkgutil phase of uninstall, so we delete it here.
            delete:    '/System/Library/Extensions/360Controller.kext'

  caveats do
    reboot
  end
end
