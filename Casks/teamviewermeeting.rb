cask "teamviewermeeting" do
  version "15.22.3"
  sha256 "177c9be1f4ef5a33f1eed7dac2de60e2286dc6fe5238287f864c13610f8aa8fe"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  name "TeamViewerMeeting"
  desc "Videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  livecheck do
    url "https://download.teamviewer.com/blizz/mac"
    strategy :header_match
  end

  app "TeamViewerMeeting.app"
end
