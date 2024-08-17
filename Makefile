default: pylint pytest

pylint:
  find . -iname "*.py" -not -path "./tests/*" | xargs -n1 -| {}  pylint --output-format=colorized {}; true

pytest:
  	PYTHONDONTWRITEBYTECODE=1 pytest -v --color=yes
