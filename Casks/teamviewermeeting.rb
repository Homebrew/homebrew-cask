cask "teamviewermeeting" do
  version "15.19.3"
  sha256 "2e7feb71efebaa115e8d037e78d58b27710df7bce9d806393968d6e65fdc1d17"

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
