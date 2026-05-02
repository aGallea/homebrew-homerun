cask "homerun" do
  version "0.8.4"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_aarch64.dmg"
    sha256 "6d657eb5875fadd7c88eabb486179ca90763641641f2a4fbd5efab0ea99f600b"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_x64.dmg"
    sha256 "53a3221038ad0164f5913a9bbd1ff4726f546be290b4c85f230c233fce9cf11a"
  end

  name "HomeRun"
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"

  app "HomeRun.app"
end
