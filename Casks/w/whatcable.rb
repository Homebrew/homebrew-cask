cask "whatcable" do
  version "0.6.0"
  sha256 "5c4282689e8273fd8bcd43fe5c93582e851cf40c5758b672dfe14f270b4410fe"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip",
      verified: "github.com/darrylmorley/whatcable/"
  name "WhatCable"
  desc "USB-C cable diagnostics"
  homepage "https://whatcable.uk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"

  zap trash: [
    "~/Library/Application Support/WhatCable",
    "~/Library/Caches/com.bitmoor.whatcable", # Former bundle ID
    "~/Library/Caches/uk.whatcable.whatcable",
    "~/Library/HTTPStorages/com.bitmoor.whatcable", # Former bundle ID
    "~/Library/HTTPStorages/uk.whatcable.whatcable",
    "~/Library/Preferences/com.bitmoor.whatcable.plist", # Former bundle ID
    "~/Library/Preferences/uk.whatcable.whatcable.plist",
  ]
end
