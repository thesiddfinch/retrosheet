all:
	@echo stuff

.PHONY: autopep8
autopep8:
	@autopep8 --max-line-length 72 -a -i *.py

.PHONY: csv
csv:
	@echo clean out all csv files
	@rm -rf csv/
	@echo generating csv files
	@python event_files_to_csv.py
	@echo clean-up files
	@dos2unix csv/*-team.csv
	@dos2unix csv/*-roster.csv
