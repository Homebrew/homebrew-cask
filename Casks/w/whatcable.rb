cask "whatcable" do
  version "1.0.5"
  sha256 "e6a5f85584acd8aee2f20f64b3155e5d016f557e1f3fb12193b19a7f05be158d"

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
