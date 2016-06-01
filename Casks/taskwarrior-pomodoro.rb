cask 'taskwarrior-pomodoro' do
  version '1.4.0'
  sha256 '72d83ed48f4fac4c9aa6b330392198118ec8038135370ae03cffeb9eafc74b43'

  url "http://coddingtonbear-public.s3.amazonaws.com/github/taskwarrior-pomodoro/releases/taskwarrior-pomodoro-#{version}.dmg"
  appcast 'https://github.com/coddingtonbear/taskwarrior-pomodoro/releases.atom',
          checkpoint: '41aace18e70a1f810a265ce4c2592069501eed80cca5afa51036fb5dd1a0c750'
  name 'Taskwarrior-Pomodoro'
  homepage 'https://github.com/coddingtonbear/taskwarrior-pomodoro'
  license :mit

  app 'Taskwarrior Pomodoro.app'
end
