cask "controlpanel@3.8.0-rc01" do
  version "3.8.0-rc01"

  on_arm do
    sha256 "84b407d65be5ccff9cc473efa48c77f7c425f45956ad2bd137f989e0086f4c4b"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "44b1a23c747a08db90e4e932de4efa217131e78f75f6edd395acc7cca123617f"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.8.0-rc01"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms", target: "controlpanel"
end