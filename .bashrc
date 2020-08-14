alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%d/%m/%Y"\ "%T"'
alias proc='ps aux | grep'
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[0;36m\]\u@\h \[\e[0;33m\]\W\[\e[34m\]\$(parse_git_branch) \@\$ \[\e[00m\]"

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_12_HOME=$(/usr/libexec/java_home -v12.0.1)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java12='export JAVA_HOME=$JAVA_12_HOME'

#default java12
export JAVA_HOME=$JAVA_12_HOME

export PATH="~/Development/tools/FlutterSDK/flutter/bin:$PATH"
# added by travis gem
[ -f /Users/zuzanna.weichel/.travis/travis.sh ] && source /Users/zuzanna.weichel/.travis/travis.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/zuzanna.weichel/Development/KataBotProject/kata-review-bot/node_modules/tabtab/.completions/serverless.bash ] && . /Users/zuzanna.weichel/Development/KataBotProject/kata-review-bot/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/zuzanna.weichel/Development/KataBotProject/kata-review-bot/node_modules/tabtab/.completions/sls.bash ] && . /Users/zuzanna.weichel/Development/KataBotProject/kata-review-bot/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash