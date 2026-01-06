class Autoversion < Formula
  desc "Automatic versioning tool for your projects"
  homepage "https://github.com/trondhindenes/autoversion"
  license "MIT"
  version "1.0.56"
  if Hardware::CPU.arm?
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.56/autoversion-darwin-arm64.tar.gz"
    sha256 "11142282a42c4ee0f049fb0430da8ee01d40ff6cab5ba919420d425648c37cda"
  else
    url "https://github.com/trondhindenes/autoversion/releases/download/v1.0.56/autoversion-darwin-amd64.tar.gz"
    sha256 "9bd1202f5854529468c9c6e46d9f9a96f5b1b91fcba96124f75c722a526f5397"
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