cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.17"
  sha256 arm:          "b14ce51e2f872f30ae1e89ed9ef0ffd07aa06160f918aadec09471b2f82846eb",
         intel:        "5f2240f7682871448706e112f7ede236f7ab02ece2679b1cb8a7a148c729a60f",
         arm64_linux:  "4fd880a0e7406de986747e5f484731a9838e097a9e0e70f4f6c4daa9463e2fc1",
         x86_64_linux: "2f5246ee5bea5032da2917f5f0125d3cfe803c85dc34f78bd75a427db13a0b3c"

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
