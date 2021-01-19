cask "teamviewermeeting" do
  version "15.13.14"
  sha256 "d12c0b953e9913cc1d70d7a3c0c5308aaac97ef87474f642668b4b8a6946b4c5"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  livecheck do
    url "https://download.teamviewer.com/blizz/mac"
    strategy :header_match
  end

  app "TeamViewerMeeting.app"
end
