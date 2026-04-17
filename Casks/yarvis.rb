cask "yarvis" do
  version "0.2.2"
  sha256 "f805196cbe7d1ae8d144097fbe15026ae06ad1dba131fc14f5a21d3159c5b15e"

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
