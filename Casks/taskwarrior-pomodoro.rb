cask 'taskwarrior-pomodoro' do
  version '1.5.0'
  sha256 '196c38ec03758ff27a16d1341d4ed5475be8f00f3a1cc963ba321c2c3a502c4d'

  # coddingtonbear-public.s3.amazonaws.com/github/taskwarrior-pomodoro was verified as official when first introduced to the cask
  url "https://coddingtonbear-public.s3.amazonaws.com/github/taskwarrior-pomodoro/releases/taskwarrior-pomodoro-#{version}.dmg"
  appcast 'https://github.com/coddingtonbear/taskwarrior-pomodoro/releases.atom',
          checkpoint: '6b898b32196fc2ce0808efaa92d2a343fd0697aec7cffcc285d95c48c59a4a89'
  name 'Taskwarrior-Pomodoro'
  homepage 'https://github.com/coddingtonbear/taskwarrior-pomodoro'

  app 'Taskwarrior Pomodoro.app'
end
