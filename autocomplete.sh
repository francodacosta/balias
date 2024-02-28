

_PAlias_auto_complete() {
    PAlias_BASE=$(dirname $BASH_SOURCE )
    PAlias="$PAlias_BASE/palias --find"
    ARGS="${2}"
    COMPREPLY+=(`$PAlias $ARGS`)
}

complete -d -o filenames -F _PAlias_auto_complete ls cd cp mv rm