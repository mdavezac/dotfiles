filename="$HOME/.secrets/homebrew_github_token"
[[ -e $filename ]] && export HOMEBREW_GITHUB_API_TOKEN=$(cat $filename)
filename="$HOME/.secrets/github_token"
[[ -e $filename ]] && export GITHUB_API_TOKEN=$(cat $filename)
