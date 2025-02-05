cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.72.0"
  sha256 arm:   "4a66f92500d09be5bc15648eef0f45397b3c598f5987736d9d22709f5266df7f",
         intel: "ffcc69d01209c635c3512b123f303bdb6606780aee426ef214fd1d3a94113fcd"

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
