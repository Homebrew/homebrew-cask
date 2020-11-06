cask "uc-one" do
  version :latest
  sha256 :no_check

  # storage.googleapis.com/ucone_saas_and_meet_clients/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/ucone_saas_and_meet_clients/ucone/mac/latest/UC-One.dmg"
  name "Cisco UC-One"
  homepage "https://uc-one.com/"

  app "UC-One.app"

  zap trash: "~/Library/Application Support/BroadSoft"
end
