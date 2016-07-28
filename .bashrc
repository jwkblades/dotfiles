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

wd()
{
    local cmd="${1}"
    case "${cmd}" in
        add)
            ag --nonumbers -v "^${2}\t" ~/.wdcache > ~/.wdcache.new
            mv ~/.wdcache.new ~/.wdcache
            echo -e "${2}\t$(pwd)" >> ~/.wdcache
            ;;
        rem|remove) 
            ag --nonumbers -v "^${2}\t" ~/.wdcache > ~/.wdcache.new
            mv ~/.wdcache.new ~/.wdcache 
            ;;
        list) 
            cat ~/.wdcache
            ;;
        *)
            local d="$(ag --nonumbers "^${cmd}\t" ~/.wdcache | cut -f2 2>/dev/null)"
            if [[ -n "${d}" ]]; then 
                cd ${d} 
            fi 
            ;; 
    esac
}

source /etc/Bartlet.sh

bartlet_enable Prompt
bartlet_enable Branch
bartlet_on
