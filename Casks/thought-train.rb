cask "thought-train" do
  version "1.4.0"
  sha256 "f135917e56bdc150923beb28d0005f1d00167f6b90ee67abb0e5d549ce39d0b4"

  url "https://thoughttrain.cc/downloads/thought-train-#{version.major_minor}.pkg"
  name "Thought Train"
  desc "Note taking and to-do-list application"
  homepage "https://www.thoughttrain.cc/"

  livecheck do
    url "https://github.com/marcperel/thought-train-production"
    strategy :git
  end

  pkg "thought-train-#{version.major_minor}.pkg"

  uninstall pkgutil: "thought-train"
end
