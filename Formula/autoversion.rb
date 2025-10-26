class Autoversion < Formula
  desc "Automatic versioning tool for your projects"
  homepage "https://github.com/trondhindenes/autoversion"
  license "MIT"
  version "1.0.52"
  if Hardware::CPU.arm?
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.52/autoversion-darwin-arm64.tar.gz"
    sha256 "98fb96ba49d0d2bfa7e760ec0d7aad081e154d29e81f6246b4747b84bf4a5e60"
  else
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.52/autoversion-darwin-amd64.tar.gz"
    sha256 "ca57ae6189f4fccb112d0a4faea0f70d3e965829e165f42c96b7eab538a8b8c6"
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