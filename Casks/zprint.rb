cask "zprint" do
  version "1.2.3"
  sha256 "ec60356f74c81df39899bbceec285b3eb1cecde68a7f403e0df3ef8db9ed43f6"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
