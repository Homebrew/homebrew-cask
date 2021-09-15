cask "uc-one" do
  version "3.9.24.35"
  sha256 :no_check

  url "https://storage.googleapis.com/ucone_saas_and_meet_clients/ucone/mac/latest/UC-One.dmg",
      verified: "storage.googleapis.com/ucone_saas_and_meet_clients/"
  name "Cisco UC-One"
  desc "Business phone and team collaboration application"
  homepage "https://uc-one.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "UC-One.app"

  zap trash: "~/Library/Application Support/BroadSoft"
end
