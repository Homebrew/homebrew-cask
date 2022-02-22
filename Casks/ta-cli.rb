cask "ta-cli" do
  version "1.0.3"
  sha256 "e9122ef14ac4d3870ab8820145c0be37c486dd3c06ca7f340d310cf6c885b93e"

  url "https://github.com/testappio/cli/releases/download/v#{version}/ta-cli_macos.zip"
  name "ta-cli"
  desc "This is the official CLI () for TestApp.io app distribution"
  homepage "https://github.com/testappio/cli"

  binary "ta-cli_macos/ta-cli"
end
