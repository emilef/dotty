# Full example config for PureLine using default powerline symbols
# and custom 256 color

# Colors must be defined in pairs of FG & BG
PL_COLORS[MyOrange]='\[\e[38;5;208m\]'
PL_COLORS[On_MyOrange]='\[\e[48;5;208m\]'

PL_COLORS[MyLime]='\[\e[38;5;119m\]'
PL_COLORS[On_MyLime]='\[\e[48;5;119m\]'

PL_COLORS[MyYellow]='\[\e[38;5;227m\]'
PL_COLORS[On_MyYellow]='\[\e[48;5;227m\]'

PL_COLORS[MyLightGrey]='\[\e[38;5;250m\]'
PL_COLORS[On_MyLightGrey]='\[\e[48;5;250m\]'

PL_COLORS[MyBlue]='\[\e[38;5;69m\]'
PL_COLORS[On_MyBlue]='\[\e[48;5;69m\]'

PL_COLORS[MyRed]='\[\e[38;5;196m\]'
PL_COLORS[On_MyRed]='\[\e[48;5;196m\]'

PL_COLORS[MyDarkGrey]='\[\e[38;5;240m\]'
PL_COLORS[On_MyDarkGrey]='\[\e[48;5;240m\]'

PL_COLORS[MyPurple]='\[\e[38;5;89m\]'
PL_COLORS[On_MyPurple]='\[\e[48;5;89m\]'

PL_COLORS[MyGreen]='\[\e[38;5;83m\]'
PL_COLORS[On_MyGreen]='\[\e[48;5;83m\]'

# All modules are enabled. Uncomment/comment to enable/disable a module
declare -a PL_MODULES=(
    # Module                Background  Foreground
    'time_module            MyDarkGrey  White'
    'battery_module         MyBlue      Black'
    'user_module            MyLime      Black'
    'ssh_module             MyYellow    Black'
    'virtual_env_module     MyBlue      Black'
    'path_module            MyBlue      White'
    'read_only_module       MyRed       White'
    'background_jobs_module MyPurple    White'
    'git_module             MyGreen     Black'
    'return_code_module     MyRed       White'
    'newline_module'
    'prompt_module          MyDarkGrey	White'
)

# Module Options
PL_PATH_TRIM=0             # 0 Full path, 1, Current, 2+ trim level
PL_TIME_SHOW_SECONDS=true
PL_USER_SHOW_HOST=true
PL_USER_USE_IP=false
PL_SSH_SHOW_HOST=true
PL_SSH_USE_IP=true
PL_GIT_DIRTY_FG=Black
PL_GIT_DIRTY_BG=MyOrange
PL_GIT_AHEAD=true
PL_GIT_MODIFIED=true
PL_GIT_STAGED=true
PL_GIT_CONFLICTS=true
PL_GIT_UNTRACKED=true
PL_GIT_STASH=true
PL_PROMPT_ROOT_BG=Red
PL_PROMPT_ROOT_FG=White

# redefine symbols using powerline glyphs
PL_SYMBOLS[hard_separator]=""
PL_SYMBOLS[soft_separator]=""

PL_SYMBOLS[git_branch]=""
PL_SYMBOLS[git_untracked]="↔"
PL_SYMBOLS[git_stash]="§"
PL_SYMBOLS[git_ahead]="↑"
PL_SYMBOLS[git_behind]="↓"
PL_SYMBOLS[git_modified]="✚ "
PL_SYMBOLS[git_staged]="✔ "
PL_SYMBOLS[git_conflicts]="✘ "

PL_SYMBOLS[ssh]=" "
PL_SYMBOLS[read_only]=""
PL_SYMBOLS[return_code]="⚑"
PL_SYMBOLS[background_jobs]="⏎"
PL_SYMBOLS[python]="π"

PL_SYMBOLS[battery_charging]="⚡"
PL_SYMBOLS[battery_discharging]="▮"

