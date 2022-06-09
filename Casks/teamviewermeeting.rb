cask "teamviewermeeting" do
  version "15.30.2"
  sha256 "9743d2bd815df59c1b50a1ddfcdbdd4c49ddb4c2a506e5e3312a286ab06889c2"

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
