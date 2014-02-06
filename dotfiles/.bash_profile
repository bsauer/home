echo "In .bash_profile"
# Save the field separator
export REGULAR_IFS=$IFS
export NEWLINE_IFS=$'\n'

# Always append history, not overwrite it.
shopt -s histappend
export PROMPT_COMMAND="history -a"
export HISTCONTROL="ignorespace:ignoredups"
export HISTFILESIZE="100000"

# Set timezone
export TZ="America/Denver"

export PATH=".:$PATH"
export PATH="/usr/local/bin:$PATH"

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
fi



# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

#export PERL5LIB="/Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2level"
#export PATH=/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:.:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin
#export PATH=/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:.:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin

# Personal Python virtualenv
#if [ -f /Users/bernie/build/python_env/bin/activate ]; then
#   . /Users/bernie/build/python_env/bin/activate
#fi
