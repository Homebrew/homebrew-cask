class Cask::CLI::InternalUseBase < Cask::CLI::Base
  def self.command_name
    super.sub(%r{^internal_}i, '_')
  end

  def self.visible
    false
  end
end
