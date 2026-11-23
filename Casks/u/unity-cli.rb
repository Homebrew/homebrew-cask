cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.1"
  sha256 arm:          "d03879e4bd7ed934743bf6819c23062e8a7dfab5d4a62c373af3a395db4cb487",
         intel:        "054f5b6a7d16ef6bd79070956be944e1eae4036efd9d1c593814c538a1081426",
         arm64_linux:  "bd3a399ba1e5aa88303668c5d88ad8e0b1814fbd5784a490e1f5304882692ebe",
         x86_64_linux: "a38e75631edde5b96df8e0a37e2eb8c8d1eb1a6ba30fd41c34f2baac793b5b31"

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
  generate_completions_from_executable "#{staged_path}/unity-#{os}-#{arch}",
                                       base_name:              "unity",
                                       shell_parameter_format: :cobra
end
