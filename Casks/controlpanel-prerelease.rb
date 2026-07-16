cask "controlpanel-prerelease" do
  version "3.5.0-rc02"

  on_arm do
    sha256 "606dcffbfffd255a8625855afa0d79ef346427712e9c49cd091deb4ecc8860f7"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "6739242a35c8d977d3d78e92a061bdf8431aa712cc5d20d60c3552b82ed3779f"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel Prerelease"
  desc "Prerelease control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/owlcms.app"]
  end
end