cask "controlpanel-prerelease" do
  version "3.5.0-rc01"

  on_arm do
    sha256 "e7e6e704dc71c624c92ada5e0a111231f2dfe96539eddae999d6c94d731a5d82"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "5ca9b80223081bf336260219fc3dbb766f3acfd1f3f905a9005e97e4bd1970b9"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel Prerelease"
  desc "Prerelease control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
end