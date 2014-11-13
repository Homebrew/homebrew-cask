cask :v1 => 'undercover' do
  version '6.0'
  sha256 '07d9b20eba2a873e538e4f2ae4c1dcafafd282fb8af01f3374b08e54069d9932'

  url "http://assets.undercoverhq.com/client/#{version}/undercover_mac.pkg"
  homepage 'http://www.orbicule.com/undercover/mac/'
  license :unknown

  pkg 'undercover_mac.pkg'

  uninstall :pkgutil => 'com.orbicule.pkg.Undercover',
            :quit => [ 'com.orbicule.uc', 'com.orbicule.UCAgent' ],
            :launchctl => [ 'com.orbicule.uc', 'com.orbicule.UCAgent' ],
            :early_script => '/usr/local/uc/bin/Undercover Registration.app/Contents/MacOS/uc-uninstall',
            :script => {
              :executable => '/usr/bin/killall',
              :args => %w[-9 uc UCAgent]
            }

  caveats do
    files_in_usr_local
    reboot
  end
end
