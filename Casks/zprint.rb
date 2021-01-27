cask "zprint" do
  version "1.1.1"
  sha256 "9ae2b454f680f81993803637c9891b54bbb0b56f46f951bc662024313fb9356e"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  appcast "https://github.com/kkinnear/zprint/releases.atom"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
