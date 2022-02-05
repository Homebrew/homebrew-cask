cask "zprint" do
  version "1.2.1"
  sha256 "0843b73176a342233a7cb7c409ec462cd89285e3201e3afda0e9493d1737f3c8"

  url "https://github.com/kkinnear/zprint/releases/download/#{version}/zprintm-#{version}"
  name "zprint"
  desc "Library to reformat Clojure and Clojurescript source code and s-expressions"
  homepage "https://github.com/kkinnear/zprint"

  binary "zprintm-#{version}", target: "zprint"
end
