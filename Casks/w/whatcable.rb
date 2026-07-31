cask "whatcable" do
  version "1.3.0"
  sha256 "83edb8621002464363bcc485e349cb80e944a75406475528d2d526d33b26405b"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"
  name "WhatCable"
  desc "Menu bar app for USB-C cable diagnostics"
  homepage "https://github.com/darrylmorley/whatcable"

  auto_updates true
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
