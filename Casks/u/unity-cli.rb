cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.12"
  sha256 arm:          "7f21746fe7b2cf1010a7f293763ad9590715166147dcc0401a7b52de0d95f107",
         intel:        "902d36dc9ef8ebe7f6915673013dcbca435a347faee0c7579de77c39d6e87c78",
         arm64_linux:  "915362c5ac9325a3d5c8c6f9d6ddd2397b5e35f104446a7729d7fdfb9ede16b4",
         x86_64_linux: "12cadf5900c485cbd17ca207d87993bf9a7814c3ec826ba696bd7d80f62b1146"

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
