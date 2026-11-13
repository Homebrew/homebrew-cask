cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0"
  sha256 arm:          "de6cb46c1ac1871d524965ed2ed5f14e1eb13b4fc25210a209a55c0b1154014f",
         intel:        "2ce9f3cbdc537e4468f178382749508eca7c611cf4b304cc23395c63321a7d96",
         arm64_linux:  "9534d3a98c92178f4abfc8e7d50a62df91da190db838bc6576e8982552269a37",
         x86_64_linux: "bd680055cb4a8d9d244c70d79eefa5828f6668075097559547e1ca4aece07b2b"

  on_macos do
    zap trash: "~/Library/Application Support/UnityHub"
  end
  on_linux do
    zap trash: [
      "~/.cache/unityhub",
      "~/.config/unityhub",
    ]
  end

  url "https://public-cdn.cloud.unity3d.com/hub/prod/cli/#{version}/unity-#{os}-#{arch}"
  name "Unity CLI"
  desc "Command-line interface for Unity"
  homepage "https://docs.unity.com/en-us/unity-cli"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/cli/latest-beta.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The extension-less download is staged under the version directory's name
  binary version.to_s, target: "unity"
end
