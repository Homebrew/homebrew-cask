cask 'thought-train' do
  version '1.3'
  sha256 '33460d0028807d1875a5e2ee0a197286dbfcc1f1bfab4f14fe63cbdd41686699'

  url "https://thoughttrain.cc/downloads/thought-train-#{version}.pkg"
  appcast 'https://github.com/marcperel/thought-train-production/releases.atom'
  name 'Thought Train'
  homepage 'https://www.thoughttrain.cc/'

  pkg "thought-train-#{version}.pkg"

  uninstall pkgutil: 'thought-train'
end
