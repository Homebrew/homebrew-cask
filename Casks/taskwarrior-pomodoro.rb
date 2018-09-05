cask 'taskwarrior-pomodoro' do
  version '1.8.0'
  sha256 '307f017d1ad14721637196e27af00fe2428e4afa8c10bc238b70e8277ccd0486'

  url "https://github.com/coddingtonbear/taskwarrior-pomodoro/releases/download/v#{version}/taskwarrior-pomodoro-#{version}.dmg"
  appcast 'https://github.com/coddingtonbear/taskwarrior-pomodoro/releases.atom'
  name 'Taskwarrior-Pomodoro'
  homepage 'https://github.com/coddingtonbear/taskwarrior-pomodoro'

  app 'Taskwarrior Pomodoro.app'
end
