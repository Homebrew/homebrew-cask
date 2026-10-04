cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.78.0"
  sha256 arm:          "248833a1f9c355328cb999bf8ac0573a8af62a96186ab784b8eac241c0baf8a5",
         intel:        "2c4d27c235202f53ea84b5338532c6b7c359d72edcc7b399c52f1b417eef5717",
         arm64_linux:  "b21669c739b7f1999feb0ffb0e8fc0dbd43a89dee8a1383c7be055459bc244fb",
         x86_64_linux: "39b9d7a38d291b953de09761f7999fd38d50624f0181788b6bb82edffbc88e20"

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
