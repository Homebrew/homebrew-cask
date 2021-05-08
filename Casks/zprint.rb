cask "zprint" do
  version "1.1.2"
  sha256 "c2e11c9d416260d52577293b6b69f3f8181601ec7e1deefb9024242338c7b7ac"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
