class Homerun < Formula
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"
  version "0.8.1"
  license "MIT"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "8662a26d3448142fa3ab04cf5f299a7e939fffbcd28bd2769c7a77d7ba88e109"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "54505d268a4e788c705634b1d67a576c5256a58229fec3e3955622bc06a557be"
  end

  def install
    bin.install "homerun"
    bin.install "homerund"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/homerun --version")
  end
end
