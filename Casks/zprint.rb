cask "zprint" do
  version "1.2.2"
  sha256 "759412de201dd5038e196e7095230566eeeab5bfd0d1996e7944326ce8afaaef"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
