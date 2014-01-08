require "spec_helper"

describe "rstudio" do
	version = "0.98.490"

  it do
    should contain_class("rstudio")
    should contain_package("RStudio-${version}").with_provider("appdmg")
    should contain_package("RStudio-${version}").with_source("http://download1.rstudio.org/RStudio-${version}.dmg")
  end
end
