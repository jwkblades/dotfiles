# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export EDITOR=vim

export FAE_EDIT="${EDITOR} -p"
fae()
{
    local pattern=""
    for part in "${@}"; do
        if [[ -n "${pattern}" ]]; then
            pattern+="|"
        fi
        pattern+="${part}"
    done
    local files="$(ag -s -g ${pattern} 2>/dev/null)"
    ${FAE_EDIT} ${files}
}

source /etc/Bartlet.sh

bartlet_enable Prompt
bartlet_enable Branch
bartlet_on
