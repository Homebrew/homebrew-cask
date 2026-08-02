cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.3"
  sha256 arm:          "adfb6dbd4bc2015052a63d2097ec535b5408f585e2e35f3754b995e1541eef48",
         intel:        "d0d3b356d107f333e866f72b96ff440f810976715df93dd79ea2a6b777c3b50f",
         arm64_linux:  "21da2bf98d16dbad55dd3bb187a01008acfe08396075e491880d97d818a9ef11",
         x86_64_linux: "9b89aaa5a676e8e5bd6a3844a9398defb963bd3495186445a464a47057e54ea3"

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
  homepage "https://docs.unity.com/en-us/cli"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/cli/latest-beta.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The extension-less download is staged under the version directory's name
  binary version.to_s, target: "unity"
end
