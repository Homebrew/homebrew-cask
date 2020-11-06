cask "zprint" do
  version "1.0.1"
  sha256 "76b2f41b9a89668f05429dc30a436aff868bfc8e99700ada00788cb1157705fb"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  appcast "https://github.com/kkinnear/zprint/releases.atom"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
