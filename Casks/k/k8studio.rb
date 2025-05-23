cask "k8studio" do
  arch arm: "-arm64"

  version "2.1.0"
  sha256 arm:   "c20060a92770c3ebf22d185a95181637923a3f413b793ed8237b404b9709606f",
         intel: "0d3ed9153c6266f46604b898f386eba05267466f493f62bac796a59b376e7855"

  url "https://github.com/guiqui/k8Studio/releases/download/v#{version}/K8Studio-#{version}#{arch}.dmg",
      verified: "github.com/guiqui/k8Studio/"
  name "K8studio"
  desc "Kubernetes GUI"
  homepage "https://k8studio.io/"

  livecheck do
    url :homepage
    regex(/href=.*?k8studio[._-]v?(\d+(?:\.\d+)+(?:[._-]beta)?)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "K8Studio.app"

  zap trash: [
    "~/Library/Application Support/K8Studio",
    "~/Library/Caches/ide.k8studio.io",
    "~/Library/Caches/ide.k8studio.io.ShipIt",
    "~/Library/Caches/k8studio-updater",
    "~/Library/Logs/K8Studio",
    "~/Library/Preferences/ide.k8studio.io.plist",
    "~/Library/Saved Application State/ide.k8studio.io.savedState",
  ]
end
