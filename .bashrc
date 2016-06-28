# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export EDITOR=vim

fae()
{
    local pattern=""
    for part in "${@}"; do
        if [[ -n "${pattern}" ]]; then
            pattern+=" -o"
        fi
        pattern+=" -name ${part}"
    done
    local files="$(find . -path ./build -prune -o -path ./.hg -prune -a -type f -o \( ${pattern} \) 2>/dev/null)"
    $EDITOR -p ${files}
}

source /etc/Bartlet.sh

bartlet_enable Prompt
bartlet_enable Branch
bartlet_on
