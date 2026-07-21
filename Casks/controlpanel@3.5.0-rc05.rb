cask "controlpanel@3.5.0-rc05" do
  version "3.5.0-rc05"

  on_arm do
    sha256 "fff93a89602fc6e98d6463b0e33c7b845a8872a593daf40a1bc8858f82fd8742"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "d6ec174783f17586785159d2354f51d693e262d99014fe7e7a1cc8b0421f15e4"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.5.0-rc05"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end