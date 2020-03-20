cask 'thought-train' do
  version '1.2'
  sha256 'cc8ed67924f2a30c54922a525e3f983afd2745f89db45abdb90ae1c9a12a631c'

  url "https://thoughttrain.cc/downloads/thought-train-#{version}.pkg"
  name 'Thought Train'
  homepage 'https://www.thoughttrain.cc/'

  pkg "thought-train-#{version}.pkg"

  uninstall pkgutil: 'thought-train'
end
