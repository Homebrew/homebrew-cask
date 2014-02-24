class Undercover < Cask
  url 'http://assets.undercoverhq.com/client/5.5.1/undercover_mac.pkg'
  homepage 'http://www.orbicule.com/undercover/mac/'
  version '5.5.1'
  sha256 'c39959f3e4f229f9ca6835ceff67ed9a5060e2f5cdccdd41293379cfd9482e4c'
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
