class TotalFinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.4.18.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.4.18'
  sha1 '391acbf67ca87712704c9f9c6ecdcf70'
  install 'TotalFinder.pkg'
  uninstall 'TotalFinder Uninstaller.app'
end
