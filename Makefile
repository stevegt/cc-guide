all: .grok
	
.grok: README.md .grok-context
	# grok add all updated prereqs
	grok add $?
