cask 'uhk-agent' do
  version '1.2.0'
  sha256 '5b54d4c69a93f147a61af7540f75993d3bf1ce9f76f3ef4279634fe08c6f03ee'

  url 'https://github.com/UltimateHackingKeyboard/agent/releases/download/v1.2.0/UHK.Agent-1.2.0-mac.1.2.0.dmg'
  appcast 'https://github.com/UltimateHackingKeyboard/agent/releases.atom',
          checkpoint: '2a9fdeadd4bb3ba46c05616e6c7528a8e111899d4a4ccea286b0c944bac19359'
  name 'Ultimate Hacking Keyboard Agent'
  name 'UHK Agent'
  homepage 'https://github.com/UltimateHackingKeyboard/agent'

  app 'UHK Agent.app'
end
