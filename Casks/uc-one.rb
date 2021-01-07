cask "uc-one" do
  version "3.9.18.61"
  sha256 :no_check

  url "https://storage.googleapis.com/ucone_saas_and_meet_clients/ucone/mac/latest/UC-One.dmg",
      verified: "storage.googleapis.com/ucone_saas_and_meet_clients/"
  name "Cisco UC-One"
  homepage "https://uc-one.com/"

  app "UC-One.app"

  zap trash: "~/Library/Application Support/BroadSoft"
end
