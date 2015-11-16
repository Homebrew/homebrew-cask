class Hbc::CLI::Outdated < Hbc::CLI::Base
  def self.help
    'lists installed casks that have an upgraded version available'
  end

  def self.run(*args)
    puts Hbc.outdated.map(&:to_s)
  end
end
