cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.14"
  sha256 arm:          "367ea124c61e91dc22409699cb40d2e65d23952f3220e911ccea1f6d8a1ff37f",
         intel:        "578c5923adfcb9e1c789c17ea344a0a71ca94b69681550a793260ba890ee22fc",
         arm64_linux:  "485404dca1b6a21dbdc38249aced69bfa9dc2cb26dc995bc1f29fe9b860c51d5",
         x86_64_linux: "d9a2c1716ce723b970898f7f40adc09cceee04e84ce2f1f1638f07ac3e9898aa"

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
