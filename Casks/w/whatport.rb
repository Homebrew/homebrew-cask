cask "whatport" do
  version "1.4.0"
  sha256 "e5e67d6c99c4fba60d66ecf7be7b25b8dd79e04dd728d2c1c7157be358e7cbfe"

  url "https://github.com/darrylmorley/whatport/releases/download/v#{version}/WhatPort.zip"
  name "WhatPort"
  desc "Menu bar app showing real-time USB-C port status (protocol, speed, power)"
  homepage "https://github.com/darrylmorley/whatport"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "WhatPort.app"

  zap trash: [
    "~/Library/Application Support/WhatPort",
    "~/Library/Caches/app.whatport.whatport",
    "~/Library/HTTPStorages/app.whatport.whatport",
    "~/Library/Preferences/app.whatport.whatport.plist",
  ]
end
