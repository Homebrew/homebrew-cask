cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.9"
  sha256 arm:          "459d6830a411df86e9db0579b803932f0c6bc2eff6a7ab483385f1676fdab21f",
         intel:        "5e98989144dd24a0b74cdb2a5ca08674e1ec7f6847fea03eeacd7eeb6d4cd196",
         arm64_linux:  "6775b274533b94a56acc949c3a80233dc15d5c52127d9ba3f69182f931fce0db",
         x86_64_linux: "8c0d6e2435449c8be7f0e6b2ce6330bfc5f17a98aec4b659c859940455dd0fe5"

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
