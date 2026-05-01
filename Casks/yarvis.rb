cask "yarvis" do
  version "0.5.1"
  sha256 "e1c336a490404700dfe916edc493db6117abf8ab27c899c1d3dea1977fd959e8"

  url "https://github.com/codingfragments/yarvis/releases/download/v#{version}/Yarvis_#{version}_aarch64.dmg"
  name "Yarvis"
  desc "Personal Knowledge Assistant"
  homepage "https://github.com/codingfragments/yarvis"

  depends_on arch: :arm64

  app "Yarvis.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Yarvis.app"],
                   sudo: false
  end

  zap trash: [
    "~/.yarvis",
  ]
end
