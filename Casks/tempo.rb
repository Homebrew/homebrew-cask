cask "tempo" do
  arch = Hardware::CPU.intel? ? "release" : "release-arm64"

  version "6.0.0"

  url "https://download.yourtempo.co/#{arch}/Tempo-#{version}.dmg"
  if Hardware::CPU.intel?
    sha256 "acfe86aedce23077a34de27717f38920bf4eafb740841088ab31b685fec4e3af"
  else
    sha256 "67260ec4260e30da28abc20d847282f08e09d8bce00730594c598caf3a63bdb7"
  end

  name "Tempo"
  desc "Email client that delivers all email in batches"
  homepage "https://www.yourtempo.co/"

  auto_updates true

  app "Tempo.app"

  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/Logs/Tempo",
    "~/Library/Preferences/com.founders.mial.plist",
    "~/Library/Saved Application State/com.founders.mial.savedState",
  ]

  caveats do
    discontinued
  end
end
