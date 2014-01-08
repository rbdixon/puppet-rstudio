class rstudio ($version="0.98.490") {
	$tap = "homebrew/science"
	$r = "${tap}/r"

	package { "RStudio-${version}":
		provider	=> "appdmg",
		source		=> "http://download1.rstudio.org/RStudio-${version}.dmg",
		require		=> Package["${r}"],
	}
	
	homebrew::tap { "${tap}": }
	
	package { "${r}":
		require => Homebrew::Tap["${tap}"],
	}
}
