cask "zprint" do
  version "1.0.2"
  sha256 "c39b5b60cbd1db0ea40f51c4ce3b875540b4f721a28c617bfb86d54e9e500e4d"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  appcast "https://github.com/kkinnear/zprint/releases.atom"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
