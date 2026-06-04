cask "whatcable" do
  version "0.20.1"
  sha256 "9e6515c31e6136ce25cd20dc7d4412099dcdb74b30625c57972ce09e5207c912"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"
  name "WhatCable"
  desc "Menu bar app for USB-C cable diagnostics"
  homepage "https://github.com/darrylmorley/whatcable"

  depends_on macos: :sonoma

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"

  zap trash: [
    "~/Library/Application Support/WhatCable",
    "~/Library/Caches/com.bitmoor.whatcable",
    "~/Library/Caches/uk.whatcable.whatcable",
    "~/Library/HTTPStorages/com.bitmoor.whatcable",
    "~/Library/HTTPStorages/uk.whatcable.whatcable",
    "~/Library/Preferences/com.bitmoor.whatcable.plist",
    "~/Library/Preferences/uk.whatcable.whatcable.plist",
  ]
end
