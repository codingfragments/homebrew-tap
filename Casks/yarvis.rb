cask "yarvis" do
  version "0.2.0"
  sha256 "98b4bba0e0de7429f7f94ea4aa8b9fb234e5bf76dc94ad7ba8e77e136efad1f4"

  url "https://github.com/codingfragments/yarvis/releases/download/v#{version}/Yarvis_#{version}_aarch64.dmg"
  name "Yarvis"
  desc "Personal Knowledge Assistant"
  homepage "https://github.com/codingfragments/yarvis"

  depends_on arch: :arm64

  app "Yarvis.app"

  zap trash: [
    "~/.yarvis",
  ]
end
