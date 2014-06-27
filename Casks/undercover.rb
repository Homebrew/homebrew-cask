class Undercover < Cask
  version '6.0'
  sha256 '07d9b20eba2a873e538e4f2ae4c1dcafafd282fb8af01f3374b08e54069d9932'

  url 'http://assets.undercoverhq.com/client/6.0/undercover_mac.pkg'
  homepage 'http://www.orbicule.com/undercover/mac/'

  install 'undercover_mac.pkg'
  uninstall :files => [
    '/Library/LaunchDaemons/com.orbicule.uc.plist',
    '/Library/LaunchAgents/com.orbicule.UCAgent.plist',
    '/usr/local/uc'
  ]
  caveats do
    files_in_usr_local
  end
end
