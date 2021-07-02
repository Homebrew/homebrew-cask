cask "teamwire" do
  version "2.7.1"
  sha256 "477b20cf53ff56b7c45e1fd161f1fbc9cca1c9c36f010dec191ce48dbadd1619"

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name "Teamwire"
  desc "Secure business messenger"
  homepage "https://www.teamwire.eu/"

  livecheck do
    url "https://desktop.teamwire.eu/download.php?platform=darwin&lang=de"
    strategy :header_match
  end

  app "Teamwire.app"

  zap trash: "~/Library/Application Support/Teamwire/"
end
