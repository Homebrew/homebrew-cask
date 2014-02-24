class Totalfinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.5.6.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.5.6'
  sha256 'bf367b9eb9e7c3fc5fcce5a53cbe3f67238780e36a1a57291ec98ca7498e38f8'
  install 'TotalFinder.pkg'
  uninstall :script => {
    :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
    :args => %w[--headless]
  }
end
