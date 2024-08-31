# A simple template with ci

- edit ci.sh
- update *dockerhub_user*,*project*,*version*
- your project should run *pipx install pre-commit*
- edit ./git/hooks/pre-commit

  ```sh
  #!/bin/bash
  ./ci.sh
  git add .
  ```
  