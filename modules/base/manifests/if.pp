class base::if {
	if $::hostname =~ /^docker.*/ {
		notice( "You have arrived at server $0")
	}
}
