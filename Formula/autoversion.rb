class Autoversion < Formula
  desc "Automatic versioning tool for your projects"
  homepage "https://github.com/trondhindenes/autoversion"
  url "https://github.com/trondhindenes/autoversion/archive/refs/tags/v1.0.47.tar.gz"
  sha256 "b5998721860554ed364bca9ec8bd23aca4b5c21d3ead09e27122475a306c444b" # SHA256 of the tarball
  license "MIT"
  version "1.0.47"

  def install
    bin.install "autoversion"  # For a simple binary
  end

  test do
    system "#{bin}/autoversion", "--help"
  end
end