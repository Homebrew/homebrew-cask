require 'test_helper'

describe Hbc::CLI::List do
  it 'lists the installed Casks in a pretty fashion' do
    casks = %w[local-caffeine local-transmission].map { |c| Hbc.load(c) }

    casks.each { |c| TestHelper.install_without_artifacts(c) }

    lambda {
      Hbc::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      local-caffeine
      local-transmission
    OUTPUT
  end

  describe 'when Casks have been renamed' do
    before do
      @renamed_path = Hbc.caskroom.join('ive-been-renamed','latest','Renamed.app').tap(&:mkpath)
      @renamed_path.join('Info.plist').open('w') { |f| f.puts "Oh plist" }
    end

    after do
      @renamed_path.rmtree if @renamed_path.exist?
    end

    it 'lists installed Casks without backing ruby files (due to renames or otherwise)' do
      lambda {
        Hbc::CLI::List.run
      }.must_output <<-OUTPUT.gsub(/^ */, '')
        ive-been-renamed (!)
      OUTPUT
    end
  end


  it 'given a set of installed Casks, lists the installed files for those Casks' do
    casks = %w[local-caffeine local-transmission].map { |c| Hbc.load(c) }

    casks.each { |c| TestHelper.install_without_artifacts(c) }

    caffeine, transmission = casks

    # App Symlinks sections are empty below because the expected links
    # aren't created under the test harness. Todo: managed links should
    # be fully mocked and confirmed here.
    lambda {
      Hbc::CLI::List.run('local-transmission', 'local-caffeine')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      ==> App Symlinks managed by brew-cask:
      ==> Staged content:
      #{transmission.staged_path} (489 files)
      ==> App Symlinks managed by brew-cask:
      ==> Staged content:
      #{caffeine.staged_path} (13 files)
    OUTPUT
  end
end
