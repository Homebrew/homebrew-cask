cask 'xbox360-controller-driver' do
  version '0.14'
  sha256 'a7efe48fae89aa592e904d1dc3ba9a73b2d644362eac88feb5e73a774e3fcf88'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}-unofficial/360ControllerInstall_#{version}_unofficial.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: 'b3f93a26f2cfc8c5f3987967c01392ca95ec71d4c062425b2b317c40e12f4ca7'
  name 'TattieBogle Xbox 360 Controller Driver (with improvements)'
  homepage 'https://github.com/360Controller/360Controller'
  license :gpl

  pkg 'Install 360 Controller.pkg'

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
