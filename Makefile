# Makefile

# Colors
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)

# Symfony Console
CONSOLE := bin/console

# Targets
TARGETS := cache-clear

## all: Display this help message
all: help

## cache-clear: Clear the Symfony cache
cache-clear:
	@echo "${GREEN}>> Clearing Symfony cache${RESET}"
	@$(CONSOLE) cache:clear

# Help
help: Makefile
	@echo
	@echo " Choose a command to run in ${YELLOW}${APP_NAME}${RESET}:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ ${GREEN}/' -e 's/$$/ ${RESET}/'
	@echo

.PHONY: all help $(TARGETS)
