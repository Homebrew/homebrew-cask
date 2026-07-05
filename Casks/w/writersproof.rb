cask "writersproof" do
  version "1.5.2"
  sha256 "8815a762d6a221cb852d97c79b5b815db791ced9d88af3e0e54d0a79a61f0684"

  url "https://updates.writerslogic.com/macos/WritersProof-#{version}.dmg"
  name "WritersProof"
  desc "Cryptographic authorship witnessing for writers and creators"
  homepage "https://writersproof.com"

  depends_on macos: ">= :sonoma"

  app "WritersProof.app"

  zap trash: [
    "~/Library/Application Support/WritersProof",
    "~/Library/Application Support/CPOP",
    "~/.writersproof",
    "~/Library/Caches/com.writerslogic.witnessd",
    "~/Library/HTTPStorages/com.writerslogic.witnessd",
    "~/Library/Preferences/com.writerslogic.witnessd.plist",
    "~/Library/Saved Application State/com.writerslogic.witnessd.savedState",
  ],
  rmdir: [
    "~/Library/Application Support/WritersProof",
    "~/Library/Application Support/CPOP",
  ]
end
