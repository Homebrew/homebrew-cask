class Totalfinder < Cask
  url 'http://downloads.binaryage.com/TotalFinder-1.5.19.dmg'
  homepage 'http://totalfinder.binaryage.com'
  version '1.5.19'
  sha256 'dd7950409817070be2dcf7730fbd9183422d4641f9bd8d69c798baff235f1eda'
  install 'TotalFinder.pkg'
  uninstall :script => {
    :executable => 'TotalFinder Uninstaller.app/Contents/MacOS/TotalFinder Uninstaller',
    :args => %w[--headless]
  }
end
