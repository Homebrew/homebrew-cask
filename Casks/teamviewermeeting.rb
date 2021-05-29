cask "teamviewermeeting" do
  version "15.18.2"
  sha256 "f5dbcfacf3566dd4d278f27183f197b6f9568d6043f77ec10f42c4d1dea46ee7"

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
