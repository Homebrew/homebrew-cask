cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.63.0"
  sha256 arm:          "1af4b130a32cfbcc7acb2b3df212c79ea5e9f79a79f65a544c94fc6bf5e4efae",
         x86_64:       "39b92237e4f1a33497521056a941501a2e507a8ccdecb830f0811074286e0e5e",
         arm64_linux:  "7dd67d9cd2b3c6f4d570c571b5c2e67adb0c2bba2d24dfa4dcbee986986ab7b5",
         x86_64_linux: "350828c8e474643af6df12b00039e7ffdf075c6c022577c959acbf33e50a32ea"

  url "https://downloads.wiz.io/v#{version.major}/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/v#{version.major}/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
