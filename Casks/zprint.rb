cask "zprint" do
  version "1.1.0"
  sha256 "465e6fd2dbd33ffa7c7d0f7f66e05be3800ad18150031c630a68317982491e7d"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  appcast "https://github.com/kkinnear/zprint/releases.atom"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
