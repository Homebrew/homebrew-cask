cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.1.0"
  sha256 arm:          "f292255f99434764d61b8cf61b72f3be60e0383934b4c35f82d9daaa72aa6a05",
         intel:        "969850c6d2377523c66c3f519ee90d5ac9cd39de3f4e16a0f914aff5d83f8903",
         arm64_linux:  "f981954e87c08cef32df5084acaea0cc88c714db2e238ab9a42f0b46ea872a51",
         x86_64_linux: "780c785eda7479eed2edb8d151c490bf33b540ebb08972965e8d48263bb68ab0"

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
    url "https://public-cdn.cloud.unity3d.com/hub/prod/cli/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "unity-#{os}-#{arch}", target: "unity"
end
