# Fake a few spots where scout_apm expects the `Rails` constant to exist
#
class Rails
  module VERSION
    MAJOR = 4
  end

  def self.env
    FakeRailsEnv.new
  end

  # Return the location of this file
  def root
    File.dirname(__FILE__)
  end
end

class FakeRailsEnv
  def development?; true; end
  def test?; true; end
  def production?; true; end
end
