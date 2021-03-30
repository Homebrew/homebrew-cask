cask "teamviewermeeting" do
  version "15.16.2"
  sha256 "6d1a9cc2e3747677e8eb7b3e1b0350db74a2da093e4e3ccfa533f51b4f96f8cb"

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
