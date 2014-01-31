class Undercover < Cask
  url 'http://assets.undercoverhq.com/client/5.5.1/undercover_mac.pkg'
  homepage 'http://www.orbicule.com/undercover/mac/'
  version '5.5.1'
  sha1 'f972daecf2d88f6e21e2d8039bf65355e71a4aaa'
  install 'undercover_mac.pkg'
  uninstall :files => [
    '/Library/LaunchDaemons/com.orbicule.uc.plist',
    '/Library/LaunchAgents/com.orbicule.UCAgent.plist',
    '/usr/local/uc'
  ]
end
