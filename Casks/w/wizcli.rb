cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.74.0"
  sha256 arm:   "a9872afb3fcf63771ac5b04d49fa14ccc2b579aedc8231d2b6dca300ac967d54",
         intel: "fcc9c134f0ad4aac20caadd1a03c304a96752b5980a5a3044ba8259b04ae3dce"

  url "https://downloads.wiz.io/wizcli/#{version}/wizcli-darwin-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-darwin-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
