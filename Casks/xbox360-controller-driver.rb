cask 'xbox360-controller-driver' do
  version '0.16.1'
  sha256 '676ace81cd91da316433eae915c4755941864ee0ea20f331ed4c1fd952385fee'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: '9aab5799b0f3b8983fa65f31c89326549a342f47b00421c0d0738351b6e217ad'
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
