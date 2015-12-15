source $(brew --prefix nvm)/nvm.sh
source <(npm completion)
alias nodeir='node --trace-hydrogen --trace-phase=Z --trace-deopt --code-comments --hydrogen-track-positions --redirect-code-traces --redirect-code-traces-to=code.asm --print-opt-code'
