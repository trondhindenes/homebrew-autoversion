class Autoversion < Formula
  desc "Automatic versioning tool for your projects"
  homepage "https://github.com/trondhindenes/autoversion"
  license "MIT"
  version "1.0.58"
  if Hardware::CPU.arm?
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.58/autoversion-darwin-arm64.tar.gz"
    sha256 "869958bf25da5ad19d5a411fb3bcea206b8ffe46b2389be8cb49e18f1c0aa270"
  else
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.58/autoversion-darwin-amd64.tar.gz"
    sha256 "75ccd390fbd987c71994df1d904a33385a239a028bbd501d6db3b8871c04d1a7"
  end

  def install
    bin.install "autoversion"  # For a simple binary
  end

  test do
    system "#{bin}/autoversion", "--help"
  end
end

# Generate sha with:
# curl -sL https://github.com/trondhindenes/autoversion/releases/download/v1.0.48/autoversion-darwin-amd64.tar.gz | shasum -a 256