class Homerun < Formula
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"
  version "0.8.4"
  license "MIT"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "74d30070790723019808238711f8a48671f29b9e4888cb293dc6d3bc89452038"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "fef9f4ea30afca62421f123c9efd3d4c90750cfa87a2647cabb40f7211443d5e"
  end

  def install
    bin.install "homerun"
    bin.install "homerund"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/homerun --version")
  end
end
