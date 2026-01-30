class Autoversion < Formula
  desc "Automatic versioning tool for your projects"
  homepage "https://github.com/trondhindenes/autoversion"
  license "MIT"
  version "1.0.57"
  if Hardware::CPU.arm?
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.57/autoversion-darwin-arm64.tar.gz"
    sha256 "38786fcd771add9a239c6f0a111baed816a7f925b4923637982d914d8ce3d713"
  else
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.57/autoversion-darwin-amd64.tar.gz"
    sha256 "b6ca5b4d35c14c02486f4209951a6f98b77c215e180078bcda69399a18a55140"
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