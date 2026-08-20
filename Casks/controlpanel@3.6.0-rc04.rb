cask "controlpanel@3.6.0-rc04" do
  version "3.6.0-rc04"

  on_arm do
    sha256 "9c60a5294fdee5fd2c088338c1639b6f001a24a145640bab65c72e24fdcf492f"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "b2bd25e735a447a1235280237f6f06fcff0b2af651a4ae964d2e798f47c65212"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.6.0-rc04"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms", target: "controlpanel"
end