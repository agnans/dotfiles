alias dot=$DOT

function open_sublime() {
	# parenteses para abrir em um sub shell
	# &> redireciona o output de stdout e stderr pra /dev/null
	(/opt/sublime/sublime_text $1 &> /dev/null &)
}

alias sub=open_sublime
