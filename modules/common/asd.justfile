#Just
[private]
where:
    @echo The executable is at: {{just_executable()}}

[private]
alias-bash REF:
    #!/usr/bin/env bash
    echo "alias {{REF}}='just --unstable '" >> ~/.bashrc
    source ~/.bashrc
    echo "Persistent alias '{{REF}}' set."

[private]
alias-zsh REF:
    #!/usr/bin/env zsh
    echo "alias {{REF}}='just --unstable '" >> ~/.zshrc
    source ~/.zshrc
    echo "Persistent alias '{{REF}}' set."
