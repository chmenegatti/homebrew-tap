cask "zeno" do
  version "1.5.0"
  sha256 "211c021a373fd3fedab35c52af048e231281de8d36282b4814afdca42d88e321"

  url "https://github.com/chmenegatti/zeno/releases/download/v#{version}/Zeno-#{version}-macos-universal.dmg"
  name "Zeno"
  desc "Tab-less, local-first API client (REST, GraphQL, gRPC, WebSocket)"
  homepage "https://www.cesarmenegatti.com/zeno/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zeno.app"

  zap trash: "~/.local/share/zeno"

  caveats <<~EOS
    Zeno is not notarized by Apple yet. On first launch, open
    System Settings › Privacy & Security and click "Open Anyway".
  EOS
end
