cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.16"
  sha256 arm:          "848f19c91dd692695e01ae308e0bb23060c547b1008e58663a473d38cd568772",
         intel:        "93c49095981eeb13fda0ba2e473bae7d92d334ecd918cee5f89d1c84702c8994",
         arm64_linux:  "2023685f544f8b105ac4820cc98d1e57e6fc77bd29f71fe3ab2095cd4733c6b2",
         x86_64_linux: "a5f4d2ed8f7dfc4a5cb281dc96dfcbf55d3eae86e0e424f37eec98507e26474f"

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
