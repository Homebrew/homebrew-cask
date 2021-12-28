cask "zprint" do
  version "1.2.0"
  sha256 "3497c5f15df5deddaa47c9be8d33afc625b4645e178d089d8cd919d0061ef943"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
