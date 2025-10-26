class Autoversion < Formula
  desc "Automatic versioning tool for your projects"
  homepage "https://github.com/trondhindenes/autoversion"
  url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.47/autoversion-darwin-arm64.tar.gz"
  sha256 "5bd9d4757ad9caeebfa9fecb2060a606364e394b8235e39940e44344f6f5a391" # SHA256 of the tarball
  license "MIT"
  version "1.0.47"
  if Hardware::CPU.arm?
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.47/autoversion-darwin-arm64.tar.gz"
    sha256 "5bd9d4757ad9caeebfa9fecb2060a606364e394b8235e39940e44344f6f5a391"
  else
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.47/autoversion-darwin-amd64.tar.gz"
    sha256 "a15a076ad502245124ecb81fd0a767e0169e051d9b36022112e8e5f6d78e3b07"
  end

  def install
    bin.install "autoversion"  # For a simple binary
  end

  test do
    system "#{bin}/autoversion", "--help"
  end
end

# Generate sha with:
# curl -sL https://github.com/trondhindenes/autoversion/releases/download/v1.0.47/autoversion-darwin-amd64.tar.gz | shasum -a 256