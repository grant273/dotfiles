export ANDROID_SDK_ROOT="/Users/grant/Library/Android/sdk"
alias cdw='cd /Users/grant/code/TraxReactWeb'
alias cdn='cd /Users/grant/code/TraxReactNative'
alias cdu='cd /Users/grant/code/TraxUtils'
alias cds='cd /Users/grant/code/TraxAngular'
alias cdnd='cd /Users/grant/code/TraxReactNative/js/data'
alias cdwd='cd /Users/grant/code/TraxReactWeb/js/data'
alias cdt='cd ~/code/TraxReactNative'
#alias cds='cd /Users/grant/WebstormProjects/SkyHubApp'
alias dt='detox test --configuration ios.sim.release --maxWorkers 3 '

alias cpt='cp config/config_test.js js/config.js'
alias cpl='cp config/config_local.js js/config.js'
alias cpp='cp config/config_prod.js js/config.js'
alias cpd='cp config/config_dev.js js/config.js'
alias cppe='cp config/config_personal.js js/config.js'

alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gb='git branch --sort=committerdate | tail'
alias gdc='git diff --cached'
alias gpud='git pull upstream dev'
alias trxweb='/Users/grant/code/TraxReactWeb/trx.sh'
alias rc='vim  ~/.zshrc; source ~/.zshrc'
alias ios-nuke='rm -rf ios/Hurdlr.xcworkspace && rm -rf ios/Pods && rm -rf ios/build && rm -rf ~/Library/Developer/Xcode/DerivedData; rm -rf ~/.rncache && rm -rf node_modules && npm install'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function cu {
  grep $1  ~/bin/mt-bug-emails.txt
}


## PROMPT HACKERY
source ~/git-prompt.sh
setopt PROMPT_SUBST ;
PS1='[%n@%m %~$(__git_ps1 " (%s)")]\$ '
PS1='%B[%n@%m %~$(__git_ps1 " (%s)")]($(grep "traxEnvironment " js/config.js 2>&1 | egrep "(LOCAL|TEST|PROD|DEV)" -o)) \$%b '
export PATH=$PATH:/Users/grant/Library/Android/sdk/platform-tools/:/Users/grant/bin

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
export HURDLR_GOOGLE_DRIVE="/Users/grant/keys"
export PATH="/Users/grant/code/TraxAngular:$PATH"

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
