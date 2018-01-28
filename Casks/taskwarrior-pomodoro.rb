cask 'taskwarrior-pomodoro' do
  version '1.7.0'
  sha256 '5909e42e31a6b545d8e549f000433ca677708f0c4178e1fcd60b8f890ad61adf'

  # coddingtonbear-public.s3.amazonaws.com/github/taskwarrior-pomodoro was verified as official when first introduced to the cask
  url "https://coddingtonbear-public.s3.amazonaws.com/github/taskwarrior-pomodoro/releases/taskwarrior-pomodoro-#{version}.dmg"
  appcast 'https://github.com/coddingtonbear/taskwarrior-pomodoro/releases.atom',
          checkpoint: '60001727db126f00c27daaa0d6df7472b5ba155b4b0153ac1f9b8baee7d8e251'
  name 'Taskwarrior-Pomodoro'
  homepage 'https://github.com/coddingtonbear/taskwarrior-pomodoro'

  app 'Taskwarrior Pomodoro.app'
end
