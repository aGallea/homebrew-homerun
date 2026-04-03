class Homerun < Formula
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"
  version "0.8.2"
  license "MIT"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "2e1320eb46839d9a3caddb6ff18e67d04ea6ac6ce11beba120c935ced921cefe"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/homerun-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "482818a9b8cce7ac3f54f5384ec52cfd565c5496b90dedf274ed924fe2935069"
  end

  def install
    bin.install "homerun"
    bin.install "homerund"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/homerun --version")
  end
end
