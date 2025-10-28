function __ignore_cd_dotdot --on-event fish_postexec
    history delete --exact --case-sensitive "cd .."
    history delete --exact --case-sensitive "cd -"
    history delete --exact --case-sensitive cd
    history delete --exact --case-sensitive cdit
end
