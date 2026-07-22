cask "yarvis" do
  version "0.8.0"
  sha256 "d67f9e20faa16ded23a9fbbf138a66480a59ccab5b5533871cd2b1b003b69b7c"

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
