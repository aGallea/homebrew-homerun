cask "homerun" do
  version "0.8.2"

  on_arm do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_aarch64.dmg"
    sha256 "39edfac79eb1c53a2b74301e456514004b2b516208a065b910174c0f0def644a"
  end

  on_intel do
    url "https://github.com/aGallea/homerun/releases/download/v#{version}/HomeRun_#{version}_x64.dmg"
    sha256 "b4efde26098053a276b1fd63f930eb18264ca6efef80d727117381d44bd945d5"
  end

  name "HomeRun"
  desc "Manage GitHub Actions self-hosted runners on macOS"
  homepage "https://github.com/aGallea/homerun"

  app "HomeRun.app"
end
